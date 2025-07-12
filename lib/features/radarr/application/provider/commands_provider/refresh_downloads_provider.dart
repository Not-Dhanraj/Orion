import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final refreshDownloadsProvider = FutureProvider<void>((ref) async {
  final radarrApi = ref.watch(radarrProvider);
  await radarrApi.command.refreshMonitoredDownloads();
});
