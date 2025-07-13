import 'package:client/features/radarr/application/provider/add_movie_provider/add_movie_provider.dart';
import 'package:client/features/radarr/application/provider/add_movie_provider/quality_profiles_provider.dart';
import 'package:client/features/radarr/application/provider/add_movie_provider/root_folders_provider.dart';
import 'package:client/features/radarr/application/provider/add_movie_provider/language_profiles_provider.dart';
import 'package:client/features/radarr/application/provider/all_movies_provider/all_movies_provider.dart';
import 'package:client/features/radarr/presentation/add_movie/widgets/add_movie_button.dart';
import 'package:client/features/radarr/presentation/add_movie/widgets/movie_configuration_card.dart';
import 'package:client/features/radarr/presentation/add_movie/widgets/movie_header_card.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class AddMovieDetailsScreen extends ConsumerStatefulWidget {
  final RadarrMovie movieLookup;

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
  bool _hasSetDefaults = false;

  void _setDefaultValues(BuildContext context, WidgetRef ref) {
    if (_hasSetDefaults) return;

    final qualityProfilesAsync = ref.watch(qualityProfilesProvider);
    final rootFoldersAsync = ref.watch(rootFoldersProvider);
    final languageProfilesAsync = ref.watch(languageProfilesProvider);

    // Set default quality profile
    qualityProfilesAsync.whenData((profiles) {
      if (_selectedQualityProfile == null && profiles.isNotEmpty) {
        setState(() {
          _selectedQualityProfile = profiles.first;
        });
      }
    });

    // Set default root folder
    rootFoldersAsync.whenData((folders) {
      if (_selectedRootFolder == null && folders.isNotEmpty) {
        setState(() {
          _selectedRootFolder = folders.first;
        });
      }
    });

    // Set default language profile
    languageProfilesAsync.whenData((languages) {
      if (_selectedLanguageProfile == null && languages.isNotEmpty) {
        setState(() {
          _selectedLanguageProfile = languages.first;
        });
      }
    });

    // Mark defaults as set if all are loaded
    if (qualityProfilesAsync.hasValue &&
        rootFoldersAsync.hasValue &&
        languageProfilesAsync.hasValue) {
      _hasSetDefaults = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Set default values when providers have data
    _setDefaultValues(context, ref);
    // Use the already typed movie
    final typedMovie = widget.movieLookup;

    return Scaffold(
      appBar: AppBar(
        title: Text('Add ${typedMovie.title ?? 'Movie'}'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: _buildResponsiveLayout(context, typedMovie),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25), // 0.1 opacity
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: AddMovieButton(
            onPressed: _canSubmit() ? _submitMovie : null,
            isLoading: _isSubmitting,
          ),
        ),
      ),
    );
  }

  Widget _buildResponsiveLayout(BuildContext context, RadarrMovie movie) {
    final screenWidth = MediaQuery.of(context).size.width;

    List<Widget> children = [
      MovieHeaderCard(movie: movie),
      MovieConfigurationCard(
        monitored: _monitored,
        selectedQualityProfile: _selectedQualityProfile,
        selectedRootFolder: _selectedRootFolder,
        selectedLanguageProfile: _selectedLanguageProfile,
        minimumAvailability: _minimumAvailability,
        onMonitoredChanged: (value) => setState(() => _monitored = value),
        onQualityProfileChanged: (value) =>
            setState(() => _selectedQualityProfile = value),
        onRootFolderChanged: (value) =>
            setState(() => _selectedRootFolder = value),
        onLanguageProfileChanged: (value) =>
            setState(() => _selectedLanguageProfile = value),
        onMinimumAvailabilityChanged: (value) =>
            setState(() => _minimumAvailability = value),
      ),
    ];

    if (screenWidth > 900) {
      // Large screen layout - Two columns
      return SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Entry.offset(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutCubic,
                xOffset: -20,
                child: Entry.opacity(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutCubic,
                  child: children[0],
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 3,
              child: Entry.offset(
                duration: const Duration(milliseconds: 450),
                delay: const Duration(milliseconds: 50),
                curve: Curves.easeOutCubic,
                xOffset: 20,
                child: Entry.opacity(
                  duration: const Duration(milliseconds: 450),
                  delay: const Duration(milliseconds: 50),
                  curve: Curves.easeOutCubic,
                  child: children[1],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      // Single column layout
      return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: children.asMap().entries.map((entry) {
            final index = entry.key;
            final child = entry.value;

            return Entry.offset(
              duration: const Duration(milliseconds: 400),
              delay: Duration(milliseconds: index * 100),
              curve: Curves.easeOutCubic,
              yOffset: 30,
              child: Entry.opacity(
                duration: const Duration(milliseconds: 400),
                delay: Duration(milliseconds: index * 100),
                curve: Curves.easeOutCubic,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: index < children.length - 1 ? 20 : 0,
                  ),
                  child: child,
                ),
              ),
            );
          }).toList(),
        ),
      );
    }
  }

  bool _canSubmit() {
    return _selectedQualityProfile != null &&
        _selectedRootFolder != null &&
        !_isSubmitting;
  }

  Future<void> _submitMovie() async {
    if (!_canSubmit()) return;

    setState(() {
      _isSubmitting = true;
    });

    try {
      // Use the movie from the lookup results directly
      final movieToAdd = widget.movieLookup;

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

      await ref
          .read(addMovieProvider)
          .addMovie(
            movie: movieToAdd,
            rootFolder: _selectedRootFolder!,
            monitored: _monitored,
            minimumAvailability: availability,
            qualityProfile: _selectedQualityProfile!,
          );

      // Invalidate the all movies provider to refresh the movies list
      ref.invalidate(allMoviesProvider);

      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to add movie: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
      }
    }
  }
}
