import 'package:flutter_riverpod/flutter_riverpod.dart';

final seasonCardControllerProvider =
    StateNotifierProvider.autoDispose<SeasonCardController, bool>((ref) {
  return SeasonCardController();
});

class SeasonCardController extends StateNotifier<bool> {
  SeasonCardController() : super(false);

  void toggleExpanded() {
    state = !state;
  }
}
