import 'package:client/features/calendar/models/calendar_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void showEpisodesDialog(
  BuildContext context,
  DateTime day,
  List<CalendarItem> episodes,
) {
  showDialog(
    context: context,
    builder: (context) => EpisodeDialog(day: day, episodes: episodes),
  );
}

class EpisodeDialog extends StatelessWidget {
  final DateTime day;
  final List<CalendarItem> episodes;

  const EpisodeDialog({super.key, required this.day, required this.episodes});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        constraints: const BoxConstraints(maxHeight: 400, maxWidth: 400),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _DialogHeader(day: day),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: episodes.length,
                itemBuilder: (context, index) {
                  final episode = episodes[index];
                  return _EpisodeTile(episode: episode);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DialogHeader extends StatelessWidget {
  final DateTime day;

  const _DialogHeader({required this.day});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          const Icon(Icons.calendar_today, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            DateFormat.yMMMd().format(day),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

class _EpisodeTile extends StatelessWidget {
  final CalendarItem episode;

  const _EpisodeTile({required this.episode});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: theme.primaryColor.withAlpha(26),
        child: Icon(Icons.tv, color: theme.primaryColor),
      ),
      title: Text(
        episode.title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(episode.subtitle),
          if (episode.seasonNumber != null && episode.episodeNumber != null)
            Text(
              'S${episode.seasonNumber}E${episode.episodeNumber}',
              style: TextStyle(
                color: theme.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          if (episode.date != null)
            Text(
              DateFormat.jm().format(episode.date!),
              style: const TextStyle(fontSize: 12),
            ),
        ],
      ),
      isThreeLine: true,
    );
  }
}
