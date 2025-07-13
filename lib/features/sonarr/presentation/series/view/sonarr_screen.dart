import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/sonarr/application/provider/all_series_provider/all_series_provider.dart';
import 'package:client/features/sonarr/presentation/add_series/view/add_series_screen.dart';
import 'package:client/features/sonarr/presentation/series/widgets/series_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SonarrScreen extends ConsumerWidget {
  const SonarrScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesValue = ref.watch(allSeriesProvider);

    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'TV Shows',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 2,
      ),

      body: Stack(
        children: [
          Container(
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
            child: SafeArea(
              child: seriesValue.when(
                data: (series) => SeriesGridView(series: series),
                loading: () => Center(
                  child: CircularProgressIndicator(color: colorScheme.primary),
                ),
                error: (err, stack) => ErrorView(
                  error: err,
                  customMessage: 'Failed to load TV shows',
                  onRetry: () => ref.refresh(allSeriesProvider),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: kBottomNavigationBarHeight * 1.4,
            right: 12,
            child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const AddSeriesScreen(),
                    transitionsBuilder: (_, animation, __, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 0.25),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        ),
                      );
                    },
                    transitionDuration: const Duration(milliseconds: 250),
                  ),
                );
              },
              backgroundColor: colorScheme.primary,
              foregroundColor: colorScheme.onPrimary,
              elevation: 6,
              icon: const Icon(Icons.add),
              label: const Text("Add Series"),
            ),
          ),
        ],
      ),
    );
  }
}
