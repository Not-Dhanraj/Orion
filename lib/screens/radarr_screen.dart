import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr.dart';
import 'package:client/api/api_client.dart';
import 'package:client/providers/credentials_provider.dart';

final moviesProvider = FutureProvider<List<RadarrMovie>>((ref) async {
  final radarr = ref.watch(radarrProvider);
  return await radarr.getMovies();
});

class RadarrScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesValue = ref.watch(moviesProvider);
    final credentials = ref.watch(credentialsProvider);

    String getPosterUrl(RadarrMovie movie) {
      final remotePoster = movie.images?.firstWhere(
        (image) => image.coverType == 'poster',
        orElse: () => Image(),
      );
      if (remotePoster?.url != null) {
        return '${credentials?.radarrUrl}${remotePoster?.url}';
      }
      return '';
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Radarr')),
      body: moviesValue.when(
        data: (movies) {
          return ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final m = movies[index];
              final posterUrl = getPosterUrl(m);
              return Card(
                margin: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: posterUrl.isNotEmpty
                      ? Image.network(
                          posterUrl,
                          headers: {
                            'X-Api-Key': credentials?.radarrApiKey ?? '',
                          },
                          width: 50,
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.movie),
                  title: Text(m.title ?? 'No Title'),
                  //TODO
                  subtitle: Text(m.status?.name ?? 'No Status'),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
