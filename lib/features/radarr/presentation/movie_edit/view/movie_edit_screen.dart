import 'package:client/features/radarr/application/provider/movie_management_provider/update_movie_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieEditScreen extends ConsumerStatefulWidget {
  final RadarrMovie movie;

  const MovieEditScreen({super.key, required this.movie});

  @override
  ConsumerState<MovieEditScreen> createState() => _MovieEditScreenState();
}

class _MovieEditScreenState extends ConsumerState<MovieEditScreen> {
  late bool _monitored;
  late TextEditingController _pathController;
  late TextEditingController _minimumAvailabilityController;
  late TextEditingController _qualityProfileController;

  @override
  void initState() {
    super.initState();
    _monitored = widget.movie.monitored ?? true;
    _pathController = TextEditingController(text: widget.movie.path ?? '');
    _minimumAvailabilityController = TextEditingController(
      text: widget.movie.minimumAvailability?.toString() ?? '',
    );
    _qualityProfileController = TextEditingController(
      text: widget.movie.qualityProfileId?.toString() ?? '',
    );
  }

  @override
  void dispose() {
    _pathController.dispose();
    _minimumAvailabilityController.dispose();
    _qualityProfileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit ${widget.movie.title}'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 2,
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            tooltip: 'Save changes',
            onPressed: _saveChanges,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.surfaceContainerHighest.withOpacity(0.3),
              colorScheme.surface,
            ],
            stops: const [0.0, 0.3],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Monitored toggle
            SwitchListTile(
              title: const Text('Monitored'),
              subtitle: const Text('Enable automatic downloads'),
              value: _monitored,
              onChanged: (value) {
                setState(() {
                  _monitored = value;
                });
              },
            ),

            const Divider(),

            // Path field
            TextField(
              controller: _pathController,
              decoration: const InputDecoration(
                labelText: 'Path',
                hintText: 'Movie path on disk',
              ),
            ),

            const SizedBox(height: 16),

            // Minimum availability
            TextField(
              controller: _minimumAvailabilityController,
              decoration: const InputDecoration(
                labelText: 'Minimum Availability',
                hintText: 'e.g., announced, inCinemas, released',
              ),
            ),

            const SizedBox(height: 16),

            // Quality profile ID
            TextField(
              controller: _qualityProfileController,
              decoration: const InputDecoration(
                labelText: 'Quality Profile ID',
                hintText: 'Quality profile numeric ID',
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveChanges() async {
    // Show loading indicator
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Saving changes...')));

    try {
      // Get original movie data as a Map
      Map<String, dynamic> movieData = widget.movie.toJson();

      // Update specific fields
      movieData['monitored'] = _monitored;
      movieData['path'] = _pathController.text;
      movieData['minimumAvailability'] = _minimumAvailabilityController.text;

      // Only add qualityProfileId if valid
      final qualityProfileId = int.tryParse(_qualityProfileController.text);
      if (qualityProfileId != null) {
        movieData['qualityProfileId'] = qualityProfileId;
      }

      // Create updated movie object
      final updatedMovie = RadarrMovie.fromJson(movieData);

      // Update movie
      await ref.read(updateMovieProvider(updatedMovie).future);

      // Show success message and navigate back
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Movie updated successfully')),
        );
        Navigator.of(context).pop();
      }
    } catch (e) {
      // Show error message
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error saving changes: $e')));
      }
    }
  }
}
