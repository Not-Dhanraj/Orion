import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/features/sonarr/application/provider/quality_profiles_provider/quality_profiles_provider.dart';
import 'package:client/features/sonarr/application/provider/series_management_provider/series_management_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesEditScreen extends ConsumerStatefulWidget {
  final SonarrSeries series;

  const SeriesEditScreen({super.key, required this.series});

  @override
  ConsumerState<SeriesEditScreen> createState() => _SeriesEditScreenState();
}

class _SeriesEditScreenState extends ConsumerState<SeriesEditScreen> {
  late SonarrSeries _editedSeries;
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool _hasChanges = false;

  @override
  void initState() {
    super.initState();
    // Create a copy of the series to edit
    _editedSeries = widget.series;
  }

  bool get _hasUnsavedChanges => _hasChanges;

  Future<bool> _onWillPop() async {
    if (!_hasUnsavedChanges) {
      return true;
    }

    final result = await showDialog<bool>(
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
    );

    return result ?? false;
  }

  Future<void> _saveSeries() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final seriesManagementNotifier = ref.read(
        seriesManagementProvider.notifier,
      );
      await seriesManagementNotifier.updateSeries(_editedSeries);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${_editedSeries.title} has been updated'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
        setState(() {
          _hasChanges = false;
        });
        Navigator.of(context).pop(true); // Return true to indicate success
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error updating series: $e'),
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: theme.colorScheme.surface,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            DetailSliverAppBar(
              title: 'Edit Series',
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
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.save_outlined),
                          label: const Text('SAVE'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _hasChanges
                                ? theme.colorScheme.primaryContainer
                                : theme.colorScheme.primaryContainer
                                      .withOpacity(0.7),
                            foregroundColor:
                                theme.colorScheme.onPrimaryContainer,
                          ),
                          onPressed: _hasChanges ? _saveSeries : null,
                        ),
                      ),
                const SizedBox(width: 16),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.shadow.withAlpha(25),
                      blurRadius: 10,
                      offset: const Offset(0, -5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Form(
                    key: _formKey,
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
                        : SeriesEditForm(
                            series: _editedSeries,
                            onSeriesChanged: (series) {
                              setState(() {
                                _editedSeries = series;
                                _hasChanges = true;
                              });
                            },
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeriesEditForm extends ConsumerWidget {
  final SonarrSeries series;
  final Function(SonarrSeries) onSeriesChanged;

  const SeriesEditForm({
    super.key,
    required this.series,
    required this.onSeriesChanged,
  });

  String? _getImageUrl(SonarrSeries series, {String coverType = 'poster'}) {
    try {
      final image = series.images?.firstWhere(
        (image) => image.coverType == coverType,
      );
      return image?.remoteUrl;
    } catch (e) {
      // Ignore if not found
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final posterUrl = _getImageUrl(series);
    final fanartUrl = _getImageUrl(series, coverType: 'fanart');

    // Watch quality profiles
    final qualityProfilesAsync = ref.watch(qualityProfilesProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Series header with poster
        Card(
          elevation: 3,
          clipBehavior: Clip.antiAlias,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(
              color: theme.colorScheme.outlineVariant.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Container(
            decoration: fanartUrl != null
                ? BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(fanartUrl),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        theme.colorScheme.surface.withOpacity(0.85),
                        BlendMode.srcOver,
                      ),
                    ),
                  )
                : null,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Poster image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: posterUrl != null
                        ? Container(
                            width: 100,
                            height: 150,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: theme.colorScheme.shadow.withOpacity(
                                    0.3,
                                  ),
                                  blurRadius: 8,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: CachedNetworkImage(
                              imageUrl: posterUrl,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Center(
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) => Container(
                                width: 100,
                                height: 150,
                                color: theme.colorScheme.surfaceVariant,
                                child: const Icon(
                                  Icons.image_not_supported,
                                  size: 30,
                                ),
                              ),
                            ),
                          )
                        : Container(
                            width: 100,
                            height: 150,
                            color: theme.colorScheme.surfaceVariant,
                            child: const Icon(Icons.movie, size: 30),
                          ),
                  ),
                  const SizedBox(width: 16.0),
                  // Series info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Edit Series',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          series.title ?? 'Unknown Series',
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8.0),
                        if (series.year != null)
                          Text(
                            'Year: ${series.year}',
                            style: theme.textTheme.bodyMedium,
                          ),
                        if (series.network != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              'Network: ${series.network}',
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 24.0),

        // Monitoring Options Section
        _buildSectionHeader(context, 'Monitoring Options', Icons.visibility),
        const SizedBox(height: 12.0),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(
              color: theme.colorScheme.outline.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              _buildMonitoringSwitch(),
              const Divider(height: 1, indent: 56),
              _buildSeasonFolderSwitch(),
            ],
          ),
        ),
        const SizedBox(height: 24.0),

        // Series Type Section
        _buildSectionHeader(context, 'Series Type', Icons.category),
        const SizedBox(height: 12.0),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(
              color: theme.colorScheme.outline.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildSeriesTypeDropdown(),
          ),
        ),
        const SizedBox(height: 24.0),

        // Quality Profile Section
        _buildSectionHeader(context, 'Quality Profile', Icons.high_quality),
        const SizedBox(height: 12.0),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
            side: BorderSide(
              color: theme.colorScheme.outline.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildQualityProfileDropdown(qualityProfilesAsync),
          ),
        ),
        const SizedBox(height: 32.0),
      ],
    );
  }

  Widget _buildSectionHeader(
    BuildContext context,
    String title,
    IconData icon,
  ) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(icon, size: 18, color: theme.colorScheme.primary),
        const SizedBox(width: 8.0),
        Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildMonitoringSwitch() {
    return ListTile(
      leading: Icon(
        series.monitored ?? false
            ? Icons.monitor_heart
            : Icons.monitor_heart_outlined,
      ),
      title: const Text('Monitored'),
      subtitle: const Text('Monitor this series for new episodes'),
      trailing: Switch(
        value: series.monitored ?? false,
        onChanged: (value) {
          onSeriesChanged(series..monitored = value);
        },
      ),
    );
  }

  Widget _buildSeasonFolderSwitch() {
    return ListTile(
      leading: Icon(
        series.seasonFolder ?? true
            ? Icons.folder_special
            : Icons.folder_outlined,
      ),
      title: const Text('Season Folder'),
      subtitle: const Text('Store episodes in season folders'),
      trailing: Switch(
        value: series.seasonFolder ?? true,
        onChanged: (value) {
          onSeriesChanged(series..seasonFolder = value);
        },
      ),
    );
  }

  Widget _buildSeriesTypeDropdown() {
    return DropdownButtonFormField<SonarrSeriesType>(
      value: series.seriesType ?? SonarrSeriesType.STANDARD,
      decoration: const InputDecoration(
        labelText: 'Series Type',
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      items: SonarrSeriesType.values.map((type) {
        return DropdownMenuItem(
          value: type,
          child: Row(
            children: [
              Icon(_getSeriesTypeIcon(type)),
              const SizedBox(width: 12.0),
              Text(_formatSeriesType(type)),
            ],
          ),
        );
      }).toList(),
      onChanged: (value) {
        if (value != null) {
          onSeriesChanged(series..seriesType = value);
        }
      },
      icon: const Icon(Icons.arrow_drop_down_circle),
      isExpanded: true,
    );
  }

  IconData _getSeriesTypeIcon(SonarrSeriesType type) {
    return switch (type) {
      SonarrSeriesType.ANIME => Icons.animation,
      SonarrSeriesType.DAILY => Icons.calendar_today,
      SonarrSeriesType.STANDARD => Icons.tv,
    };
  }

  String _formatSeriesType(SonarrSeriesType type) {
    if (type == SonarrSeriesType.ANIME) return 'Anime';
    if (type == SonarrSeriesType.DAILY) return 'Daily';
    if (type == SonarrSeriesType.STANDARD) return 'Standard';

    // Handle any future types that might be added
    return type.toString().split('.').last;
  }

  Widget _buildQualityProfileDropdown(
    AsyncValue<List<SonarrQualityProfile>> qualityProfilesAsync,
  ) {
    return qualityProfilesAsync.when(
      data: (profiles) {
        // Ensure the current quality profile ID is in the list, otherwise use the first one
        final currentQualityProfileId = series.qualityProfileId;
        bool containsCurrentProfile = profiles.any(
          (p) => p.id == currentQualityProfileId,
        );
        int selectedValue =
            containsCurrentProfile && currentQualityProfileId != null
            ? currentQualityProfileId
            : (profiles.isNotEmpty ? profiles.first.id! : 1);

        return DropdownButtonFormField<int>(
          value: selectedValue,
          decoration: const InputDecoration(
            labelText: 'Quality Profile',
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
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
              onSeriesChanged(series..qualityProfileId = value);
            }
          },
          icon: const Icon(Icons.arrow_drop_down_circle),
          isExpanded: true,
        );
      },
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      ),
      error: (error, stackTrace) => Builder(
        builder: (context) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Error loading quality profiles',
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
              const SizedBox(height: 4.0),
              Text(
                error.toString(),
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.error.withOpacity(0.8),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12.0),
              OutlinedButton.icon(
                icon: const Icon(Icons.refresh),
                label: const Text('Retry'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () => {
                  // This will cause the build method to be called again, refreshing the provider
                  (context as Element).markNeedsBuild(),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
