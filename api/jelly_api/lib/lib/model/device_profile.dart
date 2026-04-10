//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/subtitle_profile.dart';
import 'package:jelly_api/lib/model/transcoding_profile.dart';
import 'package:jelly_api/lib/model/codec_profile.dart';
import 'package:jelly_api/lib/model/container_profile.dart';
import 'package:jelly_api/lib/model/direct_play_profile.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'device_profile.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeviceProfile {
  /// Returns a new [DeviceProfile] instance.
  DeviceProfile({

     this.name,

     this.id,

     this.maxStreamingBitrate,

     this.maxStaticBitrate,

     this.musicStreamingTranscodingBitrate,

     this.maxStaticMusicBitrate,

     this.directPlayProfiles,

     this.transcodingProfiles,

     this.containerProfiles,

     this.codecProfiles,

     this.subtitleProfiles,
  });

      /// Gets or sets the name of this device profile. User profiles must have a unique name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the unique internal identifier.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets the maximum allowed bitrate for all streamed content.
  @JsonKey(
    
    name: r'MaxStreamingBitrate',
    required: false,
    includeIfNull: false,
  )


  final int? maxStreamingBitrate;



      /// Gets or sets the maximum allowed bitrate for statically streamed content (= direct played files).
  @JsonKey(
    
    name: r'MaxStaticBitrate',
    required: false,
    includeIfNull: false,
  )


  final int? maxStaticBitrate;



      /// Gets or sets the maximum allowed bitrate for transcoded music streams.
  @JsonKey(
    
    name: r'MusicStreamingTranscodingBitrate',
    required: false,
    includeIfNull: false,
  )


  final int? musicStreamingTranscodingBitrate;



      /// Gets or sets the maximum allowed bitrate for statically streamed (= direct played) music files.
  @JsonKey(
    
    name: r'MaxStaticMusicBitrate',
    required: false,
    includeIfNull: false,
  )


  final int? maxStaticMusicBitrate;



      /// Gets or sets the direct play profiles.
  @JsonKey(
    
    name: r'DirectPlayProfiles',
    required: false,
    includeIfNull: false,
  )


  final List<DirectPlayProfile>? directPlayProfiles;



      /// Gets or sets the transcoding profiles.
  @JsonKey(
    
    name: r'TranscodingProfiles',
    required: false,
    includeIfNull: false,
  )


  final List<TranscodingProfile>? transcodingProfiles;



      /// Gets or sets the container profiles. Failing to meet these optional conditions causes transcoding to occur.
  @JsonKey(
    
    name: r'ContainerProfiles',
    required: false,
    includeIfNull: false,
  )


  final List<ContainerProfile>? containerProfiles;



      /// Gets or sets the codec profiles.
  @JsonKey(
    
    name: r'CodecProfiles',
    required: false,
    includeIfNull: false,
  )


  final List<CodecProfile>? codecProfiles;



      /// Gets or sets the subtitle profiles.
  @JsonKey(
    
    name: r'SubtitleProfiles',
    required: false,
    includeIfNull: false,
  )


  final List<SubtitleProfile>? subtitleProfiles;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DeviceProfile &&
      other.name == name &&
      other.id == id &&
      other.maxStreamingBitrate == maxStreamingBitrate &&
      other.maxStaticBitrate == maxStaticBitrate &&
      other.musicStreamingTranscodingBitrate == musicStreamingTranscodingBitrate &&
      other.maxStaticMusicBitrate == maxStaticMusicBitrate &&
      other.directPlayProfiles == directPlayProfiles &&
      other.transcodingProfiles == transcodingProfiles &&
      other.containerProfiles == containerProfiles &&
      other.codecProfiles == codecProfiles &&
      other.subtitleProfiles == subtitleProfiles;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (id == null ? 0 : id.hashCode) +
        (maxStreamingBitrate == null ? 0 : maxStreamingBitrate.hashCode) +
        (maxStaticBitrate == null ? 0 : maxStaticBitrate.hashCode) +
        (musicStreamingTranscodingBitrate == null ? 0 : musicStreamingTranscodingBitrate.hashCode) +
        (maxStaticMusicBitrate == null ? 0 : maxStaticMusicBitrate.hashCode) +
        directPlayProfiles.hashCode +
        transcodingProfiles.hashCode +
        containerProfiles.hashCode +
        codecProfiles.hashCode +
        subtitleProfiles.hashCode;

  factory DeviceProfile.fromJson(Map<String, dynamic> json) => _$DeviceProfileFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceProfileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

