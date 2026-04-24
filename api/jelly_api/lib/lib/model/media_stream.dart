//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/media_stream_type.dart';
import 'package:jelly_api/lib/model/video_range.dart';
import 'package:jelly_api/lib/model/audio_spatial_format.dart';
import 'package:jelly_api/lib/model/video_range_type.dart';
import 'package:jelly_api/lib/model/subtitle_delivery_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_stream.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaStream {
  /// Returns a new [MediaStream] instance.
  MediaStream({

     this.codec,

     this.codecTag,

     this.language,

     this.colorRange,

     this.colorSpace,

     this.colorTransfer,

     this.colorPrimaries,

     this.dvVersionMajor,

     this.dvVersionMinor,

     this.dvProfile,

     this.dvLevel,

     this.rpuPresentFlag,

     this.elPresentFlag,

     this.blPresentFlag,

     this.dvBlSignalCompatibilityId,

     this.rotation,

     this.comment,

     this.timeBase,

     this.codecTimeBase,

     this.title,

     this.hdr10PlusPresentFlag,

     this.videoRange = VideoRange.unknown,

     this.videoRangeType = VideoRangeType.unknown,

     this.videoDoViTitle,

     this.audioSpatialFormat = AudioSpatialFormat.none,

     this.localizedUndefined,

     this.localizedDefault,

     this.localizedForced,

     this.localizedExternal,

     this.localizedHearingImpaired,

     this.displayTitle,

     this.nalLengthSize,

     this.isInterlaced,

     this.isAVC,

     this.channelLayout,

     this.bitRate,

     this.bitDepth,

     this.refFrames,

     this.packetLength,

     this.channels,

     this.sampleRate,

     this.isDefault,

     this.isForced,

     this.isHearingImpaired,

     this.height,

     this.width,

     this.averageFrameRate,

     this.realFrameRate,

     this.referenceFrameRate,

     this.profile,

     this.type,

     this.aspectRatio,

     this.index,

     this.score,

     this.isExternal,

     this.deliveryMethod,

     this.deliveryUrl,

     this.isExternalUrl,

     this.isTextSubtitleStream,

     this.supportsExternalStream,

     this.path,

     this.pixelFormat,

     this.level,

     this.isAnamorphic,
  });

      /// Gets or sets the codec.
  @JsonKey(
    
    name: r'Codec',
    required: false,
    includeIfNull: false,
  )


  final String? codec;



      /// Gets or sets the codec tag.
  @JsonKey(
    
    name: r'CodecTag',
    required: false,
    includeIfNull: false,
  )


  final String? codecTag;



      /// Gets or sets the language.
  @JsonKey(
    
    name: r'Language',
    required: false,
    includeIfNull: false,
  )


  final String? language;



      /// Gets or sets the color range.
  @JsonKey(
    
    name: r'ColorRange',
    required: false,
    includeIfNull: false,
  )


  final String? colorRange;



      /// Gets or sets the color space.
  @JsonKey(
    
    name: r'ColorSpace',
    required: false,
    includeIfNull: false,
  )


  final String? colorSpace;



      /// Gets or sets the color transfer.
  @JsonKey(
    
    name: r'ColorTransfer',
    required: false,
    includeIfNull: false,
  )


  final String? colorTransfer;



      /// Gets or sets the color primaries.
  @JsonKey(
    
    name: r'ColorPrimaries',
    required: false,
    includeIfNull: false,
  )


  final String? colorPrimaries;



      /// Gets or sets the Dolby Vision version major.
  @JsonKey(
    
    name: r'DvVersionMajor',
    required: false,
    includeIfNull: false,
  )


  final int? dvVersionMajor;



      /// Gets or sets the Dolby Vision version minor.
  @JsonKey(
    
    name: r'DvVersionMinor',
    required: false,
    includeIfNull: false,
  )


  final int? dvVersionMinor;



      /// Gets or sets the Dolby Vision profile.
  @JsonKey(
    
    name: r'DvProfile',
    required: false,
    includeIfNull: false,
  )


  final int? dvProfile;



      /// Gets or sets the Dolby Vision level.
  @JsonKey(
    
    name: r'DvLevel',
    required: false,
    includeIfNull: false,
  )


  final int? dvLevel;



      /// Gets or sets the Dolby Vision rpu present flag.
  @JsonKey(
    
    name: r'RpuPresentFlag',
    required: false,
    includeIfNull: false,
  )


  final int? rpuPresentFlag;



      /// Gets or sets the Dolby Vision el present flag.
  @JsonKey(
    
    name: r'ElPresentFlag',
    required: false,
    includeIfNull: false,
  )


  final int? elPresentFlag;



      /// Gets or sets the Dolby Vision bl present flag.
  @JsonKey(
    
    name: r'BlPresentFlag',
    required: false,
    includeIfNull: false,
  )


  final int? blPresentFlag;



      /// Gets or sets the Dolby Vision bl signal compatibility id.
  @JsonKey(
    
    name: r'DvBlSignalCompatibilityId',
    required: false,
    includeIfNull: false,
  )


  final int? dvBlSignalCompatibilityId;



      /// Gets or sets the Rotation in degrees.
  @JsonKey(
    
    name: r'Rotation',
    required: false,
    includeIfNull: false,
  )


  final int? rotation;



      /// Gets or sets the comment.
  @JsonKey(
    
    name: r'Comment',
    required: false,
    includeIfNull: false,
  )


  final String? comment;



      /// Gets or sets the time base.
  @JsonKey(
    
    name: r'TimeBase',
    required: false,
    includeIfNull: false,
  )


  final String? timeBase;



      /// Gets or sets the codec time base.
  @JsonKey(
    
    name: r'CodecTimeBase',
    required: false,
    includeIfNull: false,
  )


  final String? codecTimeBase;



      /// Gets or sets the title.
  @JsonKey(
    
    name: r'Title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'Hdr10PlusPresentFlag',
    required: false,
    includeIfNull: false,
  )


  final bool? hdr10PlusPresentFlag;



      /// Gets the video range.
  @JsonKey(
    defaultValue: VideoRange.unknown,
    name: r'VideoRange',
    required: false,
    includeIfNull: false,
  )


  final VideoRange? videoRange;



      /// Gets the video range type.
  @JsonKey(
    defaultValue: VideoRangeType.unknown,
    name: r'VideoRangeType',
    required: false,
    includeIfNull: false,
  )


  final VideoRangeType? videoRangeType;



      /// Gets the video dovi title.
  @JsonKey(
    
    name: r'VideoDoViTitle',
    required: false,
    includeIfNull: false,
  )


  final String? videoDoViTitle;



      /// Gets the audio spatial format.
  @JsonKey(
    defaultValue: AudioSpatialFormat.none,
    name: r'AudioSpatialFormat',
    required: false,
    includeIfNull: false,
  )


  final AudioSpatialFormat? audioSpatialFormat;



  @JsonKey(
    
    name: r'LocalizedUndefined',
    required: false,
    includeIfNull: false,
  )


  final String? localizedUndefined;



  @JsonKey(
    
    name: r'LocalizedDefault',
    required: false,
    includeIfNull: false,
  )


  final String? localizedDefault;



  @JsonKey(
    
    name: r'LocalizedForced',
    required: false,
    includeIfNull: false,
  )


  final String? localizedForced;



  @JsonKey(
    
    name: r'LocalizedExternal',
    required: false,
    includeIfNull: false,
  )


  final String? localizedExternal;



  @JsonKey(
    
    name: r'LocalizedHearingImpaired',
    required: false,
    includeIfNull: false,
  )


  final String? localizedHearingImpaired;



  @JsonKey(
    
    name: r'DisplayTitle',
    required: false,
    includeIfNull: false,
  )


  final String? displayTitle;



  @JsonKey(
    
    name: r'NalLengthSize',
    required: false,
    includeIfNull: false,
  )


  final String? nalLengthSize;



      /// Gets or sets a value indicating whether this instance is interlaced.
  @JsonKey(
    
    name: r'IsInterlaced',
    required: false,
    includeIfNull: false,
  )


  final bool? isInterlaced;



  @JsonKey(
    
    name: r'IsAVC',
    required: false,
    includeIfNull: false,
  )


  final bool? isAVC;



      /// Gets or sets the channel layout.
  @JsonKey(
    
    name: r'ChannelLayout',
    required: false,
    includeIfNull: false,
  )


  final String? channelLayout;



      /// Gets or sets the bit rate.
  @JsonKey(
    
    name: r'BitRate',
    required: false,
    includeIfNull: false,
  )


  final int? bitRate;



      /// Gets or sets the bit depth.
  @JsonKey(
    
    name: r'BitDepth',
    required: false,
    includeIfNull: false,
  )


  final int? bitDepth;



      /// Gets or sets the reference frames.
  @JsonKey(
    
    name: r'RefFrames',
    required: false,
    includeIfNull: false,
  )


  final int? refFrames;



      /// Gets or sets the length of the packet.
  @JsonKey(
    
    name: r'PacketLength',
    required: false,
    includeIfNull: false,
  )


  final int? packetLength;



      /// Gets or sets the channels.
  @JsonKey(
    
    name: r'Channels',
    required: false,
    includeIfNull: false,
  )


  final int? channels;



      /// Gets or sets the sample rate.
  @JsonKey(
    
    name: r'SampleRate',
    required: false,
    includeIfNull: false,
  )


  final int? sampleRate;



      /// Gets or sets a value indicating whether this instance is default.
  @JsonKey(
    
    name: r'IsDefault',
    required: false,
    includeIfNull: false,
  )


  final bool? isDefault;



      /// Gets or sets a value indicating whether this instance is forced.
  @JsonKey(
    
    name: r'IsForced',
    required: false,
    includeIfNull: false,
  )


  final bool? isForced;



      /// Gets or sets a value indicating whether this instance is for the hearing impaired.
  @JsonKey(
    
    name: r'IsHearingImpaired',
    required: false,
    includeIfNull: false,
  )


  final bool? isHearingImpaired;



      /// Gets or sets the height.
  @JsonKey(
    
    name: r'Height',
    required: false,
    includeIfNull: false,
  )


  final int? height;



      /// Gets or sets the width.
  @JsonKey(
    
    name: r'Width',
    required: false,
    includeIfNull: false,
  )


  final int? width;



      /// Gets or sets the average frame rate.
  @JsonKey(
    
    name: r'AverageFrameRate',
    required: false,
    includeIfNull: false,
  )


  final double? averageFrameRate;



      /// Gets or sets the real frame rate.
  @JsonKey(
    
    name: r'RealFrameRate',
    required: false,
    includeIfNull: false,
  )


  final double? realFrameRate;



      /// Gets the framerate used as reference.  Prefer AverageFrameRate, if that is null or an unrealistic value  then fallback to RealFrameRate.
  @JsonKey(
    
    name: r'ReferenceFrameRate',
    required: false,
    includeIfNull: false,
  )


  final double? referenceFrameRate;



      /// Gets or sets the profile.
  @JsonKey(
    
    name: r'Profile',
    required: false,
    includeIfNull: false,
  )


  final String? profile;



      /// Gets or sets the type.
  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final MediaStreamType? type;



      /// Gets or sets the aspect ratio.
  @JsonKey(
    
    name: r'AspectRatio',
    required: false,
    includeIfNull: false,
  )


  final String? aspectRatio;



      /// Gets or sets the index.
  @JsonKey(
    
    name: r'Index',
    required: false,
    includeIfNull: false,
  )


  final int? index;



      /// Gets or sets the score.
  @JsonKey(
    
    name: r'Score',
    required: false,
    includeIfNull: false,
  )


  final int? score;



      /// Gets or sets a value indicating whether this instance is external.
  @JsonKey(
    
    name: r'IsExternal',
    required: false,
    includeIfNull: false,
  )


  final bool? isExternal;



      /// Gets or sets the method.
  @JsonKey(
    
    name: r'DeliveryMethod',
    required: false,
    includeIfNull: false,
  )


  final SubtitleDeliveryMethod? deliveryMethod;



      /// Gets or sets the delivery URL.
  @JsonKey(
    
    name: r'DeliveryUrl',
    required: false,
    includeIfNull: false,
  )


  final String? deliveryUrl;



      /// Gets or sets a value indicating whether this instance is external URL.
  @JsonKey(
    
    name: r'IsExternalUrl',
    required: false,
    includeIfNull: false,
  )


  final bool? isExternalUrl;



  @JsonKey(
    
    name: r'IsTextSubtitleStream',
    required: false,
    includeIfNull: false,
  )


  final bool? isTextSubtitleStream;



      /// Gets or sets a value indicating whether [supports external stream].
  @JsonKey(
    
    name: r'SupportsExternalStream',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsExternalStream;



      /// Gets or sets the filename.
  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



      /// Gets or sets the pixel format.
  @JsonKey(
    
    name: r'PixelFormat',
    required: false,
    includeIfNull: false,
  )


  final String? pixelFormat;



      /// Gets or sets the level.
  @JsonKey(
    
    name: r'Level',
    required: false,
    includeIfNull: false,
  )


  final double? level;



      /// Gets or sets whether this instance is anamorphic.
  @JsonKey(
    
    name: r'IsAnamorphic',
    required: false,
    includeIfNull: false,
  )


  final bool? isAnamorphic;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaStream &&
      other.codec == codec &&
      other.codecTag == codecTag &&
      other.language == language &&
      other.colorRange == colorRange &&
      other.colorSpace == colorSpace &&
      other.colorTransfer == colorTransfer &&
      other.colorPrimaries == colorPrimaries &&
      other.dvVersionMajor == dvVersionMajor &&
      other.dvVersionMinor == dvVersionMinor &&
      other.dvProfile == dvProfile &&
      other.dvLevel == dvLevel &&
      other.rpuPresentFlag == rpuPresentFlag &&
      other.elPresentFlag == elPresentFlag &&
      other.blPresentFlag == blPresentFlag &&
      other.dvBlSignalCompatibilityId == dvBlSignalCompatibilityId &&
      other.rotation == rotation &&
      other.comment == comment &&
      other.timeBase == timeBase &&
      other.codecTimeBase == codecTimeBase &&
      other.title == title &&
      other.hdr10PlusPresentFlag == hdr10PlusPresentFlag &&
      other.videoRange == videoRange &&
      other.videoRangeType == videoRangeType &&
      other.videoDoViTitle == videoDoViTitle &&
      other.audioSpatialFormat == audioSpatialFormat &&
      other.localizedUndefined == localizedUndefined &&
      other.localizedDefault == localizedDefault &&
      other.localizedForced == localizedForced &&
      other.localizedExternal == localizedExternal &&
      other.localizedHearingImpaired == localizedHearingImpaired &&
      other.displayTitle == displayTitle &&
      other.nalLengthSize == nalLengthSize &&
      other.isInterlaced == isInterlaced &&
      other.isAVC == isAVC &&
      other.channelLayout == channelLayout &&
      other.bitRate == bitRate &&
      other.bitDepth == bitDepth &&
      other.refFrames == refFrames &&
      other.packetLength == packetLength &&
      other.channels == channels &&
      other.sampleRate == sampleRate &&
      other.isDefault == isDefault &&
      other.isForced == isForced &&
      other.isHearingImpaired == isHearingImpaired &&
      other.height == height &&
      other.width == width &&
      other.averageFrameRate == averageFrameRate &&
      other.realFrameRate == realFrameRate &&
      other.referenceFrameRate == referenceFrameRate &&
      other.profile == profile &&
      other.type == type &&
      other.aspectRatio == aspectRatio &&
      other.index == index &&
      other.score == score &&
      other.isExternal == isExternal &&
      other.deliveryMethod == deliveryMethod &&
      other.deliveryUrl == deliveryUrl &&
      other.isExternalUrl == isExternalUrl &&
      other.isTextSubtitleStream == isTextSubtitleStream &&
      other.supportsExternalStream == supportsExternalStream &&
      other.path == path &&
      other.pixelFormat == pixelFormat &&
      other.level == level &&
      other.isAnamorphic == isAnamorphic;

    @override
    int get hashCode =>
        (codec == null ? 0 : codec.hashCode) +
        (codecTag == null ? 0 : codecTag.hashCode) +
        (language == null ? 0 : language.hashCode) +
        (colorRange == null ? 0 : colorRange.hashCode) +
        (colorSpace == null ? 0 : colorSpace.hashCode) +
        (colorTransfer == null ? 0 : colorTransfer.hashCode) +
        (colorPrimaries == null ? 0 : colorPrimaries.hashCode) +
        (dvVersionMajor == null ? 0 : dvVersionMajor.hashCode) +
        (dvVersionMinor == null ? 0 : dvVersionMinor.hashCode) +
        (dvProfile == null ? 0 : dvProfile.hashCode) +
        (dvLevel == null ? 0 : dvLevel.hashCode) +
        (rpuPresentFlag == null ? 0 : rpuPresentFlag.hashCode) +
        (elPresentFlag == null ? 0 : elPresentFlag.hashCode) +
        (blPresentFlag == null ? 0 : blPresentFlag.hashCode) +
        (dvBlSignalCompatibilityId == null ? 0 : dvBlSignalCompatibilityId.hashCode) +
        (rotation == null ? 0 : rotation.hashCode) +
        (comment == null ? 0 : comment.hashCode) +
        (timeBase == null ? 0 : timeBase.hashCode) +
        (codecTimeBase == null ? 0 : codecTimeBase.hashCode) +
        (title == null ? 0 : title.hashCode) +
        (hdr10PlusPresentFlag == null ? 0 : hdr10PlusPresentFlag.hashCode) +
        videoRange.hashCode +
        videoRangeType.hashCode +
        (videoDoViTitle == null ? 0 : videoDoViTitle.hashCode) +
        audioSpatialFormat.hashCode +
        (localizedUndefined == null ? 0 : localizedUndefined.hashCode) +
        (localizedDefault == null ? 0 : localizedDefault.hashCode) +
        (localizedForced == null ? 0 : localizedForced.hashCode) +
        (localizedExternal == null ? 0 : localizedExternal.hashCode) +
        (localizedHearingImpaired == null ? 0 : localizedHearingImpaired.hashCode) +
        (displayTitle == null ? 0 : displayTitle.hashCode) +
        (nalLengthSize == null ? 0 : nalLengthSize.hashCode) +
        isInterlaced.hashCode +
        (isAVC == null ? 0 : isAVC.hashCode) +
        (channelLayout == null ? 0 : channelLayout.hashCode) +
        (bitRate == null ? 0 : bitRate.hashCode) +
        (bitDepth == null ? 0 : bitDepth.hashCode) +
        (refFrames == null ? 0 : refFrames.hashCode) +
        (packetLength == null ? 0 : packetLength.hashCode) +
        (channels == null ? 0 : channels.hashCode) +
        (sampleRate == null ? 0 : sampleRate.hashCode) +
        isDefault.hashCode +
        isForced.hashCode +
        isHearingImpaired.hashCode +
        (height == null ? 0 : height.hashCode) +
        (width == null ? 0 : width.hashCode) +
        (averageFrameRate == null ? 0 : averageFrameRate.hashCode) +
        (realFrameRate == null ? 0 : realFrameRate.hashCode) +
        (referenceFrameRate == null ? 0 : referenceFrameRate.hashCode) +
        (profile == null ? 0 : profile.hashCode) +
        type.hashCode +
        (aspectRatio == null ? 0 : aspectRatio.hashCode) +
        index.hashCode +
        (score == null ? 0 : score.hashCode) +
        isExternal.hashCode +
        (deliveryMethod == null ? 0 : deliveryMethod.hashCode) +
        (deliveryUrl == null ? 0 : deliveryUrl.hashCode) +
        (isExternalUrl == null ? 0 : isExternalUrl.hashCode) +
        isTextSubtitleStream.hashCode +
        supportsExternalStream.hashCode +
        (path == null ? 0 : path.hashCode) +
        (pixelFormat == null ? 0 : pixelFormat.hashCode) +
        (level == null ? 0 : level.hashCode) +
        (isAnamorphic == null ? 0 : isAnamorphic.hashCode);

  factory MediaStream.fromJson(Map<String, dynamic> json) => _$MediaStreamFromJson(json);

  Map<String, dynamic> toJson() => _$MediaStreamToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

