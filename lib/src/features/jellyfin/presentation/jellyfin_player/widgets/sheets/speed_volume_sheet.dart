import 'package:client/src/features/jellyfin/presentation/jellyfin_player/widgets/sheets/sheet_components.dart';
import 'package:flutter/material.dart';

class SpeedVolumeSheet extends StatefulWidget {
  final double speed;
  final double volume;
  final ValueChanged<double> onSpeedChanged;
  final ValueChanged<double> onVolumeChanged;

  const SpeedVolumeSheet({
    super.key,
    required this.speed,
    required this.volume,
    required this.onSpeedChanged,
    required this.onVolumeChanged,
  });

  @override
  State<SpeedVolumeSheet> createState() => _SpeedVolumeSheetState();
}

class _SpeedVolumeSheetState extends State<SpeedVolumeSheet> {
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
    return BaseSheet(
      title: 'Playback Settings',
      label: 'CONTROLS',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionLabel(label: 'VOLUME'),
          const SizedBox(height: 8),
          _VolumeRow(
            volume: _volume,
            onChanged: (v) {
              setState(() => _volume = v);
              widget.onVolumeChanged(v);
            },
          ),
          const SizedBox(height: 24),
          const SectionLabel(label: 'PLAYBACK SPEED'),
          const SizedBox(height: 10),
          _SpeedSelector(
            current: _speed,
            speeds: _speeds,
            onChanged: (v) {
              setState(() => _speed = v);
              widget.onSpeedChanged(v);
            },
          ),
        ],
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
