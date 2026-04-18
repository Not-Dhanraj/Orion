import 'package:client/src/features/jellyfin/presentation/jellyfin_player_page.dart';
import 'package:client/src/shared/widgets/sheets/sheet_header.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';

class PlayerAudioSubtitleSheet extends StatelessWidget {
  final List<SubtitleTrack> subtitleTracks;
  final List<AudioTrack> audioTracks;
  final SubtitleTrack currentSubtitle;
  final AudioTrack currentAudio;
  final ValueChanged<SubtitleTrack> onSubtitleChanged;
  final ValueChanged<AudioTrack> onAudioChanged;

  const PlayerAudioSubtitleSheet({
    super.key,
    required this.subtitleTracks,
    required this.audioTracks,
    required this.currentSubtitle,
    required this.currentAudio,
    required this.onSubtitleChanged,
    required this.onAudioChanged,
  });

  @override
  Widget build(BuildContext context) {
    return _BaseSheet(
      title: 'Subtitles & Audio',
      label: 'LANGUAGE',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (audioTracks.isNotEmpty) ...[
            _SectionLabel(label: 'AUDIO TRACK'),
            const SizedBox(height: 8),
            ...audioTracks.map(
              (t) => _TrackTile(
                label: _audioLabel(t),
                active: currentAudio.id == t.id,
                onTap: () {
                  onAudioChanged(t);
                  Navigator.of(context).pop();
                },
              ),
            ),
            const SizedBox(height: 24),
          ],
          _SectionLabel(label: 'SUBTITLES'),
          const SizedBox(height: 8),
          _TrackTile(
            label: 'Off',
            active: currentSubtitle.id == 'no',
            onTap: () {
              onSubtitleChanged(SubtitleTrack.no());
              Navigator.of(context).pop();
            },
          ),
          if (subtitleTracks.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              child: Text(
                'No embedded subtitles detected.',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            )
          else
            ...subtitleTracks.map(
              (t) => _TrackTile(
                label: _subtitleLabel(t),
                active: currentSubtitle.id == t.id,
                onTap: () {
                  onSubtitleChanged(t);
                  Navigator.of(context).pop();
                },
              ),
            ),
        ],
      ),
    );
  }

  String _audioLabel(AudioTrack t) {
    if (t.title?.isNotEmpty == true) return t.title!;
    if (t.language?.isNotEmpty == true) return t.language!.toUpperCase();
    return 'Track ${t.id}';
  }

  String _subtitleLabel(SubtitleTrack t) {
    if (t.title?.isNotEmpty == true) return t.title!;
    if (t.language?.isNotEmpty == true) return t.language!.toUpperCase();
    return 'Track ${t.id}';
  }
}

class PlayerQualitySheet extends StatelessWidget {
  final VideoQuality currentQuality;
  final List<VideoQuality> qualities;
  final ValueChanged<VideoQuality> onQualityChanged;

  const PlayerQualitySheet({
    super.key,
    required this.currentQuality,
    required this.qualities,
    required this.onQualityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return _BaseSheet(
      title: 'Video Quality',
      label: 'RESOLUTION',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...qualities.map(
            (q) => _TrackTile(
              label: q.label,
              active: currentQuality == q,
              onTap: () {
                onQualityChanged(q);
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PlayerSpeedVolumeSheet extends StatefulWidget {
  final double speed;
  final double volume;
  final ValueChanged<double> onSpeedChanged;
  final ValueChanged<double> onVolumeChanged;

  const PlayerSpeedVolumeSheet({
    super.key,
    required this.speed,
    required this.volume,
    required this.onSpeedChanged,
    required this.onVolumeChanged,
  });

  @override
  State<PlayerSpeedVolumeSheet> createState() => _PlayerSpeedVolumeSheetState();
}

class _PlayerSpeedVolumeSheetState extends State<PlayerSpeedVolumeSheet> {
  static const List<double> _speeds = [0.5, 0.75, 1.0, 1.25, 1.5, 2.0];
  late double _speed;
  late double _volume;

  @override
  void initState() {
    super.initState();
    _speed = widget.speed;
    _volume = widget.volume;
  }

  @override
  Widget build(BuildContext context) {
    return _BaseSheet(
      title: 'Playback Settings',
      label: 'CONTROLS',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SectionLabel(label: 'VOLUME'),
          const SizedBox(height: 8),
          _VolumeRow(
            volume: _volume,
            onChanged: (v) {
              setState(() => _volume = v);
              widget.onVolumeChanged(v);
            },
          ),
          const SizedBox(height: 24),
          _SectionLabel(label: 'PLAYBACK SPEED'),
          const SizedBox(height: 10),
          _SpeedSelector(
            current: _speed,
            speeds: _speeds,
            onChanged: (v) {
              setState(() => _speed = v);
              widget.onSpeedChanged(v);
              Future.delayed(const Duration(milliseconds: 150), () {
                if (!context.mounted) return;
                Navigator.of(context).pop();
              });
            },
          ),
        ],
      ),
    );
  }
}

class _BaseSheet extends StatelessWidget {
  final String title;
  final String label;
  final Widget child;

  const _BaseSheet({
    required this.title,
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.7,
      ),
      child: Container(
        color: cs.surface,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: cs.surfaceContainerLow,
                  border: Border(
                    bottom: BorderSide(
                      color: cs.outlineVariant.withValues(alpha: 0.4),
                    ),
                  ),
                ),
                child: SheetHeader(
                  onClose: () => Navigator.of(context).pop(),
                  title: title,
                  label: label,
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String label;

  const _SectionLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return Text(
      label,
      style: tt.labelSmall?.copyWith(
        color: cs.primary,
        letterSpacing: 2.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _VolumeRow extends StatelessWidget {
  final double volume;
  final ValueChanged<double> onChanged;

  const _VolumeRow({required this.volume, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Row(
      children: [
        Icon(Icons.volume_mute_rounded, color: cs.onSurfaceVariant, size: 18),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 3,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
              activeTrackColor: cs.primary,
              inactiveTrackColor: cs.outlineVariant,
              thumbColor: cs.primary,
              overlayColor: cs.primary.withValues(alpha: 0.12),
            ),
            child: Slider(
              value: volume,
              min: 0,
              max: 100,
              onChanged: onChanged,
            ),
          ),
        ),
        Icon(Icons.volume_up_rounded, color: cs.onSurfaceVariant, size: 18),
        const SizedBox(width: 8),
        SizedBox(
          width: 38,
          child: Text(
            '${volume.round()}%',
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: cs.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class _SpeedSelector extends StatelessWidget {
  final double current;
  final List<double> speeds;
  final ValueChanged<double> onChanged;

  const _SpeedSelector({
    required this.current,
    required this.speeds,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: speeds.map((s) {
        final active = current == s;
        return GestureDetector(
          onTap: () => onChanged(s),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: active
                  ? cs.primary.withValues(alpha: 0.12)
                  : Colors.transparent,
              border: Border.all(
                color: active ? cs.primary : cs.outlineVariant,
              ),
            ),
            child: Text(
              s == 1.0 ? 'Normal' : '${s}x',
              style: tt.labelMedium?.copyWith(
                color: active ? cs.primary : cs.onSurfaceVariant,
                fontWeight: active ? FontWeight.w700 : FontWeight.normal,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _TrackTile extends StatelessWidget {
  final String label;
  final bool active;
  final VoidCallback onTap;

  const _TrackTile({
    required this.label,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
        child: Row(
          children: [
            Icon(
              active ? Icons.radio_button_checked : Icons.radio_button_off,
              color: active ? cs.primary : cs.onSurfaceVariant,
              size: 18,
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: tt.bodyMedium?.copyWith(
                color: active ? cs.onSurface : cs.onSurfaceVariant,
                fontWeight: active ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
