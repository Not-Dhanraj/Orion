import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieCredits extends StatelessWidget {
  final List<RadarrMovieCredits> credits;

  const MovieCredits({super.key, required this.credits});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // Extract cast and crew from the credits
    final castCredits = credits
        .where((credit) => credit.type == 'cast')
        .toList();
    final crewCredits = credits
        .where((credit) => credit.type == 'crew')
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Credits', style: textTheme.titleLarge),
        const SizedBox(height: 8),

        // Cast section
        if (castCredits.isNotEmpty) ...[
          Text('Cast', style: textTheme.titleMedium),
          const SizedBox(height: 8),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: castCredits.length > 10
                  ? 10
                  : castCredits.length, // Show only the first 10 cast members
              itemBuilder: (context, index) {
                final person = castCredits[index];
                final imageUrl = person.images?.isNotEmpty == true
                    ? person.images![0].url
                    : null;

                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Column(
                    children: [
                      // Person image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: imageUrl != null
                              ? CachedNetworkImage(
                                  memCacheWidth: 300,
                                  imageUrl: imageUrl,
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) {
                                    return Container(
                                      color: colorScheme.surfaceVariant,
                                      child: Center(
                                        child: Icon(
                                          Icons.person,
                                          size: 30,
                                          color: colorScheme.onSurfaceVariant,
                                        ),
                                      ),
                                    );
                                  },
                                )
                              : Container(
                                  color: colorScheme.surfaceVariant,
                                  child: Center(
                                    child: Icon(
                                      Icons.person,
                                      size: 30,
                                      color: colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Person name
                      SizedBox(
                        width: 80,
                        child: Text(
                          person.personName ?? 'Unknown',
                          style: textTheme.bodySmall,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      // Character name
                      SizedBox(
                        width: 80,
                        child: Text(
                          person.character ?? '',
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurface.withOpacity(0.7),
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],

        if (castCredits.isNotEmpty && crewCredits.isNotEmpty)
          const SizedBox(height: 16),

        // Crew section
        if (crewCredits.isNotEmpty) ...[
          Text('Crew', style: textTheme.titleMedium),
          const SizedBox(height: 8),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: crewCredits.length > 10
                  ? 10
                  : crewCredits.length, // Show only the first 10 crew members
              itemBuilder: (context, index) {
                final person = crewCredits[index];
                final imageUrl = person.images?.isNotEmpty == true
                    ? person.images![0].url
                    : null;

                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Column(
                    children: [
                      // Person image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: imageUrl != null
                              ? CachedNetworkImage(
                                  memCacheWidth: 300,
                                  imageUrl: imageUrl,
                                  fit: BoxFit.cover,
                                  errorWidget: (context, url, error) {
                                    return Container(
                                      color: colorScheme.surfaceVariant,
                                      child: Center(
                                        child: Icon(
                                          Icons.person,
                                          size: 30,
                                          color: colorScheme.onSurfaceVariant,
                                        ),
                                      ),
                                    );
                                  },
                                )
                              : Container(
                                  color: colorScheme.surfaceVariant,
                                  child: Center(
                                    child: Icon(
                                      Icons.person,
                                      size: 30,
                                      color: colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Person name
                      SizedBox(
                        width: 80,
                        child: Text(
                          person.personName ?? 'Unknown',
                          style: textTheme.bodySmall,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      // Job
                      SizedBox(
                        width: 80,
                        child: Text(
                          person.department ?? '',
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurface.withOpacity(0.7),
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],

        if (castCredits.isEmpty && crewCredits.isEmpty)
          Text('No credits information available', style: textTheme.bodyMedium),
      ],
    );
  }
}
