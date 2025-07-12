import 'package:client/features/radarr/application/provider/add_movie_provider/add_movie_provider.dart';
import 'package:client/features/radarr/application/provider/add_movie_provider/quality_profiles_provider.dart';
import 'package:client/features/radarr/application/provider/add_movie_provider/root_folders_provider.dart';
import 'package:client/features/radarr/application/provider/add_movie_provider/language_profiles_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class AddMovieDetailsScreen extends ConsumerStatefulWidget {
  final dynamic movieLookup;

  const AddMovieDetailsScreen({super.key, required this.movieLookup});

  @override
  ConsumerState<AddMovieDetailsScreen> createState() =>
      _AddMovieDetailsScreenState();
}

class _AddMovieDetailsScreenState extends ConsumerState<AddMovieDetailsScreen> {
  bool _monitored = true;
  RadarrQualityProfile? _selectedQualityProfile;
  RadarrRootFolder? _selectedRootFolder;
  RadarrLanguage? _selectedLanguageProfile;
  String _minimumAvailability = 'announced'; // Default value
  bool _isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // Convert the dynamic movieLookup to a RadarrMovie for type safety
    final typedMovie = RadarrMovie.fromJson(widget.movieLookup);

    final qualityProfilesAsync = ref.watch(qualityProfilesProvider);
    final rootFoldersAsync = ref.watch(rootFoldersProvider);
    final languageProfilesAsync = ref.watch(languageProfilesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Add ${typedMovie.title ?? 'Movie'}'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Movie info card
              Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Poster
                      _getPosterFromTypedMovie(typedMovie),
                      const SizedBox(width: 16),

                      // Movie info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              typedMovie.title ?? 'Unknown',
                              style: textTheme.titleMedium,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              typedMovie.year?.toString() ?? 'Unknown year',
                              style: textTheme.bodyMedium,
                            ),
                            if (typedMovie.overview != null) ...[
                              const SizedBox(height: 8),
                              Text(
                                typedMovie.overview!,
                                style: textTheme.bodySmall,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Monitored toggle
              SwitchListTile(
                title: const Text('Monitored'),
                subtitle: const Text('Monitor this movie for new releases'),
                value: _monitored,
                onChanged: (value) {
                  setState(() {
                    _monitored = value;
                  });
                },
              ),

              const SizedBox(height: 16),

              // Quality Profile dropdown
              Text('Quality Profile', style: textTheme.titleSmall),
              const SizedBox(height: 8),
              qualityProfilesAsync.when(
                data: (profiles) {
                  if (_selectedQualityProfile == null && profiles.isNotEmpty) {
                    _selectedQualityProfile = profiles.first;
                  }

                  return DropdownButtonFormField<RadarrQualityProfile>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    value: _selectedQualityProfile,
                    items: profiles.map((profile) {
                      return DropdownMenuItem(
                        value: profile,
                        child: Text(profile.name ?? 'Unknown'),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedQualityProfile = value;
                      });
                    },
                  );
                },
                loading: () => const LinearProgressIndicator(),
                error: (_, __) => const Text('Failed to load quality profiles'),
              ),

              const SizedBox(height: 16),

              // Root Folder dropdown
              Text('Root Folder', style: textTheme.titleSmall),
              const SizedBox(height: 8),
              rootFoldersAsync.when(
                data: (folders) {
                  if (_selectedRootFolder == null && folders.isNotEmpty) {
                    _selectedRootFolder = folders.first;
                  }

                  return DropdownButtonFormField<RadarrRootFolder>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    value: _selectedRootFolder,
                    items: folders.map((folder) {
                      return DropdownMenuItem(
                        value: folder,
                        child: Text(folder.path ?? 'Unknown'),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedRootFolder = value;
                      });
                    },
                  );
                },
                loading: () => const LinearProgressIndicator(),
                error: (_, __) => const Text('Failed to load root folders'),
              ),

              const SizedBox(height: 16),

              // Language Profile dropdown (if available)
              languageProfilesAsync.when(
                data: (profiles) {
                  if (profiles.isNotEmpty) {
                    if (_selectedLanguageProfile == null) {
                      _selectedLanguageProfile = profiles.first;
                    }

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Language Profile', style: textTheme.titleSmall),
                        const SizedBox(height: 8),
                        DropdownButtonFormField<RadarrLanguage>(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          value: _selectedLanguageProfile,
                          items: profiles.map((profile) {
                            return DropdownMenuItem(
                              value: profile,
                              child: Text(profile.name ?? 'Unknown'),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedLanguageProfile = value;
                            });
                          },
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                },
                loading: () => const SizedBox(),
                error: (_, __) => const SizedBox(),
              ),

              // Minimum Availability dropdown
              Text('Minimum Availability', style: textTheme.titleSmall),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                value: _minimumAvailability,
                items: const [
                  DropdownMenuItem(
                    value: 'announced',
                    child: Text('Announced'),
                  ),
                  DropdownMenuItem(
                    value: 'inCinemas',
                    child: Text('In Cinemas'),
                  ),
                  DropdownMenuItem(
                    value: 'released',
                    child: Text('Physical/Web Release'),
                  ),
                ],
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _minimumAvailability = value;
                    });
                  }
                },
              ),

              const SizedBox(height: 32),

              // Add button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isSubmitting
                      ? null
                      : () async {
                          if (_selectedQualityProfile == null ||
                              _selectedRootFolder == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please select required fields'),
                              ),
                            );
                            return;
                          }

                          setState(() {
                            _isSubmitting = true;
                          });

                          try {
                            final addMovieNotifier = ref.read(addMovieProvider);
                            // Convert string availability to RadarrAvailability
                            RadarrAvailability availability;
                            switch (_minimumAvailability) {
                              case 'announced':
                                availability = RadarrAvailability.ANNOUNCED;
                                break;
                              case 'inCinemas':
                                availability = RadarrAvailability.IN_CINEMAS;
                                break;
                              case 'released':
                                availability = RadarrAvailability.RELEASED;
                                break;
                              default:
                                availability = RadarrAvailability.ANNOUNCED;
                            }

                            await addMovieNotifier.addMovie(
                              movie: typedMovie,
                              rootFolder: _selectedRootFolder!,
                              monitored: _monitored,
                              minimumAvailability: availability,
                              qualityProfile: _selectedQualityProfile!,
                            );

                            if (mounted) {
                              Navigator.of(context).pop(true); // Success
                            }
                          } catch (e) {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Failed to add movie: $e'),
                                ),
                              );
                              setState(() {
                                _isSubmitting = false;
                              });
                            }
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.primary,
                    foregroundColor: colorScheme.onPrimary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: _isSubmitting
                      ? const SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(),
                        )
                      : const Text('Add Movie'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getPosterFromTypedMovie(RadarrMovie movie) {
    String? posterUrl;
    try {
      if (movie.images != null && movie.images!.isNotEmpty) {
        for (final image in movie.images!) {
          if (image.coverType == 'poster' && image.remoteUrl != null) {
            posterUrl = image.remoteUrl;
            break;
          }
        }
      }
    } catch (e) {
      // Ignore errors
    }

    return posterUrl != null
        ? SizedBox(
            width: 60,
            height: 90,
            child: Image.network(
              posterUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.movie),
            ),
          )
        : const SizedBox(width: 60, height: 90, child: Icon(Icons.movie));
  }
}
