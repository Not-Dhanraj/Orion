import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieDetailsControllerNotifier extends StateNotifier<MovieResource> {
  MovieDetailsControllerNotifier() : super(MovieResource());

  void initialize(MovieResource movie) {
    state = movie;
  }
}

final movieDetailsControllerProvider =
    StateNotifierProvider<MovieDetailsControllerNotifier, MovieResource>(
      (ref) => MovieDetailsControllerNotifier(),
    );
