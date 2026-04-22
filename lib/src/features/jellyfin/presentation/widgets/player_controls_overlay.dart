import 'dart:async';

import 'package:client/src/features/jellyfin/presentation/models/video_fit.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/player_control_button.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/player_gradient_overlay.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/controls/bottom_bar.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/controls/center_controls.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/controls/top_bar.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/sheets/audio_subtitle_sheet.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/sheets/fit_sheet.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/sheets/quality_sheet.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/sheets/speed_volume_sheet.dart';
import 'package:client/src/features/jellyfin/domain/video_quality.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class PlayerControlsOverlay extends StatefulWidget {
  final Player player;
  final VideoController controller;
  final String title;
  final Duration expectedDuration;
  final VideoQuality currentQuality;
  final List<VideoQuality> qualities;
  final List<AudioTrack> availableAudioTracks;
  final List<SubtitleTrack> availableSubtitleTracks;
  final AudioTrack? currentAudioTrack;
  final SubtitleTrack? currentSubtitleTrack;
  final VideoFit currentFit;
  final ValueChanged<VideoFit> onFitChanged;
  final ValueChanged<VideoQuality> onQualityChanged;
  final ValueChanged<AudioTrack> onAudioChanged;
  final ValueChanged<SubtitleTrack> onSubtitleChanged;
  final VoidCallback onBack;

  const PlayerControlsOverlay({
    super.key,
    required this.player,
    required this.controller,
    required this.title,
    required this.expectedDuration,
    required this.currentQuality,
    required this.qualities,
    this.availableAudioTracks = const [],
    this.availableSubtitleTracks = const [],
    this.currentAudioTrack,
    this.currentSubtitleTrack,
    this.currentFit = kDefaultVideoFit,
    required this.onFitChanged,
    required this.onQualityChanged,
    required this.onAudioChanged,
    required this.onSubtitleChanged,
    required this.onBack,
  });

  @override
  State<PlayerControlsOverlay> createState() => _PlayerControlsOverlayState();
}

class _PlayerControlsOverlayState extends State<PlayerControlsOverlay>
    with SingleTickerProviderStateMixin {
  bool _controlsVisible = true;
  Timer? _hideTimer;
  late final AnimationController _fadeCtrl;
  late final Animation<double> _fadeAnim;

  bool _playing = false;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;
  double _speed = 1.0;
  bool _dragging = false;
  double _volume = 100.0;
  bool _buffering = false;

  List<SubtitleTrack> _subtitleTracks = [];
  List<AudioTrack> _audioTracks = [];
  SubtitleTrack _currentSubtitle = SubtitleTrack.no();
  AudioTrack _currentAudio = AudioTrack.auto();

  final List<StreamSubscription<dynamic>> _subs = [];

  @override
  void initState() {
    super.initState();
    _fadeCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      value: 1.0,
    );
    _fadeAnim = CurvedAnimation(parent: _fadeCtrl, curve: Curves.easeInOut);

    _playing = widget.player.state.playing;
    _buffering = widget.player.state.buffering;
    _position = widget.player.state.position;
    _duration = widget.player.state.duration;

    _subtitleTracks = widget.player.state.tracks.subtitle;
    _audioTracks = widget.player.state.tracks.audio;
    _currentSubtitle = widget.player.state.track.subtitle;
    _currentAudio = widget.player.state.track.audio;

    _subs.addAll([
      widget.player.stream.playing.listen((v) => setState(() => _playing = v)),
      widget.player.stream.buffering.listen(
        (v) => setState(() => _buffering = v),
      ),
      widget.player.stream.position.listen(
        (v) => setState(() {
          if (!_dragging) _position = v;
        }),
      ),
      widget.player.stream.duration.listen(
        (v) => setState(() => _duration = v),
      ),
      widget.player.stream.tracks.listen((tracks) {
        setState(() {
          _subtitleTracks = tracks.subtitle;
          _audioTracks = tracks.audio;
        });
      }),
      widget.player.stream.track.listen((track) {
        setState(() {
          _currentSubtitle = track.subtitle;
          _currentAudio = track.audio;
        });
      }),
    ]);

    _scheduleHide();
  }

  @override
  void dispose() {
    for (final s in _subs) {
      s.cancel();
    }
    _fadeCtrl.dispose();
    _hideTimer?.cancel();
    super.dispose();
  }

  void _scheduleHide() {
    _hideTimer?.cancel();
    _hideTimer = Timer(const Duration(seconds: 4), () {
      if (!_dragging && mounted) _setControlsVisible(false);
    });
  }

  void _toggleControls() {
    _setControlsVisible(!_controlsVisible);
    if (_controlsVisible) _scheduleHide();
  }

  void _setControlsVisible(bool visible) {
    setState(() => _controlsVisible = visible);
    if (visible) {
      _fadeCtrl.forward();
    } else {
      _fadeCtrl.reverse();
    }
  }

  Duration get _displayDuration => widget.expectedDuration > Duration.zero
      ? widget.expectedDuration
      : _duration;

  void _skip(int seconds) {
    final target = _position + Duration(seconds: seconds);
    final clamped = target < Duration.zero
        ? Duration.zero
        : (target > _displayDuration ? _displayDuration : target);
    widget.player.seek(clamped);
    _scheduleHide();
  }

  void _showControls() {
    _setControlsVisible(true);
    _scheduleHide();
  }

  void _openQuality() {
    _hideTimer?.cancel();
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => QualitySheet(
        currentQuality: widget.currentQuality,
        qualities: widget.qualities,
        onQualityChanged: widget.onQualityChanged,
      ),
    ).whenComplete(_scheduleHide);
  }

  void _openSpeedVolume() {
    _hideTimer?.cancel();
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => SpeedVolumeSheet(
        speed: _speed,
        volume: _volume,
        onSpeedChanged: (v) => setState(() {
          _speed = v;
          widget.player.setRate(v);
        }),
        onVolumeChanged: (v) => setState(() {
          _volume = v;
          widget.player.setVolume(v);
        }),
      ),
    ).whenComplete(_scheduleHide);
  }

  void _openFit() {
    _hideTimer?.cancel();
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => FitSheet(
        currentFit: widget.currentFit,
        onFitChanged: widget.onFitChanged,
      ),
    ).whenComplete(_scheduleHide);
  }

  void _openAudioSubtitles() {
    _hideTimer?.cancel();
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => AudioSubtitleSheet(
        subtitleTracks: widget.availableSubtitleTracks.isNotEmpty
            ? widget.availableSubtitleTracks
            : _subtitleTracks,
        audioTracks: widget.availableAudioTracks.isNotEmpty
            ? widget.availableAudioTracks
            : _audioTracks,
        currentSubtitle: widget.availableSubtitleTracks.isNotEmpty
            ? (widget.currentSubtitleTrack ?? _currentSubtitle)
            : _currentSubtitle,
        currentAudio: widget.availableAudioTracks.isNotEmpty
            ? (widget.currentAudioTrack ?? _currentAudio)
            : _currentAudio,
        onSubtitleChanged: (t) {
          setState(() => _currentSubtitle = t);
          widget.onSubtitleChanged(t);
        },
        onAudioChanged: (t) {
          setState(() => _currentAudio = t);
          widget.onAudioChanged(t);
        },
      ),
    ).whenComplete(_scheduleHide);
  }

  String _fmt(Duration d) {
    final h = d.inHours;
    final m = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return h > 0 ? '$h:$m:$s' : '$m:$s';
  }

  double get _progress => _displayDuration.inMilliseconds == 0
      ? 0
      : (_position.inMilliseconds / _displayDuration.inMilliseconds).clamp(
          0.0,
          1.0,
        );

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (_buffering)
          const Center(
            child: CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.white,
            ),
          ),

        GestureDetector(
          onTap: _toggleControls,
          behavior: HitTestBehavior.opaque,
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onDoubleTap: () {
                    _skip(-10);
                    _showControls();
                  },
                  child: const SizedBox.expand(),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onDoubleTap: () {
                    _skip(10);
                    _showControls();
                  },
                  child: const SizedBox.expand(),
                ),
              ),
            ],
          ),
        ),

        IgnorePointer(
          ignoring: !_controlsVisible,
          child: FadeTransition(
            opacity: _fadeAnim,
            child: PlayerGradientOverlay(
              top: PlayerTopBar(
                title: widget.title,
                speed: _speed,
                currentFit: widget.currentFit,
                onBack: widget.onBack,
                onAudioSubtitlesTap: _openAudioSubtitles,
                onQualityTap: _openQuality,
                onSpeedVolumeTap: _openSpeedVolume,
                onFitTap: _openFit,
              ),
              center: PlayerCenterControls(
                playing: _playing,
                onPlayPause: () {
                  widget.player.playOrPause();
                  _scheduleHide();
                },
                onSkipBack: () => _skip(-10),
                onSkipForward: () => _skip(10),
              ),
              bottom: PlayerBottomBar(
                position: _position,
                duration: _displayDuration,
                progress: _progress,
                currentSubtitle: _currentSubtitle,
                buffering: _buffering,
                primaryColor: Theme.of(context).colorScheme.primary,
                onDragStart: (_) {
                  setState(() => _dragging = true);
                  _hideTimer?.cancel();
                },
                onDragUpdate: (v) => setState(() {
                  _position = Duration(
                    milliseconds: (v * _displayDuration.inMilliseconds).round(),
                  );
                }),
                onDragEnd: (v) {
                  setState(() => _dragging = false);
                  widget.player.seek(
                    Duration(
                      milliseconds: (v * _displayDuration.inMilliseconds)
                          .round(),
                    ),
                  );
                  _scheduleHide();
                },
                fmt: _fmt,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
