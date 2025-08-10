import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MoviePathOptions extends ConsumerWidget {
  final MovieResource movie;
  final List<RootFolderResource> rootFolders;
  final Function(MovieResource) onMovieChanged;

  const MoviePathOptions({
    super.key,
    required this.movie,
    required this.rootFolders,
    required this.onMovieChanged,
  });

  // This method filters out duplicate paths in root folders
  List<RootFolderResource> _getUniqueRootFolders() {
    final uniquePaths = <String>{};
    final uniqueFolders = <RootFolderResource>[];

    for (final folder in rootFolders) {
      if (folder.path != null && !uniquePaths.contains(folder.path)) {
        uniquePaths.add(folder.path!);
        uniqueFolders.add(folder);
      }
    }

    // Make sure the current path is included in the items
    if (movie.path != null && !uniquePaths.contains(movie.path)) {
      // Create a temporary RootFolderResource with the current path
      final currentPathFolder = RootFolderResource((b) => b..path = movie.path);
      uniqueFolders.add(currentPathFolder);
    }

    return uniqueFolders;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final currentPath = movie.path;

    return Card(
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withAlpha(40),
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: theme.colorScheme.outline.withAlpha(30),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer.withAlpha(100),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.folder,
                      size: 20,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Movie Path',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DropdownButtonFormField<String>(
              value: currentPath,
              borderRadius: BorderRadius.circular(12),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                filled: true,
                fillColor: theme.colorScheme.surface,
                hintText: 'Select root folder',
              ),
              items: _getUniqueRootFolders().map((folder) {
                return DropdownMenuItem<String>(
                  value: folder.path,
                  child: Text(
                    folder.path ?? 'Unknown Path',
                    style: theme.textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                if (newValue != null) {
                  final updatedMovie = movie.rebuild((m) => m..path = newValue);
                  onMovieChanged(updatedMovie);
                }
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
