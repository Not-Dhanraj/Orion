import 'package:flutter_riverpod/flutter_riverpod.dart';

// Create a family provider that takes a season identifier (seriesId + seasonNumber)
final seasonCardControllerProvider = StateNotifierProvider.autoDispose
    .family<SeasonCardController, bool, String>((ref, seasonId) {
      return SeasonCardController();
    });

class SeasonCardController extends StateNotifier<bool> {
  SeasonCardController() : super(false);

  void toggleExpanded() {
    state = !state;
  }
}
