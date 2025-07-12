import 'package:flutter/material.dart';

class MovieCredits extends StatelessWidget {
  final dynamic credits;

  const MovieCredits({super.key, required this.credits});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // Extract cast and crew from the credits
    final List<dynamic> cast = credits['cast'] ?? [];
    final List<dynamic> crew = credits['crew'] ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Credits', style: textTheme.titleLarge),
        const SizedBox(height: 8),

        // Cast section
        if (cast.isNotEmpty) ...[
          Text('Cast', style: textTheme.titleMedium),
          const SizedBox(height: 8),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cast.length > 10
                  ? 10
                  : cast.length, // Show only the first 10 cast members
              itemBuilder: (context, index) {
                final person = cast[index];
                final imageUrl = person['images']?[0]?['url'];

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
                              ? Image.network(
                                  imageUrl,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Container(
                                        color: colorScheme.surfaceVariant,
                                        child: Center(
                                          child: Icon(
                                            Icons.person,
                                            size: 30,
                                            color: colorScheme.onSurfaceVariant,
                                          ),
                                        ),
                                      ),
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
                          person['name'] ?? 'Unknown',
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
                          person['character'] ?? '',
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

        if (cast.isNotEmpty && crew.isNotEmpty) const SizedBox(height: 16),

        // Crew section
        if (crew.isNotEmpty) ...[
          Text('Crew', style: textTheme.titleMedium),
          const SizedBox(height: 8),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: crew.length > 10
                  ? 10
                  : crew.length, // Show only the first 10 crew members
              itemBuilder: (context, index) {
                final person = crew[index];
                final imageUrl = person['images']?[0]?['url'];

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
                              ? Image.network(
                                  imageUrl,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Container(
                                        color: colorScheme.surfaceVariant,
                                        child: Center(
                                          child: Icon(
                                            Icons.person,
                                            size: 30,
                                            color: colorScheme.onSurfaceVariant,
                                          ),
                                        ),
                                      ),
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
                          person['name'] ?? 'Unknown',
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
                          person['department'] ?? '',
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

        if (cast.isEmpty && crew.isEmpty)
          Text('No credits information available', style: textTheme.bodyMedium),
      ],
    );
  }
}
