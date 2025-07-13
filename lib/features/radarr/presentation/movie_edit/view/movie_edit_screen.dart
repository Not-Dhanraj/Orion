import 'package:client/features/radarr/application/provider/movie_management_provider/update_movie_provider.dart';
import 'package:client/features/radarr/application/provider/add_movie_provider/quality_profiles_provider.dart';
import 'package:client/features/radarr/application/provider/all_movies_provider/all_movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';
import 'package:entry/entry.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MovieEditScreen extends ConsumerStatefulWidget {
  final RadarrMovie movie;

  const MovieEditScreen({super.key, required this.movie});

  @override
  ConsumerState<MovieEditScreen> createState() => _MovieEditScreenState();
}

class _MovieEditScreenState extends ConsumerState<MovieEditScreen> {
  late bool _monitored;
  late TextEditingController _pathController;
  late RadarrAvailability _minimumAvailability;
  late int? _selectedQualityProfileId;
  bool _isLoading = false;
  bool _hasChanges = false;

  @override
  void initState() {
    super.initState();
    _monitored = widget.movie.monitored ?? true;
    _pathController = TextEditingController(text: widget.movie.path ?? '');
    _minimumAvailability =
        widget.movie.minimumAvailability ?? RadarrAvailability.ANNOUNCED;
    _selectedQualityProfileId = widget.movie.qualityProfileId;

    // Add listeners to detect changes
    _pathController.addListener(_onFieldChanged);
  }

  void _onFieldChanged() {
    final hasChanges =
        _monitored != (widget.movie.monitored ?? true) ||
        _pathController.text != (widget.movie.path ?? '') ||
        _minimumAvailability !=
            (widget.movie.minimumAvailability ??
                RadarrAvailability.ANNOUNCED) ||
        _selectedQualityProfileId != widget.movie.qualityProfileId;

    if (hasChanges != _hasChanges) {
      setState(() {
        _hasChanges = hasChanges;
      });
    }
  }

  @override
  void dispose() {
    _pathController.dispose();
    super.dispose();
  }

  String? _getImageUrl(RadarrMovie movie, {String coverType = 'poster'}) {
    try {
      final image = movie.images?.firstWhere(
        (image) => image.coverType == coverType,
      );
      return image?.remoteUrl;
    } catch (e) {
      // Ignore if not found
    }
    return null;
  }

  Widget _buildFormFieldLabel(
    BuildContext context,
    String title,
    IconData icon,
  ) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer.withAlpha(100),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 20, color: theme.colorScheme.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMovieHeader() {
    final theme = Theme.of(context);
    final posterUrl = _getImageUrl(widget.movie);
    final fanartUrl = _getImageUrl(widget.movie, coverType: 'fanart');

    return Card(
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: theme.colorScheme.outlineVariant.withAlpha(60),
          width: 1,
        ),
      ),
      surfaceTintColor: theme.colorScheme.surfaceTint.withOpacity(0.08),
      child: Container(
        decoration: fanartUrl != null
            ? BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(fanartUrl),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    theme.colorScheme.surface.withAlpha(217),
                    BlendMode.srcOver,
                  ),
                ),
              )
            : null,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Movie poster
              Container(
                width: 80,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.shadow.withAlpha(100),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: posterUrl != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: CachedNetworkImage(
                          imageUrl: posterUrl,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(
                            color: theme.colorScheme.surfaceContainerHighest,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            color: theme.colorScheme.surfaceContainerHighest,
                            child: Icon(
                              Icons.movie,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Icon(
                          Icons.movie,
                          color: theme.colorScheme.onSurfaceVariant,
                          size: 32,
                        ),
                      ),
              ),
              const SizedBox(width: 16.0),
              // Movie details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.movie.title ?? 'Unknown Movie',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (widget.movie.year != null) ...[
                      const SizedBox(height: 4.0),
                      Text(
                        widget.movie.year.toString(),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                    if (widget.movie.overview?.isNotEmpty == true) ...[
                      const SizedBox(height: 8.0),
                      Text(
                        widget.movie.overview!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PopScope(
      canPop: !_hasChanges,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Discard Changes?'),
            content: const Text(
              'You have unsaved changes that will be lost if you leave this screen.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('STAY'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.error,
                ),
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('DISCARD'),
              ),
            ],
          ),
        ).then((result) {
          if (result ?? false) {
            Navigator.of(context).pop();
          }
        });
      },
      child: Scaffold(
        backgroundColor: theme.colorScheme.surface,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            title: const Text(
              'Edit Movie',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            actions: [
              _isLoading
                  ? Container(
                      padding: const EdgeInsets.all(16),
                      child: const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    )
                  : AnimatedOpacity(
                      opacity: _hasChanges ? 1.0 : 0.6,
                      duration: const Duration(milliseconds: 200),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.save_outlined),
                          label: const Text('SAVE'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _hasChanges
                                ? theme.colorScheme.primary
                                : theme.colorScheme.primary.withAlpha(180),
                            foregroundColor: theme.colorScheme.onPrimary,
                            elevation: 2,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                          ),
                          onPressed: _hasChanges ? _saveChanges : null,
                        ),
                      ),
                    ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: theme.colorScheme.surface,
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.shadow.withAlpha(10),
                  blurRadius: 6,
                  spreadRadius: 2,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(
              16.0, // left
              20.0, // top
              16.0, // right
              16.0, // bottom
            ),
            child: _isLoading
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: 16),
                          Text('Saving changes...'),
                        ],
                      ),
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Movie header with poster and info
                      Entry.opacity(
                        duration: const Duration(milliseconds: 350),
                        child: _buildMovieHeader(),
                      ),
                      const SizedBox(height: 28.0),

                      // Monitoring section
                      Entry.opacity(
                        duration: const Duration(milliseconds: 400),
                        delay: const Duration(milliseconds: 50),
                        child: _buildMonitoringSection(),
                      ),
                      const SizedBox(height: 16.0),

                      // Path section
                      Entry.opacity(
                        duration: const Duration(milliseconds: 450),
                        delay: const Duration(milliseconds: 100),
                        child: _buildPathSection(),
                      ),
                      const SizedBox(height: 16.0),

                      // Minimum availability section
                      Entry.opacity(
                        duration: const Duration(milliseconds: 500),
                        delay: const Duration(milliseconds: 150),
                        child: _buildMinimumAvailabilitySection(),
                      ),
                      const SizedBox(height: 16.0),

                      // Quality profile section
                      Entry.opacity(
                        duration: const Duration(milliseconds: 550),
                        delay: const Duration(milliseconds: 200),
                        child: _buildQualityProfileSection(),
                      ),
                      const SizedBox(height: 40.0),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildMonitoringSection() {
    final theme = Theme.of(context);

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
            _buildFormFieldLabel(
              context,
              'Monitoring Options',
              Icons.visibility,
            ),
            const SizedBox(height: 8.0),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withAlpha(100),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  _monitored
                      ? Icons.monitor_heart
                      : Icons.monitor_heart_outlined,
                  size: 20,
                  color: theme.colorScheme.primary,
                ),
              ),
              title: Text(
                'Monitored',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Monitor this movie for automatic downloads',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              trailing: Switch(
                value: _monitored,
                onChanged: (value) {
                  setState(() {
                    _monitored = value;
                  });
                  _onFieldChanged();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPathSection() {
    final theme = Theme.of(context);

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
            _buildFormFieldLabel(context, 'Movie Path', Icons.folder),
            TextField(
              controller: _pathController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                filled: true,
                fillColor: theme.colorScheme.surfaceContainerHighest,
                hintText: 'Movie path on disk',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMinimumAvailabilitySection() {
    final theme = Theme.of(context);

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
            _buildFormFieldLabel(
              context,
              'Minimum Availability',
              Icons.event_available,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: theme.colorScheme.outline.withAlpha(100),
                  width: 1,
                ),
              ),
              child: DropdownButtonFormField<RadarrAvailability>(
                value: _minimumAvailability,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surfaceContainerHighest,
                  hintText: 'Select minimum availability',
                ),
                items: const [
                  DropdownMenuItem(
                    value: RadarrAvailability.ANNOUNCED,
                    child: Row(
                      children: [
                        Icon(Icons.announcement),
                        SizedBox(width: 12.0),
                        Text('Announced'),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: RadarrAvailability.IN_CINEMAS,
                    child: Row(
                      children: [
                        Icon(Icons.local_movies),
                        SizedBox(width: 12.0),
                        Text('In Cinemas'),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: RadarrAvailability.RELEASED,
                    child: Row(
                      children: [
                        Icon(Icons.publish),
                        SizedBox(width: 12.0),
                        Text('Physical/Web Release'),
                      ],
                    ),
                  ),
                ],
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _minimumAvailability = value;
                    });
                    _onFieldChanged();
                  }
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: theme.colorScheme.primary,
                ),
                dropdownColor: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                isExpanded: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQualityProfileSection() {
    final theme = Theme.of(context);
    final qualityProfilesAsync = ref.watch(qualityProfilesProvider);

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
            _buildFormFieldLabel(
              context,
              'Quality Profile',
              Icons.high_quality,
            ),
            qualityProfilesAsync.when(
              data: (profiles) {
                // Ensure the current quality profile is valid
                if (_selectedQualityProfileId == null && profiles.isNotEmpty) {
                  _selectedQualityProfileId = profiles.first.id;
                }

                // Check if current selection is still valid
                final isCurrentValid = profiles.any(
                  (p) => p.id == _selectedQualityProfileId,
                );
                if (!isCurrentValid && profiles.isNotEmpty) {
                  _selectedQualityProfileId = profiles.first.id;
                }

                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: theme.colorScheme.outline.withAlpha(100),
                      width: 1,
                    ),
                  ),
                  child: DropdownButtonFormField<int>(
                    value: _selectedQualityProfileId,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      filled: true,
                      fillColor: theme.colorScheme.surfaceContainerHighest,
                      hintText: 'Select quality profile',
                    ),
                    items: profiles.map((profile) {
                      return DropdownMenuItem(
                        value: profile.id!,
                        child: Row(
                          children: [
                            const Icon(Icons.high_quality),
                            const SizedBox(width: 12.0),
                            Flexible(
                              child: Text(
                                profile.name ?? 'Unknown Profile',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          _selectedQualityProfileId = value;
                        });
                        _onFieldChanged();
                      }
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: theme.colorScheme.primary,
                    ),
                    dropdownColor: theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    isExpanded: true,
                  ),
                );
              },
              loading: () => const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
              error: (error, stackTrace) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Error loading quality profiles',
                      style: TextStyle(color: theme.colorScheme.error),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      error.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        color: theme.colorScheme.error.withAlpha(204),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12.0),
                    OutlinedButton.icon(
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: theme.colorScheme.primary,
                      ),
                      onPressed: () => ref.invalidate(qualityProfilesProvider),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveChanges() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Get original movie data as a Map
      final movieData = widget.movie.toJson();

      // Update specific fields
      movieData['monitored'] = _monitored;
      movieData['path'] = _pathController.text;
      movieData['minimumAvailability'] = _minimumAvailability;

      // Only add qualityProfileId if valid
      if (_selectedQualityProfileId != null) {
        movieData['qualityProfileId'] = _selectedQualityProfileId;
      }

      // Create updated movie object
      final updatedMovie = RadarrMovie.fromJson(movieData);

      // Update movie
      await ref.read(updateMovieProvider(updatedMovie).future);

      // Invalidate the all movies provider to refresh the movies list
      ref.invalidate(allMoviesProvider);

      // Show success message and navigate back
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${widget.movie.title} has been updated'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      // Show error message
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error updating movie: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}
