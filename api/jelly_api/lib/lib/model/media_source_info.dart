//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/iso_type.dart';
import 'package:jelly_api/lib/model/media_stream_protocol.dart';
import 'package:jelly_api/lib/model/video3_d_format.dart';
import 'package:jelly_api/lib/model/transport_stream_timestamp.dart';
import 'package:jelly_api/lib/model/media_source_type.dart';
import 'package:jelly_api/lib/model/video_type.dart';
import 'package:jelly_api/lib/model/media_stream.dart';
import 'package:jelly_api/lib/model/media_attachment.dart';
import 'package:jelly_api/lib/model/media_protocol.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_source_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaSourceInfo {
  /// Returns a new [MediaSourceInfo] instance.
  MediaSourceInfo({

     this.protocol,

     this.id,

     this.path,

     this.encoderPath,

     this.encoderProtocol,

     this.type,

     this.container,

     this.size,

     this.name,

     this.isRemote,

     this.eTag,

     this.runTimeTicks,

     this.readAtNativeFramerate,

     this.ignoreDts,

     this.ignoreIndex,

     this.genPtsInput,

     this.supportsTranscoding,

     this.supportsDirectStream,

     this.supportsDirectPlay,

     this.isInfiniteStream,

     this.useMostCompatibleTranscodingProfile = false,

     this.requiresOpening,

     this.openToken,

     this.requiresClosing,

     this.liveStreamId,

     this.bufferMs,

     this.requiresLooping,

     this.supportsProbing,

     this.videoType,

     this.isoType,

     this.video3DFormat,

     this.mediaStreams,

     this.mediaAttachments,

     this.formats,

     this.bitrate,

     this.fallbackMaxStreamingBitrate,

     this.timestamp,

     this.requiredHttpHeaders,

     this.transcodingUrl,

     this.transcodingSubProtocol,

     this.transcodingContainer,

     this.analyzeDurationMs,

     this.defaultAudioStreamIndex,

     this.defaultSubtitleStreamIndex,

     this.hasSegments,
  });

  @JsonKey(
    
    name: r'Protocol',
    required: false,
    includeIfNull: false,
  )


  final MediaProtocol? protocol;



  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



  @JsonKey(
    
    name: r'EncoderPath',
    required: false,
    includeIfNull: false,
  )


  final String? encoderPath;



  @JsonKey(
    
    name: r'EncoderProtocol',
    required: false,
    includeIfNull: false,
  )


  final MediaProtocol? encoderProtocol;



  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final MediaSourceType? type;



  @JsonKey(
    
    name: r'Container',
    required: false,
    includeIfNull: false,
  )


  final String? container;



  @JsonKey(
    
    name: r'Size',
    required: false,
    includeIfNull: false,
  )


  final int? size;



  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets a value indicating whether the media is remote.  Differentiate internet url vs local network.
  @JsonKey(
    
    name: r'IsRemote',
    required: false,
    includeIfNull: false,
  )


  final bool? isRemote;



  @JsonKey(
    
    name: r'ETag',
    required: false,
    includeIfNull: false,
  )


  final String? eTag;



  @JsonKey(
    
    name: r'RunTimeTicks',
    required: false,
    includeIfNull: false,
  )


  final int? runTimeTicks;



  @JsonKey(
    
    name: r'ReadAtNativeFramerate',
    required: false,
    includeIfNull: false,
  )


  final bool? readAtNativeFramerate;



  @JsonKey(
    
    name: r'IgnoreDts',
    required: false,
    includeIfNull: false,
  )


  final bool? ignoreDts;



  @JsonKey(
    
    name: r'IgnoreIndex',
    required: false,
    includeIfNull: false,
  )


  final bool? ignoreIndex;



  @JsonKey(
    
    name: r'GenPtsInput',
    required: false,
    includeIfNull: false,
  )


  final bool? genPtsInput;



  @JsonKey(
    
    name: r'SupportsTranscoding',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsTranscoding;



  @JsonKey(
    
    name: r'SupportsDirectStream',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsDirectStream;



  @JsonKey(
    
    name: r'SupportsDirectPlay',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsDirectPlay;



  @JsonKey(
    
    name: r'IsInfiniteStream',
    required: false,
    includeIfNull: false,
  )


  final bool? isInfiniteStream;



  @JsonKey(
    defaultValue: false,
    name: r'UseMostCompatibleTranscodingProfile',
    required: false,
    includeIfNull: false,
  )


  final bool? useMostCompatibleTranscodingProfile;



  @JsonKey(
    
    name: r'RequiresOpening',
    required: false,
    includeIfNull: false,
  )


  final bool? requiresOpening;



  @JsonKey(
    
    name: r'OpenToken',
    required: false,
    includeIfNull: false,
  )


  final String? openToken;



  @JsonKey(
    
    name: r'RequiresClosing',
    required: false,
    includeIfNull: false,
  )


  final bool? requiresClosing;



  @JsonKey(
    
    name: r'LiveStreamId',
    required: false,
    includeIfNull: false,
  )


  final String? liveStreamId;



  @JsonKey(
    
    name: r'BufferMs',
    required: false,
    includeIfNull: false,
  )


  final int? bufferMs;



  @JsonKey(
    
    name: r'RequiresLooping',
    required: false,
    includeIfNull: false,
  )


  final bool? requiresLooping;



  @JsonKey(
    
    name: r'SupportsProbing',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsProbing;



  @JsonKey(
    
    name: r'VideoType',
    required: false,
    includeIfNull: false,
  )


  final VideoType? videoType;



  @JsonKey(
    
    name: r'IsoType',
    required: false,
    includeIfNull: false,
  )


  final IsoType? isoType;



  @JsonKey(
    
    name: r'Video3DFormat',
    required: false,
    includeIfNull: false,
  )


  final Video3DFormat? video3DFormat;



  @JsonKey(
    
    name: r'MediaStreams',
    required: false,
    includeIfNull: false,
  )


  final List<MediaStream>? mediaStreams;



  @JsonKey(
    
    name: r'MediaAttachments',
    required: false,
    includeIfNull: false,
  )


  final List<MediaAttachment>? mediaAttachments;



  @JsonKey(
    
    name: r'Formats',
    required: false,
    includeIfNull: false,
  )


  final List<String>? formats;



  @JsonKey(
    
    name: r'Bitrate',
    required: false,
    includeIfNull: false,
  )


  final int? bitrate;



  @JsonKey(
    
    name: r'FallbackMaxStreamingBitrate',
    required: false,
    includeIfNull: false,
  )


  final int? fallbackMaxStreamingBitrate;



  @JsonKey(
    
    name: r'Timestamp',
    required: false,
    includeIfNull: false,
  )


  final TransportStreamTimestamp? timestamp;



  @JsonKey(
    
    name: r'RequiredHttpHeaders',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? requiredHttpHeaders;



  @JsonKey(
    
    name: r'TranscodingUrl',
    required: false,
    includeIfNull: false,
  )


  final String? transcodingUrl;



      /// Media streaming protocol.  Lowercase for backwards compatibility.
  @JsonKey(
    
    name: r'TranscodingSubProtocol',
    required: false,
    includeIfNull: false,
  )


  final MediaStreamProtocol? transcodingSubProtocol;



  @JsonKey(
    
    name: r'TranscodingContainer',
    required: false,
    includeIfNull: false,
  )


  final String? transcodingContainer;



  @JsonKey(
    
    name: r'AnalyzeDurationMs',
    required: false,
    includeIfNull: false,
  )


  final int? analyzeDurationMs;



  @JsonKey(
    
    name: r'DefaultAudioStreamIndex',
    required: false,
    includeIfNull: false,
  )


  final int? defaultAudioStreamIndex;



  @JsonKey(
    
    name: r'DefaultSubtitleStreamIndex',
    required: false,
    includeIfNull: false,
  )


  final int? defaultSubtitleStreamIndex;



  @JsonKey(
    
    name: r'HasSegments',
    required: false,
    includeIfNull: false,
  )


  final bool? hasSegments;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaSourceInfo &&
      other.protocol == protocol &&
      other.id == id &&
      other.path == path &&
      other.encoderPath == encoderPath &&
      other.encoderProtocol == encoderProtocol &&
      other.type == type &&
      other.container == container &&
      other.size == size &&
      other.name == name &&
      other.isRemote == isRemote &&
      other.eTag == eTag &&
      other.runTimeTicks == runTimeTicks &&
      other.readAtNativeFramerate == readAtNativeFramerate &&
      other.ignoreDts == ignoreDts &&
      other.ignoreIndex == ignoreIndex &&
      other.genPtsInput == genPtsInput &&
      other.supportsTranscoding == supportsTranscoding &&
      other.supportsDirectStream == supportsDirectStream &&
      other.supportsDirectPlay == supportsDirectPlay &&
      other.isInfiniteStream == isInfiniteStream &&
      other.useMostCompatibleTranscodingProfile == useMostCompatibleTranscodingProfile &&
      other.requiresOpening == requiresOpening &&
      other.openToken == openToken &&
      other.requiresClosing == requiresClosing &&
      other.liveStreamId == liveStreamId &&
      other.bufferMs == bufferMs &&
      other.requiresLooping == requiresLooping &&
      other.supportsProbing == supportsProbing &&
      other.videoType == videoType &&
      other.isoType == isoType &&
      other.video3DFormat == video3DFormat &&
      other.mediaStreams == mediaStreams &&
      other.mediaAttachments == mediaAttachments &&
      other.formats == formats &&
      other.bitrate == bitrate &&
      other.fallbackMaxStreamingBitrate == fallbackMaxStreamingBitrate &&
      other.timestamp == timestamp &&
      other.requiredHttpHeaders == requiredHttpHeaders &&
      other.transcodingUrl == transcodingUrl &&
      other.transcodingSubProtocol == transcodingSubProtocol &&
      other.transcodingContainer == transcodingContainer &&
      other.analyzeDurationMs == analyzeDurationMs &&
      other.defaultAudioStreamIndex == defaultAudioStreamIndex &&
      other.defaultSubtitleStreamIndex == defaultSubtitleStreamIndex &&
      other.hasSegments == hasSegments;

    @override
    int get hashCode =>
        protocol.hashCode +
        (id == null ? 0 : id.hashCode) +
        (path == null ? 0 : path.hashCode) +
        (encoderPath == null ? 0 : encoderPath.hashCode) +
        (encoderProtocol == null ? 0 : encoderProtocol.hashCode) +
        type.hashCode +
        (container == null ? 0 : container.hashCode) +
        (size == null ? 0 : size.hashCode) +
        (name == null ? 0 : name.hashCode) +
        isRemote.hashCode +
        (eTag == null ? 0 : eTag.hashCode) +
        (runTimeTicks == null ? 0 : runTimeTicks.hashCode) +
        readAtNativeFramerate.hashCode +
        ignoreDts.hashCode +
        ignoreIndex.hashCode +
        genPtsInput.hashCode +
        supportsTranscoding.hashCode +
        supportsDirectStream.hashCode +
        supportsDirectPlay.hashCode +
        isInfiniteStream.hashCode +
        useMostCompatibleTranscodingProfile.hashCode +
        requiresOpening.hashCode +
        (openToken == null ? 0 : openToken.hashCode) +
        requiresClosing.hashCode +
        (liveStreamId == null ? 0 : liveStreamId.hashCode) +
        (bufferMs == null ? 0 : bufferMs.hashCode) +
        requiresLooping.hashCode +
        supportsProbing.hashCode +
        (videoType == null ? 0 : videoType.hashCode) +
        (isoType == null ? 0 : isoType.hashCode) +
        (video3DFormat == null ? 0 : video3DFormat.hashCode) +
        (mediaStreams == null ? 0 : mediaStreams.hashCode) +
        (mediaAttachments == null ? 0 : mediaAttachments.hashCode) +
        (formats == null ? 0 : formats.hashCode) +
        (bitrate == null ? 0 : bitrate.hashCode) +
        (fallbackMaxStreamingBitrate == null ? 0 : fallbackMaxStreamingBitrate.hashCode) +
        (timestamp == null ? 0 : timestamp.hashCode) +
        (requiredHttpHeaders == null ? 0 : requiredHttpHeaders.hashCode) +
        (transcodingUrl == null ? 0 : transcodingUrl.hashCode) +
        transcodingSubProtocol.hashCode +
        (transcodingContainer == null ? 0 : transcodingContainer.hashCode) +
        (analyzeDurationMs == null ? 0 : analyzeDurationMs.hashCode) +
        (defaultAudioStreamIndex == null ? 0 : defaultAudioStreamIndex.hashCode) +
        (defaultSubtitleStreamIndex == null ? 0 : defaultSubtitleStreamIndex.hashCode) +
        hasSegments.hashCode;

  factory MediaSourceInfo.fromJson(Map<String, dynamic> json) => _$MediaSourceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MediaSourceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

