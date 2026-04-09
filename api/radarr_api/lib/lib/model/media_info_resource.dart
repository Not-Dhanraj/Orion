//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_info_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaInfoResource {
  /// Returns a new [MediaInfoResource] instance.
  MediaInfoResource({

     this.id,

     this.audioBitrate,

     this.audioChannels,

     this.audioCodec,

     this.audioLanguages,

     this.audioStreamCount,

     this.videoBitDepth,

     this.videoBitrate,

     this.videoCodec,

     this.videoFps,

     this.videoDynamicRange,

     this.videoDynamicRangeType,

     this.resolution,

     this.runTime,

     this.scanType,

     this.subtitles,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'audioBitrate',
    required: false,
    includeIfNull: false,
  )


  final int? audioBitrate;



  @JsonKey(
    
    name: r'audioChannels',
    required: false,
    includeIfNull: false,
  )


  final double? audioChannels;



  @JsonKey(
    
    name: r'audioCodec',
    required: false,
    includeIfNull: false,
  )


  final String? audioCodec;



  @JsonKey(
    
    name: r'audioLanguages',
    required: false,
    includeIfNull: false,
  )


  final String? audioLanguages;



  @JsonKey(
    
    name: r'audioStreamCount',
    required: false,
    includeIfNull: false,
  )


  final int? audioStreamCount;



  @JsonKey(
    
    name: r'videoBitDepth',
    required: false,
    includeIfNull: false,
  )


  final int? videoBitDepth;



  @JsonKey(
    
    name: r'videoBitrate',
    required: false,
    includeIfNull: false,
  )


  final int? videoBitrate;



  @JsonKey(
    
    name: r'videoCodec',
    required: false,
    includeIfNull: false,
  )


  final String? videoCodec;



  @JsonKey(
    
    name: r'videoFps',
    required: false,
    includeIfNull: false,
  )


  final double? videoFps;



  @JsonKey(
    
    name: r'videoDynamicRange',
    required: false,
    includeIfNull: false,
  )


  final String? videoDynamicRange;



  @JsonKey(
    
    name: r'videoDynamicRangeType',
    required: false,
    includeIfNull: false,
  )


  final String? videoDynamicRangeType;



  @JsonKey(
    
    name: r'resolution',
    required: false,
    includeIfNull: false,
  )


  final String? resolution;



  @JsonKey(
    
    name: r'runTime',
    required: false,
    includeIfNull: false,
  )


  final String? runTime;



  @JsonKey(
    
    name: r'scanType',
    required: false,
    includeIfNull: false,
  )


  final String? scanType;



  @JsonKey(
    
    name: r'subtitles',
    required: false,
    includeIfNull: false,
  )


  final String? subtitles;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaInfoResource &&
      other.id == id &&
      other.audioBitrate == audioBitrate &&
      other.audioChannels == audioChannels &&
      other.audioCodec == audioCodec &&
      other.audioLanguages == audioLanguages &&
      other.audioStreamCount == audioStreamCount &&
      other.videoBitDepth == videoBitDepth &&
      other.videoBitrate == videoBitrate &&
      other.videoCodec == videoCodec &&
      other.videoFps == videoFps &&
      other.videoDynamicRange == videoDynamicRange &&
      other.videoDynamicRangeType == videoDynamicRangeType &&
      other.resolution == resolution &&
      other.runTime == runTime &&
      other.scanType == scanType &&
      other.subtitles == subtitles;

    @override
    int get hashCode =>
        id.hashCode +
        audioBitrate.hashCode +
        audioChannels.hashCode +
        (audioCodec == null ? 0 : audioCodec.hashCode) +
        (audioLanguages == null ? 0 : audioLanguages.hashCode) +
        audioStreamCount.hashCode +
        videoBitDepth.hashCode +
        videoBitrate.hashCode +
        (videoCodec == null ? 0 : videoCodec.hashCode) +
        videoFps.hashCode +
        (videoDynamicRange == null ? 0 : videoDynamicRange.hashCode) +
        (videoDynamicRangeType == null ? 0 : videoDynamicRangeType.hashCode) +
        (resolution == null ? 0 : resolution.hashCode) +
        (runTime == null ? 0 : runTime.hashCode) +
        (scanType == null ? 0 : scanType.hashCode) +
        (subtitles == null ? 0 : subtitles.hashCode);

  factory MediaInfoResource.fromJson(Map<String, dynamic> json) => _$MediaInfoResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MediaInfoResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

