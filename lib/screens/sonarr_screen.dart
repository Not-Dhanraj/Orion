import 'package:client/widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:client/api/api_client.dart';
import 'package:client/providers/credentials_provider.dart';

final seriesProvider = FutureProvider<List<SonarrSeries>>((ref) async {
  final sonarr = ref.watch(sonarrProvider);
  return await sonarr.series.getAllSeries();
});

class SonarrScreen extends ConsumerWidget {
  const SonarrScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesValue = ref.watch(seriesProvider);
    final credentials = ref.watch(credentialsProvider);

    String? getPosterUrl(SonarrSeries series) {
      try {
        final remotePoster = series.images?.firstWhere(
          (image) => image.coverType == 'poster',
        );
        if (remotePoster?.remoteUrl != null) {
          return remotePoster?.remoteUrl;
        }
      } catch (e) {
        // Ignore the error and return null if no poster is found.
      }
      return null;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Sonarr'), centerTitle: true),
      body: seriesValue.when(
        data: (series) {
          return ListView.builder(
            itemCount: series.length,
            itemBuilder: (context, index) {
              final s = series[index];
              final posterUrl = getPosterUrl(s);
              return Card(
                margin: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: posterUrl != null
                      ? Image.network(
                          posterUrl,
                          headers: {
                            'X-Api-Key': credentials?.sonarrApiKey ?? '',
                          },
                          width: 50,
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.tv),
                  title: Text(s.title ?? 'No Title'),
                  subtitle: Text(s.status ?? 'No Status'),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => ErrorView(
          error: err,
          onRetry: () => ref.refresh(seriesProvider),
        ),
      ),
    );
  }
}
