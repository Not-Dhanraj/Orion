import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/features/calendar/domain/calendar_episode_entry.dart';
import 'package:client/src/features/calendar/domain/episode_status.dart';
import 'package:flutter/material.dart';

class CalendarEpisodeCard extends StatelessWidget {
  final CalendarEpisodeEntry episode;
  const CalendarEpisodeCard({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final hasFile = episode.status == EpisodeStatus.hasFile;

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: hasFile ? 0.75 : 1.0,
      child: Container(
        decoration: BoxDecoration(color: cs.surfaceContainerLow),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              child: Container(width: 2, color: cs.primary),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 20, 20, 20),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return constraints.maxWidth < 520
                      ? _VerticalLayout(episode: episode, cs: cs, tt: tt)
                      : _HorizontalLayout(episode: episode, cs: cs, tt: tt);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HorizontalLayout extends StatelessWidget {
  final CalendarEpisodeEntry episode;
  final ColorScheme cs;
  final TextTheme tt;
  const _HorizontalLayout({
    required this.episode,
    required this.cs,
    required this.tt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _PosterThumbnail(posterUrl: episode.posterUrl, status: episode.status),
        const SizedBox(width: 24),
        Expanded(
          child: _EpisodeInfo(episode: episode, cs: cs, tt: tt),
        ),
      ],
    );
  }
}

class _VerticalLayout extends StatelessWidget {
  final CalendarEpisodeEntry episode;
  final ColorScheme cs;
  final TextTheme tt;
  const _VerticalLayout({
    required this.episode,
    required this.cs,
    required this.tt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 128,
          child: _PosterThumbnail(
            posterUrl: episode.posterUrl,
            status: episode.status,
          ),
        ),
        const SizedBox(height: 16),
        _EpisodeInfo(episode: episode, cs: cs, tt: tt),
      ],
    );
  }
}

class _PosterThumbnail extends StatelessWidget {
  final String? posterUrl;
  final EpisodeStatus status;
  const _PosterThumbnail({this.posterUrl, required this.status});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final hasFile = status == EpisodeStatus.hasFile;

    return Container(
      width: 192,
      height: 128,
      color: cs.surfaceContainerHighest,
      child: posterUrl != null
          ? ColorFiltered(
              colorFilter: ColorFilter.matrix([
                0.2126,
                0.7152,
                0.0722,
                0,
                0,
                0.2126,
                0.7152,
                0.0722,
                0,
                0,
                0.2126,
                0.7152,
                0.0722,
                0,
                0,
                0,
                0,
                0,
                hasFile ? 0.5 : 0.65,
                0,
              ]),
              child: CachedNetworkImage(
                imageUrl: posterUrl!,
                fit: BoxFit.cover,
                memCacheWidth: 192,
                errorWidget: (_, _, _) => _PlaceholderPoster(cs: cs),
              ),
            )
          : _PlaceholderPoster(cs: cs),
    );
  }
}

class _PlaceholderPoster extends StatelessWidget {
  final ColorScheme cs;
  const _PlaceholderPoster({required this.cs});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cs.surfaceContainerHighest,
      child: Center(
        child: Icon(Icons.movie_outlined, color: cs.outlineVariant, size: 32),
      ),
    );
  }
}

class _EpisodeInfo extends StatelessWidget {
  final CalendarEpisodeEntry episode;
  final ColorScheme cs;
  final TextTheme tt;
  const _EpisodeInfo({
    required this.episode,
    required this.cs,
    required this.tt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    episode.title,
                    style: tt.titleLarge!.copyWith(
                      letterSpacing: -0.5,
                      color: cs.onSurface,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  color: cs.primary.withValues(alpha: 0.12),
                  child: Text(
                    episode.seasonEpisode,
                    style: tt.labelSmall!.copyWith(
                      color: cs.primary,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              episode.timeInfo,
              style: tt.labelMedium!.copyWith(color: cs.onSurfaceVariant),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _StatusChip(status: episode.status),
      ],
    );
  }
}

class _StatusChip extends StatelessWidget {
  final EpisodeStatus status;
  const _StatusChip({required this.status});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    final (icon, label, isPrimary) = switch (status) {
      EpisodeStatus.hasFile => (
        Icons.check_circle_outline,
        'DOWNLOADED',
        false,
      ),
      EpisodeStatus.available => (
        Icons.check_circle_outline,
        'AVAILABLE',
        true,
      ),
      EpisodeStatus.upcoming => (Icons.schedule_outlined, 'UPCOMING', false),
    };

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: isPrimary ? cs.primary : Colors.transparent,
        border: isPrimary
            ? null
            : Border.all(color: cs.outlineVariant.withValues(alpha: 0.4)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 14,
            color: isPrimary ? cs.onPrimary : cs.onSurfaceVariant,
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: tt.labelSmall!.copyWith(
              color: isPrimary ? cs.onPrimary : cs.onSurfaceVariant,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
