import 'package:flutter/material.dart';
import 'package:sonarr/sonarr.dart';

extension SeriesResourceUtils on SeriesResource {
  String? get remotePosterUrlLink {
    return images
        ?.where((img) => img.coverType == MediaCoverTypes.poster)
        .firstOrNull
        ?.remoteUrl;
  }

  Color get statusColor {
    final total = statistics?.episodeCount ?? 0;
    final have = statistics?.episodeFileCount ?? 0;
    final isMonitored = monitored ?? false;

    final hasMissing = total > 0 && have < total;

    if (hasMissing) {
      return isMonitored ? const Color(0xFF911F1F) : const Color(0xFFCC8400);
    }

    switch (status) {
      case SeriesStatusType.continuing:
        return const Color(0xFF1E5998);
      case SeriesStatusType.ended:
        return const Color(0xFF11753B);
      case SeriesStatusType.upcoming:
      case SeriesStatusType.deleted:
      default:
        return const Color(0xFF52525B);
    }
  }
}
