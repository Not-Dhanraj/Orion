//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/tonemapping_range.dart';
import 'package:jelly_api/lib/model/down_mix_stereo_algorithms.dart';
import 'package:jelly_api/lib/model/tonemapping_mode.dart';
import 'package:jelly_api/lib/model/encoder_preset.dart';
import 'package:jelly_api/lib/model/tonemapping_algorithm.dart';
import 'package:jelly_api/lib/model/hardware_acceleration_type.dart';
import 'package:jelly_api/lib/model/deinterlace_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'encoding_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EncodingOptions {
  /// Returns a new [EncodingOptions] instance.
  EncodingOptions({

     this.encodingThreadCount,

     this.transcodingTempPath,

     this.fallbackFontPath,

     this.enableFallbackFont,

     this.enableAudioVbr,

     this.downMixAudioBoost,

     this.downMixStereoAlgorithm,

     this.maxMuxingQueueSize,

     this.enableThrottling,

     this.throttleDelaySeconds,

     this.enableSegmentDeletion,

     this.segmentKeepSeconds,

     this.hardwareAccelerationType,

     this.encoderAppPath,

     this.encoderAppPathDisplay,

     this.vaapiDevice,

     this.qsvDevice,

     this.enableTonemapping,

     this.enableVppTonemapping,

     this.enableVideoToolboxTonemapping,

     this.tonemappingAlgorithm,

     this.tonemappingMode,

     this.tonemappingRange,

     this.tonemappingDesat,

     this.tonemappingPeak,

     this.tonemappingParam,

     this.vppTonemappingBrightness,

     this.vppTonemappingContrast,

     this.h264Crf,

     this.h265Crf,

     this.encoderPreset,

     this.deinterlaceDoubleRate,

     this.deinterlaceMethod,

     this.enableDecodingColorDepth10Hevc,

     this.enableDecodingColorDepth10Vp9,

     this.enableDecodingColorDepth10HevcRext,

     this.enableDecodingColorDepth12HevcRext,

     this.enableEnhancedNvdecDecoder,

     this.preferSystemNativeHwDecoder,

     this.enableIntelLowPowerH264HwEncoder,

     this.enableIntelLowPowerHevcHwEncoder,

     this.enableHardwareEncoding,

     this.allowHevcEncoding,

     this.allowAv1Encoding,

     this.enableSubtitleExtraction,

     this.hardwareDecodingCodecs,

     this.allowOnDemandMetadataBasedKeyframeExtractionForExtensions,
  });

      /// Gets or sets the thread count used for encoding.
  @JsonKey(
    
    name: r'EncodingThreadCount',
    required: false,
    includeIfNull: false,
  )


  final int? encodingThreadCount;



      /// Gets or sets the temporary transcoding path.
  @JsonKey(
    
    name: r'TranscodingTempPath',
    required: false,
    includeIfNull: false,
  )


  final String? transcodingTempPath;



      /// Gets or sets the path to the fallback font.
  @JsonKey(
    
    name: r'FallbackFontPath',
    required: false,
    includeIfNull: false,
  )


  final String? fallbackFontPath;



      /// Gets or sets a value indicating whether to use the fallback font.
  @JsonKey(
    
    name: r'EnableFallbackFont',
    required: false,
    includeIfNull: false,
  )


  final bool? enableFallbackFont;



      /// Gets or sets a value indicating whether audio VBR is enabled.
  @JsonKey(
    
    name: r'EnableAudioVbr',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAudioVbr;



      /// Gets or sets the audio boost applied when downmixing audio.
  @JsonKey(
    
    name: r'DownMixAudioBoost',
    required: false,
    includeIfNull: false,
  )


  final double? downMixAudioBoost;



      /// Gets or sets the algorithm used for downmixing audio to stereo.
  @JsonKey(
    
    name: r'DownMixStereoAlgorithm',
    required: false,
    includeIfNull: false,
  )


  final DownMixStereoAlgorithms? downMixStereoAlgorithm;



      /// Gets or sets the maximum size of the muxing queue.
  @JsonKey(
    
    name: r'MaxMuxingQueueSize',
    required: false,
    includeIfNull: false,
  )


  final int? maxMuxingQueueSize;



      /// Gets or sets a value indicating whether throttling is enabled.
  @JsonKey(
    
    name: r'EnableThrottling',
    required: false,
    includeIfNull: false,
  )


  final bool? enableThrottling;



      /// Gets or sets the delay after which throttling happens.
  @JsonKey(
    
    name: r'ThrottleDelaySeconds',
    required: false,
    includeIfNull: false,
  )


  final int? throttleDelaySeconds;



      /// Gets or sets a value indicating whether segment deletion is enabled.
  @JsonKey(
    
    name: r'EnableSegmentDeletion',
    required: false,
    includeIfNull: false,
  )


  final bool? enableSegmentDeletion;



      /// Gets or sets seconds for which segments should be kept before being deleted.
  @JsonKey(
    
    name: r'SegmentKeepSeconds',
    required: false,
    includeIfNull: false,
  )


  final int? segmentKeepSeconds;



      /// Gets or sets the hardware acceleration type.
  @JsonKey(
    
    name: r'HardwareAccelerationType',
    required: false,
    includeIfNull: false,
  )


  final HardwareAccelerationType? hardwareAccelerationType;



      /// Gets or sets the FFmpeg path as set by the user via the UI.
  @JsonKey(
    
    name: r'EncoderAppPath',
    required: false,
    includeIfNull: false,
  )


  final String? encoderAppPath;



      /// Gets or sets the current FFmpeg path being used by the system and displayed on the transcode page.
  @JsonKey(
    
    name: r'EncoderAppPathDisplay',
    required: false,
    includeIfNull: false,
  )


  final String? encoderAppPathDisplay;



      /// Gets or sets the VA-API device.
  @JsonKey(
    
    name: r'VaapiDevice',
    required: false,
    includeIfNull: false,
  )


  final String? vaapiDevice;



      /// Gets or sets the QSV device.
  @JsonKey(
    
    name: r'QsvDevice',
    required: false,
    includeIfNull: false,
  )


  final String? qsvDevice;



      /// Gets or sets a value indicating whether tonemapping is enabled.
  @JsonKey(
    
    name: r'EnableTonemapping',
    required: false,
    includeIfNull: false,
  )


  final bool? enableTonemapping;



      /// Gets or sets a value indicating whether VPP tonemapping is enabled.
  @JsonKey(
    
    name: r'EnableVppTonemapping',
    required: false,
    includeIfNull: false,
  )


  final bool? enableVppTonemapping;



      /// Gets or sets a value indicating whether videotoolbox tonemapping is enabled.
  @JsonKey(
    
    name: r'EnableVideoToolboxTonemapping',
    required: false,
    includeIfNull: false,
  )


  final bool? enableVideoToolboxTonemapping;



      /// Gets or sets the tone-mapping algorithm.
  @JsonKey(
    
    name: r'TonemappingAlgorithm',
    required: false,
    includeIfNull: false,
  )


  final TonemappingAlgorithm? tonemappingAlgorithm;



      /// Gets or sets the tone-mapping mode.
  @JsonKey(
    
    name: r'TonemappingMode',
    required: false,
    includeIfNull: false,
  )


  final TonemappingMode? tonemappingMode;



      /// Gets or sets the tone-mapping range.
  @JsonKey(
    
    name: r'TonemappingRange',
    required: false,
    includeIfNull: false,
  )


  final TonemappingRange? tonemappingRange;



      /// Gets or sets the tone-mapping desaturation.
  @JsonKey(
    
    name: r'TonemappingDesat',
    required: false,
    includeIfNull: false,
  )


  final double? tonemappingDesat;



      /// Gets or sets the tone-mapping peak.
  @JsonKey(
    
    name: r'TonemappingPeak',
    required: false,
    includeIfNull: false,
  )


  final double? tonemappingPeak;



      /// Gets or sets the tone-mapping parameters.
  @JsonKey(
    
    name: r'TonemappingParam',
    required: false,
    includeIfNull: false,
  )


  final double? tonemappingParam;



      /// Gets or sets the VPP tone-mapping brightness.
  @JsonKey(
    
    name: r'VppTonemappingBrightness',
    required: false,
    includeIfNull: false,
  )


  final double? vppTonemappingBrightness;



      /// Gets or sets the VPP tone-mapping contrast.
  @JsonKey(
    
    name: r'VppTonemappingContrast',
    required: false,
    includeIfNull: false,
  )


  final double? vppTonemappingContrast;



      /// Gets or sets the H264 CRF.
  @JsonKey(
    
    name: r'H264Crf',
    required: false,
    includeIfNull: false,
  )


  final int? h264Crf;



      /// Gets or sets the H265 CRF.
  @JsonKey(
    
    name: r'H265Crf',
    required: false,
    includeIfNull: false,
  )


  final int? h265Crf;



      /// Gets or sets the encoder preset.
  @JsonKey(
    
    name: r'EncoderPreset',
    required: false,
    includeIfNull: false,
  )


  final EncoderPreset? encoderPreset;



      /// Gets or sets a value indicating whether the framerate is doubled when deinterlacing.
  @JsonKey(
    
    name: r'DeinterlaceDoubleRate',
    required: false,
    includeIfNull: false,
  )


  final bool? deinterlaceDoubleRate;



      /// Gets or sets the deinterlace method.
  @JsonKey(
    
    name: r'DeinterlaceMethod',
    required: false,
    includeIfNull: false,
  )


  final DeinterlaceMethod? deinterlaceMethod;



      /// Gets or sets a value indicating whether 10bit HEVC decoding is enabled.
  @JsonKey(
    
    name: r'EnableDecodingColorDepth10Hevc',
    required: false,
    includeIfNull: false,
  )


  final bool? enableDecodingColorDepth10Hevc;



      /// Gets or sets a value indicating whether 10bit VP9 decoding is enabled.
  @JsonKey(
    
    name: r'EnableDecodingColorDepth10Vp9',
    required: false,
    includeIfNull: false,
  )


  final bool? enableDecodingColorDepth10Vp9;



      /// Gets or sets a value indicating whether 8/10bit HEVC RExt decoding is enabled.
  @JsonKey(
    
    name: r'EnableDecodingColorDepth10HevcRext',
    required: false,
    includeIfNull: false,
  )


  final bool? enableDecodingColorDepth10HevcRext;



      /// Gets or sets a value indicating whether 12bit HEVC RExt decoding is enabled.
  @JsonKey(
    
    name: r'EnableDecodingColorDepth12HevcRext',
    required: false,
    includeIfNull: false,
  )


  final bool? enableDecodingColorDepth12HevcRext;



      /// Gets or sets a value indicating whether the enhanced NVDEC is enabled.
  @JsonKey(
    
    name: r'EnableEnhancedNvdecDecoder',
    required: false,
    includeIfNull: false,
  )


  final bool? enableEnhancedNvdecDecoder;



      /// Gets or sets a value indicating whether the system native hardware decoder should be used.
  @JsonKey(
    
    name: r'PreferSystemNativeHwDecoder',
    required: false,
    includeIfNull: false,
  )


  final bool? preferSystemNativeHwDecoder;



      /// Gets or sets a value indicating whether the Intel H264 low-power hardware encoder should be used.
  @JsonKey(
    
    name: r'EnableIntelLowPowerH264HwEncoder',
    required: false,
    includeIfNull: false,
  )


  final bool? enableIntelLowPowerH264HwEncoder;



      /// Gets or sets a value indicating whether the Intel HEVC low-power hardware encoder should be used.
  @JsonKey(
    
    name: r'EnableIntelLowPowerHevcHwEncoder',
    required: false,
    includeIfNull: false,
  )


  final bool? enableIntelLowPowerHevcHwEncoder;



      /// Gets or sets a value indicating whether hardware encoding is enabled.
  @JsonKey(
    
    name: r'EnableHardwareEncoding',
    required: false,
    includeIfNull: false,
  )


  final bool? enableHardwareEncoding;



      /// Gets or sets a value indicating whether HEVC encoding is enabled.
  @JsonKey(
    
    name: r'AllowHevcEncoding',
    required: false,
    includeIfNull: false,
  )


  final bool? allowHevcEncoding;



      /// Gets or sets a value indicating whether AV1 encoding is enabled.
  @JsonKey(
    
    name: r'AllowAv1Encoding',
    required: false,
    includeIfNull: false,
  )


  final bool? allowAv1Encoding;



      /// Gets or sets a value indicating whether subtitle extraction is enabled.
  @JsonKey(
    
    name: r'EnableSubtitleExtraction',
    required: false,
    includeIfNull: false,
  )


  final bool? enableSubtitleExtraction;



      /// Gets or sets the codecs hardware encoding is used for.
  @JsonKey(
    
    name: r'HardwareDecodingCodecs',
    required: false,
    includeIfNull: false,
  )


  final List<String>? hardwareDecodingCodecs;



      /// Gets or sets the file extensions on-demand metadata based keyframe extraction is enabled for.
  @JsonKey(
    
    name: r'AllowOnDemandMetadataBasedKeyframeExtractionForExtensions',
    required: false,
    includeIfNull: false,
  )


  final List<String>? allowOnDemandMetadataBasedKeyframeExtractionForExtensions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EncodingOptions &&
      other.encodingThreadCount == encodingThreadCount &&
      other.transcodingTempPath == transcodingTempPath &&
      other.fallbackFontPath == fallbackFontPath &&
      other.enableFallbackFont == enableFallbackFont &&
      other.enableAudioVbr == enableAudioVbr &&
      other.downMixAudioBoost == downMixAudioBoost &&
      other.downMixStereoAlgorithm == downMixStereoAlgorithm &&
      other.maxMuxingQueueSize == maxMuxingQueueSize &&
      other.enableThrottling == enableThrottling &&
      other.throttleDelaySeconds == throttleDelaySeconds &&
      other.enableSegmentDeletion == enableSegmentDeletion &&
      other.segmentKeepSeconds == segmentKeepSeconds &&
      other.hardwareAccelerationType == hardwareAccelerationType &&
      other.encoderAppPath == encoderAppPath &&
      other.encoderAppPathDisplay == encoderAppPathDisplay &&
      other.vaapiDevice == vaapiDevice &&
      other.qsvDevice == qsvDevice &&
      other.enableTonemapping == enableTonemapping &&
      other.enableVppTonemapping == enableVppTonemapping &&
      other.enableVideoToolboxTonemapping == enableVideoToolboxTonemapping &&
      other.tonemappingAlgorithm == tonemappingAlgorithm &&
      other.tonemappingMode == tonemappingMode &&
      other.tonemappingRange == tonemappingRange &&
      other.tonemappingDesat == tonemappingDesat &&
      other.tonemappingPeak == tonemappingPeak &&
      other.tonemappingParam == tonemappingParam &&
      other.vppTonemappingBrightness == vppTonemappingBrightness &&
      other.vppTonemappingContrast == vppTonemappingContrast &&
      other.h264Crf == h264Crf &&
      other.h265Crf == h265Crf &&
      other.encoderPreset == encoderPreset &&
      other.deinterlaceDoubleRate == deinterlaceDoubleRate &&
      other.deinterlaceMethod == deinterlaceMethod &&
      other.enableDecodingColorDepth10Hevc == enableDecodingColorDepth10Hevc &&
      other.enableDecodingColorDepth10Vp9 == enableDecodingColorDepth10Vp9 &&
      other.enableDecodingColorDepth10HevcRext == enableDecodingColorDepth10HevcRext &&
      other.enableDecodingColorDepth12HevcRext == enableDecodingColorDepth12HevcRext &&
      other.enableEnhancedNvdecDecoder == enableEnhancedNvdecDecoder &&
      other.preferSystemNativeHwDecoder == preferSystemNativeHwDecoder &&
      other.enableIntelLowPowerH264HwEncoder == enableIntelLowPowerH264HwEncoder &&
      other.enableIntelLowPowerHevcHwEncoder == enableIntelLowPowerHevcHwEncoder &&
      other.enableHardwareEncoding == enableHardwareEncoding &&
      other.allowHevcEncoding == allowHevcEncoding &&
      other.allowAv1Encoding == allowAv1Encoding &&
      other.enableSubtitleExtraction == enableSubtitleExtraction &&
      other.hardwareDecodingCodecs == hardwareDecodingCodecs &&
      other.allowOnDemandMetadataBasedKeyframeExtractionForExtensions == allowOnDemandMetadataBasedKeyframeExtractionForExtensions;

    @override
    int get hashCode =>
        encodingThreadCount.hashCode +
        (transcodingTempPath == null ? 0 : transcodingTempPath.hashCode) +
        (fallbackFontPath == null ? 0 : fallbackFontPath.hashCode) +
        enableFallbackFont.hashCode +
        enableAudioVbr.hashCode +
        downMixAudioBoost.hashCode +
        downMixStereoAlgorithm.hashCode +
        maxMuxingQueueSize.hashCode +
        enableThrottling.hashCode +
        throttleDelaySeconds.hashCode +
        enableSegmentDeletion.hashCode +
        segmentKeepSeconds.hashCode +
        hardwareAccelerationType.hashCode +
        (encoderAppPath == null ? 0 : encoderAppPath.hashCode) +
        (encoderAppPathDisplay == null ? 0 : encoderAppPathDisplay.hashCode) +
        (vaapiDevice == null ? 0 : vaapiDevice.hashCode) +
        (qsvDevice == null ? 0 : qsvDevice.hashCode) +
        enableTonemapping.hashCode +
        enableVppTonemapping.hashCode +
        enableVideoToolboxTonemapping.hashCode +
        tonemappingAlgorithm.hashCode +
        tonemappingMode.hashCode +
        tonemappingRange.hashCode +
        tonemappingDesat.hashCode +
        tonemappingPeak.hashCode +
        tonemappingParam.hashCode +
        vppTonemappingBrightness.hashCode +
        vppTonemappingContrast.hashCode +
        h264Crf.hashCode +
        h265Crf.hashCode +
        (encoderPreset == null ? 0 : encoderPreset.hashCode) +
        deinterlaceDoubleRate.hashCode +
        deinterlaceMethod.hashCode +
        enableDecodingColorDepth10Hevc.hashCode +
        enableDecodingColorDepth10Vp9.hashCode +
        enableDecodingColorDepth10HevcRext.hashCode +
        enableDecodingColorDepth12HevcRext.hashCode +
        enableEnhancedNvdecDecoder.hashCode +
        preferSystemNativeHwDecoder.hashCode +
        enableIntelLowPowerH264HwEncoder.hashCode +
        enableIntelLowPowerHevcHwEncoder.hashCode +
        enableHardwareEncoding.hashCode +
        allowHevcEncoding.hashCode +
        allowAv1Encoding.hashCode +
        enableSubtitleExtraction.hashCode +
        (hardwareDecodingCodecs == null ? 0 : hardwareDecodingCodecs.hashCode) +
        (allowOnDemandMetadataBasedKeyframeExtractionForExtensions == null ? 0 : allowOnDemandMetadataBasedKeyframeExtractionForExtensions.hashCode);

  factory EncodingOptions.fromJson(Map<String, dynamic> json) => _$EncodingOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$EncodingOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

