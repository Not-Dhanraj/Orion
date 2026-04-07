import 'package:client/src/features/releases/application/release_service.dart';
import 'package:client/src/features/releases/domain/release_item.dart';
import 'package:client/src/features/releases/domain/release_target.dart';
import 'package:client/src/features/releases/domain/release_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReleaseController
    extends AutoDisposeFamilyAsyncNotifier<ReleaseState, ReleaseTarget> {
  @override
  Future<ReleaseState> build(ReleaseTarget arg) async {
    final releases = await ref.read(releaseServiceProvider).getReleases(arg);
    return ReleaseState(releases: releases);
  }

  void toggleShowRejected(bool value) {
    final current = state.value;
    if (current != null) {
      state = AsyncData(current.copyWith(showRejected: value));
    }
  }

  Future<void> downloadRelease({
    required int indexerId,
    required String guid,
    required void Function() onSuccess,
    required void Function(Object error) onError,
  }) async {
    final current = state.value;
    if (current == null) return;

    state = AsyncData(current.copyWith(downloadingGuid: () => guid));
    try {
      await ref
          .read(releaseServiceProvider)
          .downloadRelease(target: arg, indexerId: indexerId, guid: guid);
      onSuccess();
    } catch (e) {
      // DON'T REMOVE
      // Surface the error via the callback — do NOT use state = AsyncError here
      // because the finally block runs immediately after and would overwrite it
      // with AsyncData before the UI ever sees the error state.
      onError(e);
    } finally {
      // Always restore data state and clear the downloading indicator
      final afterState = state.value ?? current;
      state = AsyncData(afterState.copyWith(downloadingGuid: () => null));
    }
  }

  List<ReleaseItem> filteredReleases() {
    final current = state.value;
    if (current == null) return [];

    var filtered = current.releases.where((r) {
      if (!current.showRejected && r.rejections.isNotEmpty) return false;
      return true;
    }).toList();

    filtered.sort((a, b) {
      final aRej = a.rejections.isNotEmpty;
      final bRej = b.rejections.isNotEmpty;
      if (aRej != bRej) return aRej ? 1 : -1;
      if (a.seeders != b.seeders) return b.seeders.compareTo(a.seeders);
      return b.size.compareTo(a.size);
    });

    return filtered;
  }
}

final releaseControllerProvider =
    AutoDisposeAsyncNotifierProviderFamily<
      ReleaseController,
      ReleaseState,
      ReleaseTarget
    >(ReleaseController.new);
