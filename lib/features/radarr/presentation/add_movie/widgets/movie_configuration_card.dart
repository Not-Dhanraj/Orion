import 'package:client/features/radarr/application/provider/add_movie_provider/quality_profiles_provider.dart';
import 'package:client/features/radarr/application/provider/add_movie_provider/root_folders_provider.dart';
import 'package:client/features/radarr/application/provider/add_movie_provider/language_profiles_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieConfigurationCard extends ConsumerWidget {
  const MovieConfigurationCard({
    super.key,
    required this.monitored,
    required this.selectedQualityProfile,
    required this.selectedRootFolder,
    required this.selectedLanguageProfile,
    required this.minimumAvailability,
    required this.onMonitoredChanged,
    required this.onQualityProfileChanged,
    required this.onRootFolderChanged,
    required this.onLanguageProfileChanged,
    required this.onMinimumAvailabilityChanged,
  });

  final bool monitored;
  final RadarrQualityProfile? selectedQualityProfile;
  final RadarrRootFolder? selectedRootFolder;
  final RadarrLanguage? selectedLanguageProfile;
  final String minimumAvailability;
  final ValueChanged<bool> onMonitoredChanged;
  final ValueChanged<RadarrQualityProfile?> onQualityProfileChanged;
  final ValueChanged<RadarrRootFolder?> onRootFolderChanged;
  final ValueChanged<RadarrLanguage?> onLanguageProfileChanged;
  final ValueChanged<String> onMinimumAvailabilityChanged;

  InputDecoration _getDropdownDecoration(ThemeData theme) {
    return InputDecoration(
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      filled: true,
      fillColor: theme.colorScheme.surface,
    );
  }

  Widget _buildFormField({
    required BuildContext context,
    required String title,
    required Widget child,
    String? subtitle,
    IconData? icon,
  }) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (icon != null) ...[
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withAlpha(100),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, size: 20, color: theme.colorScheme.primary),
              ),
              const SizedBox(width: 12),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        child,
        const SizedBox(height: 24),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final qualityProfilesAsync = ref.watch(qualityProfilesProvider);
    final rootFoldersAsync = ref.watch(rootFoldersProvider);
    final languageProfilesAsync = ref.watch(languageProfilesProvider);

    return Card(
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withAlpha(40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: theme.colorScheme.outline.withAlpha(30),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.tune, color: theme.colorScheme.primary, size: 24),
                const SizedBox(width: 12),
                Text(
                  'Movie Configuration',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildFormField(
              context: context,
              title: 'Monitor Movie',
              subtitle: 'Monitor this movie for new releases',
              icon: Icons.visibility,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.outline.withAlpha(100),
                    width: 1,
                  ),
                ),
                child: SwitchListTile(
                  value: monitored,
                  onChanged: onMonitoredChanged,
                  title: Text(
                    monitored ? 'Monitoring' : 'Not Monitoring',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    monitored
                        ? 'Movie will be monitored for downloads'
                        : 'Movie will not be monitored',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            _buildFormField(
              context: context,
              title: 'Quality Profile',
              subtitle: 'Select the quality profile to use for this movie',
              icon: Icons.high_quality,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.outline.withAlpha(100),
                    width: 1,
                  ),
                ),
                child: qualityProfilesAsync.when(
                  data: (profiles) =>
                      DropdownButtonFormField<RadarrQualityProfile>(
                        decoration: _getDropdownDecoration(theme),
                        isExpanded: true,
                        value: selectedQualityProfile,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: theme.colorScheme.primary,
                        ),
                        items: profiles.map((profile) {
                          return DropdownMenuItem<RadarrQualityProfile>(
                            value: profile,
                            child: Text(
                              profile.name ?? 'Unknown',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: onQualityProfileChanged,
                        dropdownColor: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) =>
                      const Text('Failed to load quality profiles'),
                ),
              ),
            ),
            _buildFormField(
              context: context,
              title: 'Root Folder',
              subtitle: 'Select where to store the movie on disk',
              icon: Icons.folder_open,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.outline.withAlpha(100),
                    width: 1,
                  ),
                ),
                child: rootFoldersAsync.when(
                  data: (folders) => DropdownButtonFormField<RadarrRootFolder>(
                    decoration: _getDropdownDecoration(theme),
                    isExpanded: true,
                    value: selectedRootFolder,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: theme.colorScheme.primary,
                    ),
                    items: folders.map((folder) {
                      return DropdownMenuItem<RadarrRootFolder>(
                        value: folder,
                        child: Text(
                          folder.path ?? 'Unknown',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    }).toList(),
                    onChanged: onRootFolderChanged,
                    dropdownColor: theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Failed to load root folders'),
                ),
              ),
            ),
            languageProfilesAsync.when(
              data: (profiles) {
                if (profiles.isEmpty) return const SizedBox.shrink();

                return _buildFormField(
                  context: context,
                  title: 'Language Profile',
                  subtitle: 'Select the language profile for this movie',
                  icon: Icons.language,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: theme.colorScheme.outline.withAlpha(100),
                        width: 1,
                      ),
                    ),
                    child: DropdownButtonFormField<RadarrLanguage>(
                      decoration: _getDropdownDecoration(theme),
                      isExpanded: true,
                      value: selectedLanguageProfile,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: theme.colorScheme.primary,
                      ),
                      items: profiles.map((language) {
                        return DropdownMenuItem<RadarrLanguage>(
                          value: language,
                          child: Text(
                            language.name ?? 'Unknown',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: onLanguageProfileChanged,
                      dropdownColor: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                );
              },
              loading: () => const SizedBox.shrink(),
              error: (_, __) => const SizedBox.shrink(),
            ),
            _buildFormField(
              context: context,
              title: 'Minimum Availability',
              subtitle: 'Set minimum availability for downloads',
              icon: Icons.schedule,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.colorScheme.outline.withAlpha(100),
                    width: 1,
                  ),
                ),
                child: DropdownButtonFormField<String>(
                  decoration: _getDropdownDecoration(theme),
                  isExpanded: true,
                  value: minimumAvailability,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: theme.colorScheme.primary,
                  ),
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'announced',
                      child: Text('Announced'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'inCinemas',
                      child: Text('In Cinemas'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'released',
                      child: Text('Released'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      onMinimumAvailabilityChanged(value);
                    }
                  },
                  dropdownColor: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
