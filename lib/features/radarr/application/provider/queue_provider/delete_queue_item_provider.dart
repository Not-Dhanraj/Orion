import 'package:client/core/api/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteQueueItem {
  final int id;
  final bool blacklist;

  DeleteQueueItem({required this.id, this.blacklist = false});
}

final deleteQueueItemProvider = FutureProvider.family<void, DeleteQueueItem>((
  ref,
  deleteQueueItem,
) async {
  final radarrApi = ref.watch(radarrProvider);
  return await radarrApi.queue.delete(
    id: deleteQueueItem.id,
    blacklist: deleteQueueItem.blacklist,
    removeFromClient: true,
  );
});
