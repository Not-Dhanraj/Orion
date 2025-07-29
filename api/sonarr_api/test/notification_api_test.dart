import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for NotificationApi
void main() {
  final instance = Sonarr().getNotificationApi();

  group(NotificationApi, () {
    //Future apiV3NotificationActionNamePost(String name, { NotificationResource notificationResource }) async
    test('test apiV3NotificationActionNamePost', () async {
      // TODO
    });

    //Future<BuiltList<NotificationResource>> apiV3NotificationGet() async
    test('test apiV3NotificationGet', () async {
      // TODO
    });

    //Future apiV3NotificationIdDelete(int id) async
    test('test apiV3NotificationIdDelete', () async {
      // TODO
    });

    //Future<NotificationResource> apiV3NotificationIdGet(int id) async
    test('test apiV3NotificationIdGet', () async {
      // TODO
    });

    //Future<NotificationResource> apiV3NotificationIdPut(int id, { bool forceSave, NotificationResource notificationResource }) async
    test('test apiV3NotificationIdPut', () async {
      // TODO
    });

    //Future<NotificationResource> apiV3NotificationPost({ bool forceSave, NotificationResource notificationResource }) async
    test('test apiV3NotificationPost', () async {
      // TODO
    });

    //Future<BuiltList<NotificationResource>> apiV3NotificationSchemaGet() async
    test('test apiV3NotificationSchemaGet', () async {
      // TODO
    });

    //Future apiV3NotificationTestPost({ bool forceTest, NotificationResource notificationResource }) async
    test('test apiV3NotificationTestPost', () async {
      // TODO
    });

    //Future apiV3NotificationTestallPost() async
    test('test apiV3NotificationTestallPost', () async {
      // TODO
    });
  });
}
