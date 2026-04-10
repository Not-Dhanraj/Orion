import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';

// tests for DeviceProfile
void main() {
  final DeviceProfile? instance = /* DeviceProfile(...) */ null;
  // TODO add properties to the entity

  group(DeviceProfile, () {
    // Gets or sets the name of this device profile. User profiles must have a unique name.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Gets or sets the unique internal identifier.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Gets or sets the maximum allowed bitrate for all streamed content.
    // int maxStreamingBitrate
    test('to test the property `maxStreamingBitrate`', () async {
      // TODO
    });

    // Gets or sets the maximum allowed bitrate for statically streamed content (= direct played files).
    // int maxStaticBitrate
    test('to test the property `maxStaticBitrate`', () async {
      // TODO
    });

    // Gets or sets the maximum allowed bitrate for transcoded music streams.
    // int musicStreamingTranscodingBitrate
    test('to test the property `musicStreamingTranscodingBitrate`', () async {
      // TODO
    });

    // Gets or sets the maximum allowed bitrate for statically streamed (= direct played) music files.
    // int maxStaticMusicBitrate
    test('to test the property `maxStaticMusicBitrate`', () async {
      // TODO
    });

    // Gets or sets the direct play profiles.
    // List<DirectPlayProfile> directPlayProfiles
    test('to test the property `directPlayProfiles`', () async {
      // TODO
    });

    // Gets or sets the transcoding profiles.
    // List<TranscodingProfile> transcodingProfiles
    test('to test the property `transcodingProfiles`', () async {
      // TODO
    });

    // Gets or sets the container profiles. Failing to meet these optional conditions causes transcoding to occur.
    // List<ContainerProfile> containerProfiles
    test('to test the property `containerProfiles`', () async {
      // TODO
    });

    // Gets or sets the codec profiles.
    // List<CodecProfile> codecProfiles
    test('to test the property `codecProfiles`', () async {
      // TODO
    });

    // Gets or sets the subtitle profiles.
    // List<SubtitleProfile> subtitleProfiles
    test('to test the property `subtitleProfiles`', () async {
      // TODO
    });

  });
}
