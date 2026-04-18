import 'package:client/src/features/jellyfin/application/jellyfin_matching_service.dart';
import 'package:client/src/features/jellyfin/domain/jellyfin_match_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final jellyfinMovieMatchProvider =
    FutureProvider.family<JellyfinMatchResult?, int>((ref, tmdbId) async {
      final matchingService = ref.watch(jellyfinMatchingServiceProvider);
      return await matchingService.matchMovie(tmdbId);
    });
