import 'package:client/src/features/releases/domain/release_item.dart';

class ReleaseState {
  final bool showRejected;
  final String? downloadingGuid;
  final List<ReleaseItem> releases;

  const ReleaseState({
    this.showRejected = true,
    this.downloadingGuid,
    this.releases = const [],
  });

  ReleaseState copyWith({
    bool? showRejected,
    String? Function()? downloadingGuid,
    List<ReleaseItem>? releases,
  }) {
    return ReleaseState(
      showRejected: showRejected ?? this.showRejected,
      downloadingGuid: downloadingGuid != null
          ? downloadingGuid()
          : this.downloadingGuid,
      releases: releases ?? this.releases,
    );
  }
}
