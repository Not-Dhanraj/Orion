import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deleteQueueItemProvider = FutureProvider.family<dynamic, int>((
  ref,
  id,
) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.queue.delete(id: id);
});
