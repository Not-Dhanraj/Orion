import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final queueProvider = FutureProvider<dynamic>((ref) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.queue.get();
});
