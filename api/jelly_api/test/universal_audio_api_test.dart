import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for UniversalAudioApi
void main() {
  final instance = JellyApi().getUniversalAudioApi();

  group(UniversalAudioApi, () {
    // Gets an audio stream.
    //
    //Future<Uint8List> getUniversalAudioStream(String itemId, { List<String> container, String mediaSourceId, String deviceId, String userId, String audioCodec, int maxAudioChannels, int transcodingAudioChannels, int maxStreamingBitrate, int audioBitRate, int startTimeTicks, String transcodingContainer, MediaStreamProtocol transcodingProtocol, int maxAudioSampleRate, int maxAudioBitDepth, bool enableRemoteMedia, bool enableAudioVbrEncoding, bool breakOnNonKeyFrames, bool enableRedirection }) async
    test('test getUniversalAudioStream', () async {
      // TODO
    });

    // Gets an audio stream.
    //
    //Future<Uint8List> headUniversalAudioStream(String itemId, { List<String> container, String mediaSourceId, String deviceId, String userId, String audioCodec, int maxAudioChannels, int transcodingAudioChannels, int maxStreamingBitrate, int audioBitRate, int startTimeTicks, String transcodingContainer, MediaStreamProtocol transcodingProtocol, int maxAudioSampleRate, int maxAudioBitDepth, bool enableRemoteMedia, bool enableAudioVbrEncoding, bool breakOnNonKeyFrames, bool enableRedirection }) async
    test('test headUniversalAudioStream', () async {
      // TODO
    });

  });
}
