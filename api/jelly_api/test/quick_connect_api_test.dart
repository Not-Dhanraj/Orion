import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for QuickConnectApi
void main() {
  final instance = JellyApi().getQuickConnectApi();

  group(QuickConnectApi, () {
    // Authorizes a pending quick connect request.
    //
    //Future<bool> authorizeQuickConnect(String code, { String userId }) async
    test('test authorizeQuickConnect', () async {
      // TODO
    });

    // Gets the current quick connect state.
    //
    //Future<bool> getQuickConnectEnabled() async
    test('test getQuickConnectEnabled', () async {
      // TODO
    });

    // Attempts to retrieve authentication information.
    //
    //Future<QuickConnectResult> getQuickConnectState(String secret) async
    test('test getQuickConnectState', () async {
      // TODO
    });

    // Initiate a new quick connect request.
    //
    //Future<QuickConnectResult> initiateQuickConnect() async
    test('test initiateQuickConnect', () async {
      // TODO
    });

  });
}
