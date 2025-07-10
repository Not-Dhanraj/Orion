import 'package:client/core/api/api_client.dart';
import 'package:client/features/sonarr/model/sonarr_series_details.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:imdb_scraper/imdb_scraper.dart';

final seriesDetailProvider = FutureProvider.family<SonarrSeriesDetails, int>((
  ref,
  seriesId,
) async {
  final sonarr = ref.watch(sonarrProvider);
  final series = await sonarr.series.getSeries(seriesId: seriesId);

  final imdb = Imdb();
  final imdbDetails = await imdb.getDetails(series.imdbId ?? '');

  return SonarrSeriesDetails(series: series, imdbDetails: imdbDetails ?? {});
});
