import 'package:flutter/material.dart';
import 'package:radarr_api/radarr_api.dart';

extension MovieResourceX on MovieResource {
  String? get remotePosterUrlLink {
    return images
        ?.where((img) => img.coverType == MediaCoverTypes.poster)
        .firstOrNull
        ?.remoteUrl;
  }

  Color get statusColor {
    final isMonitored = monitored ?? false;
    final isDownloaded = hasFile ?? false;

    final isUnreleased =
        status == MovieStatusType.tba ||
        status == MovieStatusType.announced ||
        status == MovieStatusType.inCinemas;

    if (isDownloaded) {
      return isMonitored ? const Color(0xFF11753B) : const Color(0xFF6B7280);
    }

    if (isUnreleased) {
      return const Color(0xFF1E5998);
    }

    return isMonitored ? const Color(0xFF911F1F) : const Color(0xFFCC8400);
  }
}
