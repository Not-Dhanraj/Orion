import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

// System Status Provider
final radarrSystemStatusProvider =
    FutureProvider.autoDispose<RadarrSystemStatus>((ref) async {
      final radarrApi = ref.watch(radarrProvider);
      return await radarrApi.system.status();
    });

// Health Check Provider
final radarrHealthCheckProvider =
    FutureProvider.autoDispose<List<RadarrHealthCheck>>((ref) async {
      final radarrApi = ref.watch(radarrProvider);
      return await radarrApi.healthCheck.get();
    });

// Disk Space Provider
final radarrDiskSpaceProvider =
    FutureProvider.autoDispose<List<RadarrDiskSpace>>((ref) async {
      final radarrApi = ref.watch(radarrProvider);
      return await radarrApi.fileSystem.getDiskSpace();
    });
