import 'dart:async';

import 'package:client/src/features/jellyfin/presentation/jellyfin_player_page.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/player_control_button.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/player_gradient_overlay.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/player_settings_sheet.dart';
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
  final ValueChanged<VideoQuality> onQualityChanged;
  final VoidCallback onBack;

  const PlayerControlsOverlay({
    super.key,
    required this.player,
    required this.controller,
    required this.title,
    required this.expectedDuration,
    required this.currentQuality,
    required this.qualities,
    required this.onQualityChanged,
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

  void _openAudioSubtitles() {
    _hideTimer?.cancel();
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => PlayerAudioSubtitleSheet(
        subtitleTracks: _subtitleTracks,
        audioTracks: _audioTracks,
        currentSubtitle: _currentSubtitle,
        currentAudio: _currentAudio,
        onSubtitleChanged: (t) => setState(() {
          _currentSubtitle = t;
          widget.player.setSubtitleTrack(t);
        }),
        onAudioChanged: (t) => setState(() {
          _currentAudio = t;
          widget.player.setAudioTrack(t);
        }),
      ),
    ).whenComplete(_scheduleHide);
  }

  void _openQuality() {
    _hideTimer?.cancel();
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => PlayerQualitySheet(
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
      builder: (_) => PlayerSpeedVolumeSheet(
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
        // Buffering indicator
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
                    _skip(30);
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
              top: _TopBar(
                title: widget.title,
                speed: _speed,
                onBack: widget.onBack,
                onAudioSubtitlesTap: _openAudioSubtitles,
                onQualityTap: _openQuality,
                onSpeedVolumeTap: _openSpeedVolume,
              ),
              center: _CenterControls(
                playing: _playing,
                onPlayPause: () {
                  widget.player.playOrPause();
                  _scheduleHide();
                },
                onSkipBack: () => _skip(-10),
                onSkipForward: () => _skip(30),
              ),
              bottom: _BottomBar(
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

class _TopBar extends StatelessWidget {
  final String title;
  final double speed;
  final VoidCallback onBack;
  final VoidCallback onAudioSubtitlesTap;
  final VoidCallback onQualityTap;
  final VoidCallback onSpeedVolumeTap;

  const _TopBar({
    required this.title,
    required this.speed,
    required this.onBack,
    required this.onAudioSubtitlesTap,
    required this.onQualityTap,
    required this.onSpeedVolumeTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 22,
              ),
              onPressed: onBack,
              tooltip: 'Back',
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  shadows: [Shadow(blurRadius: 8, color: Colors.black54)],
                ),
              ),
            ),
            if (speed != 1.0)
              Container(
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '${speed}x',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            IconButton(
              icon: const Icon(
                Icons.subtitles_rounded,
                color: Colors.white,
                size: 22,
              ),
              onPressed: onAudioSubtitlesTap,
              tooltip: 'Subtitles & Audio',
            ),
            IconButton(
              icon: const Icon(
                Icons.high_quality_rounded,
                color: Colors.white,
                size: 22,
              ),
              onPressed: onQualityTap,
              tooltip: 'Quality',
            ),
            IconButton(
              icon: const Icon(
                Icons.tune_rounded,
                color: Colors.white,
                size: 22,
              ),
              onPressed: onSpeedVolumeTap,
              tooltip: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class _CenterControls extends StatelessWidget {
  final bool playing;
  final VoidCallback onPlayPause;
  final VoidCallback onSkipBack;
  final VoidCallback onSkipForward;

  const _CenterControls({
    required this.playing,
    required this.onPlayPause,
    required this.onSkipBack,
    required this.onSkipForward,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PlayerControlButton(
          icon: Icons.replay_10_rounded,
          size: 32,
          onTap: onSkipBack,
        ),
        const SizedBox(width: 16),
        PlayerControlButton(
          icon: playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
          size: 56,
          onTap: onPlayPause,
        ),
        const SizedBox(width: 16),
        PlayerControlButton(
          icon: Icons.forward_30_rounded,
          size: 32,
          onTap: onSkipForward,
        ),
      ],
    );
  }
}

class _BottomBar extends StatelessWidget {
  final Duration position;
  final Duration duration;
  final double progress;
  final SubtitleTrack currentSubtitle;
  final Color primaryColor;
  final bool buffering;
  final ValueChanged<double> onDragStart;
  final ValueChanged<double> onDragUpdate;
  final ValueChanged<double> onDragEnd;
  final String Function(Duration) fmt;

  const _BottomBar({
    required this.position,
    required this.duration,
    required this.progress,
    required this.currentSubtitle,
    required this.primaryColor,
    required this.buffering,
    required this.onDragStart,
    required this.onDragUpdate,
    required this.onDragEnd,
    required this.fmt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 3,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 16),
                activeTrackColor: primaryColor,
                inactiveTrackColor: Colors.white24,
                thumbColor: primaryColor,
                overlayColor: primaryColor.withValues(alpha: 0.18),
              ),
              child: Slider(
                value: progress,
                onChangeStart: onDragStart,
                onChanged: onDragUpdate,
                onChangeEnd: onDragEnd,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  Text(
                    fmt(position),
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const Spacer(),
                  if (currentSubtitle.id != 'no')
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.closed_caption_rounded,
                            color: primaryColor,
                            size: 14,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            currentSubtitle.title ??
                                currentSubtitle.language ??
                                'CC',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  Text(
                    fmt(duration),
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () => toggleFullscreen(context),
                    child: Icon(
                      isFullscreen(context)
                          ? Icons.fullscreen_exit_rounded
                          : Icons.fullscreen_rounded,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
