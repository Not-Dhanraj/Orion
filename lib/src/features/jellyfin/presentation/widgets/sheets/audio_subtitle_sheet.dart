import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/sheets/sheet_components.dart';

class AudioSubtitleSheet extends StatefulWidget {
  final List<SubtitleTrack> subtitleTracks;
  final List<AudioTrack> audioTracks;
  final SubtitleTrack currentSubtitle;
  final AudioTrack currentAudio;
  final ValueChanged<SubtitleTrack> onSubtitleChanged;
  final ValueChanged<AudioTrack> onAudioChanged;

  const AudioSubtitleSheet({
    super.key,
    required this.subtitleTracks,
    required this.audioTracks,
    required this.currentSubtitle,
    required this.currentAudio,
    required this.onSubtitleChanged,
    required this.onAudioChanged,
  });

  @override
  State<AudioSubtitleSheet> createState() => _AudioSubtitleSheetState();
}

class _AudioSubtitleSheetState extends State<AudioSubtitleSheet> {
  late SubtitleTrack _currentSubtitle;
  late AudioTrack _currentAudio;

  @override
  void initState() {
    super.initState();
    _currentSubtitle = widget.currentSubtitle;
    _currentAudio = widget.currentAudio;
  }

  @override
  Widget build(BuildContext context) {
    return BaseSheet(
      title: 'Subtitles & Audio',
      label: 'LANGUAGE',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.audioTracks.isNotEmpty) ...[
            const SectionLabel(label: 'AUDIO TRACK'),
            const SizedBox(height: 8),
            ...widget.audioTracks.map(
              (t) => TrackTile(
                label: _audioLabel(t),
                active: _currentAudio.id == t.id,
                onTap: () {
                  setState(() => _currentAudio = t);
                  widget.onAudioChanged(t);
                },
              ),
            ),
            const SizedBox(height: 24),
          ],
          const SectionLabel(label: 'SUBTITLES'),
          const SizedBox(height: 8),
          TrackTile(
            label: 'Off',
            active: _currentSubtitle.id == 'no',
            onTap: () {
              final track = SubtitleTrack.no();
              setState(() => _currentSubtitle = track);
              widget.onSubtitleChanged(track);
            },
          ),
          if (widget.subtitleTracks.isEmpty)
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
            ...widget.subtitleTracks.map(
              (t) => TrackTile(
                label: _subtitleLabel(t),
                active: _currentSubtitle.id == t.id,
                onTap: () {
                  setState(() => _currentSubtitle = t);
                  widget.onSubtitleChanged(t);
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
