// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encoding_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EncodingOptionsCWProxy {
  EncodingOptions encodingThreadCount(int? encodingThreadCount);

  EncodingOptions transcodingTempPath(String? transcodingTempPath);

  EncodingOptions fallbackFontPath(String? fallbackFontPath);

  EncodingOptions enableFallbackFont(bool? enableFallbackFont);

  EncodingOptions enableAudioVbr(bool? enableAudioVbr);

  EncodingOptions downMixAudioBoost(double? downMixAudioBoost);

  EncodingOptions downMixStereoAlgorithm(
    DownMixStereoAlgorithms? downMixStereoAlgorithm,
  );

  EncodingOptions maxMuxingQueueSize(int? maxMuxingQueueSize);

  EncodingOptions enableThrottling(bool? enableThrottling);

  EncodingOptions throttleDelaySeconds(int? throttleDelaySeconds);

  EncodingOptions enableSegmentDeletion(bool? enableSegmentDeletion);

  EncodingOptions segmentKeepSeconds(int? segmentKeepSeconds);

  EncodingOptions hardwareAccelerationType(
    HardwareAccelerationType? hardwareAccelerationType,
  );

  EncodingOptions encoderAppPath(String? encoderAppPath);

  EncodingOptions encoderAppPathDisplay(String? encoderAppPathDisplay);

  EncodingOptions vaapiDevice(String? vaapiDevice);

  EncodingOptions qsvDevice(String? qsvDevice);

  EncodingOptions enableTonemapping(bool? enableTonemapping);

  EncodingOptions enableVppTonemapping(bool? enableVppTonemapping);

  EncodingOptions enableVideoToolboxTonemapping(
    bool? enableVideoToolboxTonemapping,
  );

  EncodingOptions tonemappingAlgorithm(
    TonemappingAlgorithm? tonemappingAlgorithm,
  );

  EncodingOptions tonemappingMode(TonemappingMode? tonemappingMode);

  EncodingOptions tonemappingRange(TonemappingRange? tonemappingRange);

  EncodingOptions tonemappingDesat(double? tonemappingDesat);

  EncodingOptions tonemappingPeak(double? tonemappingPeak);

  EncodingOptions tonemappingParam(double? tonemappingParam);

  EncodingOptions vppTonemappingBrightness(double? vppTonemappingBrightness);

  EncodingOptions vppTonemappingContrast(double? vppTonemappingContrast);

  EncodingOptions h264Crf(int? h264Crf);

  EncodingOptions h265Crf(int? h265Crf);

  EncodingOptions encoderPreset(EncoderPreset? encoderPreset);

  EncodingOptions deinterlaceDoubleRate(bool? deinterlaceDoubleRate);

  EncodingOptions deinterlaceMethod(DeinterlaceMethod? deinterlaceMethod);

  EncodingOptions enableDecodingColorDepth10Hevc(
    bool? enableDecodingColorDepth10Hevc,
  );

  EncodingOptions enableDecodingColorDepth10Vp9(
    bool? enableDecodingColorDepth10Vp9,
  );

  EncodingOptions enableDecodingColorDepth10HevcRext(
    bool? enableDecodingColorDepth10HevcRext,
  );

  EncodingOptions enableDecodingColorDepth12HevcRext(
    bool? enableDecodingColorDepth12HevcRext,
  );

  EncodingOptions enableEnhancedNvdecDecoder(bool? enableEnhancedNvdecDecoder);

  EncodingOptions preferSystemNativeHwDecoder(
    bool? preferSystemNativeHwDecoder,
  );

  EncodingOptions enableIntelLowPowerH264HwEncoder(
    bool? enableIntelLowPowerH264HwEncoder,
  );

  EncodingOptions enableIntelLowPowerHevcHwEncoder(
    bool? enableIntelLowPowerHevcHwEncoder,
  );

  EncodingOptions enableHardwareEncoding(bool? enableHardwareEncoding);

  EncodingOptions allowHevcEncoding(bool? allowHevcEncoding);

  EncodingOptions allowAv1Encoding(bool? allowAv1Encoding);

  EncodingOptions enableSubtitleExtraction(bool? enableSubtitleExtraction);

  EncodingOptions hardwareDecodingCodecs(List<String>? hardwareDecodingCodecs);

  EncodingOptions allowOnDemandMetadataBasedKeyframeExtractionForExtensions(
    List<String>? allowOnDemandMetadataBasedKeyframeExtractionForExtensions,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EncodingOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EncodingOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  EncodingOptions call({
    int? encodingThreadCount,
    String? transcodingTempPath,
    String? fallbackFontPath,
    bool? enableFallbackFont,
    bool? enableAudioVbr,
    double? downMixAudioBoost,
    DownMixStereoAlgorithms? downMixStereoAlgorithm,
    int? maxMuxingQueueSize,
    bool? enableThrottling,
    int? throttleDelaySeconds,
    bool? enableSegmentDeletion,
    int? segmentKeepSeconds,
    HardwareAccelerationType? hardwareAccelerationType,
    String? encoderAppPath,
    String? encoderAppPathDisplay,
    String? vaapiDevice,
    String? qsvDevice,
    bool? enableTonemapping,
    bool? enableVppTonemapping,
    bool? enableVideoToolboxTonemapping,
    TonemappingAlgorithm? tonemappingAlgorithm,
    TonemappingMode? tonemappingMode,
    TonemappingRange? tonemappingRange,
    double? tonemappingDesat,
    double? tonemappingPeak,
    double? tonemappingParam,
    double? vppTonemappingBrightness,
    double? vppTonemappingContrast,
    int? h264Crf,
    int? h265Crf,
    EncoderPreset? encoderPreset,
    bool? deinterlaceDoubleRate,
    DeinterlaceMethod? deinterlaceMethod,
    bool? enableDecodingColorDepth10Hevc,
    bool? enableDecodingColorDepth10Vp9,
    bool? enableDecodingColorDepth10HevcRext,
    bool? enableDecodingColorDepth12HevcRext,
    bool? enableEnhancedNvdecDecoder,
    bool? preferSystemNativeHwDecoder,
    bool? enableIntelLowPowerH264HwEncoder,
    bool? enableIntelLowPowerHevcHwEncoder,
    bool? enableHardwareEncoding,
    bool? allowHevcEncoding,
    bool? allowAv1Encoding,
    bool? enableSubtitleExtraction,
    List<String>? hardwareDecodingCodecs,
    List<String>? allowOnDemandMetadataBasedKeyframeExtractionForExtensions,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEncodingOptions.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEncodingOptions.copyWith.fieldName(...)`
class _$EncodingOptionsCWProxyImpl implements _$EncodingOptionsCWProxy {
  const _$EncodingOptionsCWProxyImpl(this._value);

  final EncodingOptions _value;

  @override
  EncodingOptions encodingThreadCount(int? encodingThreadCount) =>
      this(encodingThreadCount: encodingThreadCount);

  @override
  EncodingOptions transcodingTempPath(String? transcodingTempPath) =>
      this(transcodingTempPath: transcodingTempPath);

  @override
  EncodingOptions fallbackFontPath(String? fallbackFontPath) =>
      this(fallbackFontPath: fallbackFontPath);

  @override
  EncodingOptions enableFallbackFont(bool? enableFallbackFont) =>
      this(enableFallbackFont: enableFallbackFont);

  @override
  EncodingOptions enableAudioVbr(bool? enableAudioVbr) =>
      this(enableAudioVbr: enableAudioVbr);

  @override
  EncodingOptions downMixAudioBoost(double? downMixAudioBoost) =>
      this(downMixAudioBoost: downMixAudioBoost);

  @override
  EncodingOptions downMixStereoAlgorithm(
    DownMixStereoAlgorithms? downMixStereoAlgorithm,
  ) => this(downMixStereoAlgorithm: downMixStereoAlgorithm);

  @override
  EncodingOptions maxMuxingQueueSize(int? maxMuxingQueueSize) =>
      this(maxMuxingQueueSize: maxMuxingQueueSize);

  @override
  EncodingOptions enableThrottling(bool? enableThrottling) =>
      this(enableThrottling: enableThrottling);

  @override
  EncodingOptions throttleDelaySeconds(int? throttleDelaySeconds) =>
      this(throttleDelaySeconds: throttleDelaySeconds);

  @override
  EncodingOptions enableSegmentDeletion(bool? enableSegmentDeletion) =>
      this(enableSegmentDeletion: enableSegmentDeletion);

  @override
  EncodingOptions segmentKeepSeconds(int? segmentKeepSeconds) =>
      this(segmentKeepSeconds: segmentKeepSeconds);

  @override
  EncodingOptions hardwareAccelerationType(
    HardwareAccelerationType? hardwareAccelerationType,
  ) => this(hardwareAccelerationType: hardwareAccelerationType);

  @override
  EncodingOptions encoderAppPath(String? encoderAppPath) =>
      this(encoderAppPath: encoderAppPath);

  @override
  EncodingOptions encoderAppPathDisplay(String? encoderAppPathDisplay) =>
      this(encoderAppPathDisplay: encoderAppPathDisplay);

  @override
  EncodingOptions vaapiDevice(String? vaapiDevice) =>
      this(vaapiDevice: vaapiDevice);

  @override
  EncodingOptions qsvDevice(String? qsvDevice) => this(qsvDevice: qsvDevice);

  @override
  EncodingOptions enableTonemapping(bool? enableTonemapping) =>
      this(enableTonemapping: enableTonemapping);

  @override
  EncodingOptions enableVppTonemapping(bool? enableVppTonemapping) =>
      this(enableVppTonemapping: enableVppTonemapping);

  @override
  EncodingOptions enableVideoToolboxTonemapping(
    bool? enableVideoToolboxTonemapping,
  ) => this(enableVideoToolboxTonemapping: enableVideoToolboxTonemapping);

  @override
  EncodingOptions tonemappingAlgorithm(
    TonemappingAlgorithm? tonemappingAlgorithm,
  ) => this(tonemappingAlgorithm: tonemappingAlgorithm);

  @override
  EncodingOptions tonemappingMode(TonemappingMode? tonemappingMode) =>
      this(tonemappingMode: tonemappingMode);

  @override
  EncodingOptions tonemappingRange(TonemappingRange? tonemappingRange) =>
      this(tonemappingRange: tonemappingRange);

  @override
  EncodingOptions tonemappingDesat(double? tonemappingDesat) =>
      this(tonemappingDesat: tonemappingDesat);

  @override
  EncodingOptions tonemappingPeak(double? tonemappingPeak) =>
      this(tonemappingPeak: tonemappingPeak);

  @override
  EncodingOptions tonemappingParam(double? tonemappingParam) =>
      this(tonemappingParam: tonemappingParam);

  @override
  EncodingOptions vppTonemappingBrightness(double? vppTonemappingBrightness) =>
      this(vppTonemappingBrightness: vppTonemappingBrightness);

  @override
  EncodingOptions vppTonemappingContrast(double? vppTonemappingContrast) =>
      this(vppTonemappingContrast: vppTonemappingContrast);

  @override
  EncodingOptions h264Crf(int? h264Crf) => this(h264Crf: h264Crf);

  @override
  EncodingOptions h265Crf(int? h265Crf) => this(h265Crf: h265Crf);

  @override
  EncodingOptions encoderPreset(EncoderPreset? encoderPreset) =>
      this(encoderPreset: encoderPreset);

  @override
  EncodingOptions deinterlaceDoubleRate(bool? deinterlaceDoubleRate) =>
      this(deinterlaceDoubleRate: deinterlaceDoubleRate);

  @override
  EncodingOptions deinterlaceMethod(DeinterlaceMethod? deinterlaceMethod) =>
      this(deinterlaceMethod: deinterlaceMethod);

  @override
  EncodingOptions enableDecodingColorDepth10Hevc(
    bool? enableDecodingColorDepth10Hevc,
  ) => this(enableDecodingColorDepth10Hevc: enableDecodingColorDepth10Hevc);

  @override
  EncodingOptions enableDecodingColorDepth10Vp9(
    bool? enableDecodingColorDepth10Vp9,
  ) => this(enableDecodingColorDepth10Vp9: enableDecodingColorDepth10Vp9);

  @override
  EncodingOptions enableDecodingColorDepth10HevcRext(
    bool? enableDecodingColorDepth10HevcRext,
  ) => this(
    enableDecodingColorDepth10HevcRext: enableDecodingColorDepth10HevcRext,
  );

  @override
  EncodingOptions enableDecodingColorDepth12HevcRext(
    bool? enableDecodingColorDepth12HevcRext,
  ) => this(
    enableDecodingColorDepth12HevcRext: enableDecodingColorDepth12HevcRext,
  );

  @override
  EncodingOptions enableEnhancedNvdecDecoder(
    bool? enableEnhancedNvdecDecoder,
  ) => this(enableEnhancedNvdecDecoder: enableEnhancedNvdecDecoder);

  @override
  EncodingOptions preferSystemNativeHwDecoder(
    bool? preferSystemNativeHwDecoder,
  ) => this(preferSystemNativeHwDecoder: preferSystemNativeHwDecoder);

  @override
  EncodingOptions enableIntelLowPowerH264HwEncoder(
    bool? enableIntelLowPowerH264HwEncoder,
  ) => this(enableIntelLowPowerH264HwEncoder: enableIntelLowPowerH264HwEncoder);

  @override
  EncodingOptions enableIntelLowPowerHevcHwEncoder(
    bool? enableIntelLowPowerHevcHwEncoder,
  ) => this(enableIntelLowPowerHevcHwEncoder: enableIntelLowPowerHevcHwEncoder);

  @override
  EncodingOptions enableHardwareEncoding(bool? enableHardwareEncoding) =>
      this(enableHardwareEncoding: enableHardwareEncoding);

  @override
  EncodingOptions allowHevcEncoding(bool? allowHevcEncoding) =>
      this(allowHevcEncoding: allowHevcEncoding);

  @override
  EncodingOptions allowAv1Encoding(bool? allowAv1Encoding) =>
      this(allowAv1Encoding: allowAv1Encoding);

  @override
  EncodingOptions enableSubtitleExtraction(bool? enableSubtitleExtraction) =>
      this(enableSubtitleExtraction: enableSubtitleExtraction);

  @override
  EncodingOptions hardwareDecodingCodecs(
    List<String>? hardwareDecodingCodecs,
  ) => this(hardwareDecodingCodecs: hardwareDecodingCodecs);

  @override
  EncodingOptions allowOnDemandMetadataBasedKeyframeExtractionForExtensions(
    List<String>? allowOnDemandMetadataBasedKeyframeExtractionForExtensions,
  ) => this(
    allowOnDemandMetadataBasedKeyframeExtractionForExtensions:
        allowOnDemandMetadataBasedKeyframeExtractionForExtensions,
  );

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EncodingOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EncodingOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  EncodingOptions call({
    Object? encodingThreadCount = const $CopyWithPlaceholder(),
    Object? transcodingTempPath = const $CopyWithPlaceholder(),
    Object? fallbackFontPath = const $CopyWithPlaceholder(),
    Object? enableFallbackFont = const $CopyWithPlaceholder(),
    Object? enableAudioVbr = const $CopyWithPlaceholder(),
    Object? downMixAudioBoost = const $CopyWithPlaceholder(),
    Object? downMixStereoAlgorithm = const $CopyWithPlaceholder(),
    Object? maxMuxingQueueSize = const $CopyWithPlaceholder(),
    Object? enableThrottling = const $CopyWithPlaceholder(),
    Object? throttleDelaySeconds = const $CopyWithPlaceholder(),
    Object? enableSegmentDeletion = const $CopyWithPlaceholder(),
    Object? segmentKeepSeconds = const $CopyWithPlaceholder(),
    Object? hardwareAccelerationType = const $CopyWithPlaceholder(),
    Object? encoderAppPath = const $CopyWithPlaceholder(),
    Object? encoderAppPathDisplay = const $CopyWithPlaceholder(),
    Object? vaapiDevice = const $CopyWithPlaceholder(),
    Object? qsvDevice = const $CopyWithPlaceholder(),
    Object? enableTonemapping = const $CopyWithPlaceholder(),
    Object? enableVppTonemapping = const $CopyWithPlaceholder(),
    Object? enableVideoToolboxTonemapping = const $CopyWithPlaceholder(),
    Object? tonemappingAlgorithm = const $CopyWithPlaceholder(),
    Object? tonemappingMode = const $CopyWithPlaceholder(),
    Object? tonemappingRange = const $CopyWithPlaceholder(),
    Object? tonemappingDesat = const $CopyWithPlaceholder(),
    Object? tonemappingPeak = const $CopyWithPlaceholder(),
    Object? tonemappingParam = const $CopyWithPlaceholder(),
    Object? vppTonemappingBrightness = const $CopyWithPlaceholder(),
    Object? vppTonemappingContrast = const $CopyWithPlaceholder(),
    Object? h264Crf = const $CopyWithPlaceholder(),
    Object? h265Crf = const $CopyWithPlaceholder(),
    Object? encoderPreset = const $CopyWithPlaceholder(),
    Object? deinterlaceDoubleRate = const $CopyWithPlaceholder(),
    Object? deinterlaceMethod = const $CopyWithPlaceholder(),
    Object? enableDecodingColorDepth10Hevc = const $CopyWithPlaceholder(),
    Object? enableDecodingColorDepth10Vp9 = const $CopyWithPlaceholder(),
    Object? enableDecodingColorDepth10HevcRext = const $CopyWithPlaceholder(),
    Object? enableDecodingColorDepth12HevcRext = const $CopyWithPlaceholder(),
    Object? enableEnhancedNvdecDecoder = const $CopyWithPlaceholder(),
    Object? preferSystemNativeHwDecoder = const $CopyWithPlaceholder(),
    Object? enableIntelLowPowerH264HwEncoder = const $CopyWithPlaceholder(),
    Object? enableIntelLowPowerHevcHwEncoder = const $CopyWithPlaceholder(),
    Object? enableHardwareEncoding = const $CopyWithPlaceholder(),
    Object? allowHevcEncoding = const $CopyWithPlaceholder(),
    Object? allowAv1Encoding = const $CopyWithPlaceholder(),
    Object? enableSubtitleExtraction = const $CopyWithPlaceholder(),
    Object? hardwareDecodingCodecs = const $CopyWithPlaceholder(),
    Object? allowOnDemandMetadataBasedKeyframeExtractionForExtensions =
        const $CopyWithPlaceholder(),
  }) {
    return EncodingOptions(
      encodingThreadCount: encodingThreadCount == const $CopyWithPlaceholder()
          ? _value.encodingThreadCount
          // ignore: cast_nullable_to_non_nullable
          : encodingThreadCount as int?,
      transcodingTempPath: transcodingTempPath == const $CopyWithPlaceholder()
          ? _value.transcodingTempPath
          // ignore: cast_nullable_to_non_nullable
          : transcodingTempPath as String?,
      fallbackFontPath: fallbackFontPath == const $CopyWithPlaceholder()
          ? _value.fallbackFontPath
          // ignore: cast_nullable_to_non_nullable
          : fallbackFontPath as String?,
      enableFallbackFont: enableFallbackFont == const $CopyWithPlaceholder()
          ? _value.enableFallbackFont
          // ignore: cast_nullable_to_non_nullable
          : enableFallbackFont as bool?,
      enableAudioVbr: enableAudioVbr == const $CopyWithPlaceholder()
          ? _value.enableAudioVbr
          // ignore: cast_nullable_to_non_nullable
          : enableAudioVbr as bool?,
      downMixAudioBoost: downMixAudioBoost == const $CopyWithPlaceholder()
          ? _value.downMixAudioBoost
          // ignore: cast_nullable_to_non_nullable
          : downMixAudioBoost as double?,
      downMixStereoAlgorithm:
          downMixStereoAlgorithm == const $CopyWithPlaceholder()
          ? _value.downMixStereoAlgorithm
          // ignore: cast_nullable_to_non_nullable
          : downMixStereoAlgorithm as DownMixStereoAlgorithms?,
      maxMuxingQueueSize: maxMuxingQueueSize == const $CopyWithPlaceholder()
          ? _value.maxMuxingQueueSize
          // ignore: cast_nullable_to_non_nullable
          : maxMuxingQueueSize as int?,
      enableThrottling: enableThrottling == const $CopyWithPlaceholder()
          ? _value.enableThrottling
          // ignore: cast_nullable_to_non_nullable
          : enableThrottling as bool?,
      throttleDelaySeconds: throttleDelaySeconds == const $CopyWithPlaceholder()
          ? _value.throttleDelaySeconds
          // ignore: cast_nullable_to_non_nullable
          : throttleDelaySeconds as int?,
      enableSegmentDeletion:
          enableSegmentDeletion == const $CopyWithPlaceholder()
          ? _value.enableSegmentDeletion
          // ignore: cast_nullable_to_non_nullable
          : enableSegmentDeletion as bool?,
      segmentKeepSeconds: segmentKeepSeconds == const $CopyWithPlaceholder()
          ? _value.segmentKeepSeconds
          // ignore: cast_nullable_to_non_nullable
          : segmentKeepSeconds as int?,
      hardwareAccelerationType:
          hardwareAccelerationType == const $CopyWithPlaceholder()
          ? _value.hardwareAccelerationType
          // ignore: cast_nullable_to_non_nullable
          : hardwareAccelerationType as HardwareAccelerationType?,
      encoderAppPath: encoderAppPath == const $CopyWithPlaceholder()
          ? _value.encoderAppPath
          // ignore: cast_nullable_to_non_nullable
          : encoderAppPath as String?,
      encoderAppPathDisplay:
          encoderAppPathDisplay == const $CopyWithPlaceholder()
          ? _value.encoderAppPathDisplay
          // ignore: cast_nullable_to_non_nullable
          : encoderAppPathDisplay as String?,
      vaapiDevice: vaapiDevice == const $CopyWithPlaceholder()
          ? _value.vaapiDevice
          // ignore: cast_nullable_to_non_nullable
          : vaapiDevice as String?,
      qsvDevice: qsvDevice == const $CopyWithPlaceholder()
          ? _value.qsvDevice
          // ignore: cast_nullable_to_non_nullable
          : qsvDevice as String?,
      enableTonemapping: enableTonemapping == const $CopyWithPlaceholder()
          ? _value.enableTonemapping
          // ignore: cast_nullable_to_non_nullable
          : enableTonemapping as bool?,
      enableVppTonemapping: enableVppTonemapping == const $CopyWithPlaceholder()
          ? _value.enableVppTonemapping
          // ignore: cast_nullable_to_non_nullable
          : enableVppTonemapping as bool?,
      enableVideoToolboxTonemapping:
          enableVideoToolboxTonemapping == const $CopyWithPlaceholder()
          ? _value.enableVideoToolboxTonemapping
          // ignore: cast_nullable_to_non_nullable
          : enableVideoToolboxTonemapping as bool?,
      tonemappingAlgorithm: tonemappingAlgorithm == const $CopyWithPlaceholder()
          ? _value.tonemappingAlgorithm
          // ignore: cast_nullable_to_non_nullable
          : tonemappingAlgorithm as TonemappingAlgorithm?,
      tonemappingMode: tonemappingMode == const $CopyWithPlaceholder()
          ? _value.tonemappingMode
          // ignore: cast_nullable_to_non_nullable
          : tonemappingMode as TonemappingMode?,
      tonemappingRange: tonemappingRange == const $CopyWithPlaceholder()
          ? _value.tonemappingRange
          // ignore: cast_nullable_to_non_nullable
          : tonemappingRange as TonemappingRange?,
      tonemappingDesat: tonemappingDesat == const $CopyWithPlaceholder()
          ? _value.tonemappingDesat
          // ignore: cast_nullable_to_non_nullable
          : tonemappingDesat as double?,
      tonemappingPeak: tonemappingPeak == const $CopyWithPlaceholder()
          ? _value.tonemappingPeak
          // ignore: cast_nullable_to_non_nullable
          : tonemappingPeak as double?,
      tonemappingParam: tonemappingParam == const $CopyWithPlaceholder()
          ? _value.tonemappingParam
          // ignore: cast_nullable_to_non_nullable
          : tonemappingParam as double?,
      vppTonemappingBrightness:
          vppTonemappingBrightness == const $CopyWithPlaceholder()
          ? _value.vppTonemappingBrightness
          // ignore: cast_nullable_to_non_nullable
          : vppTonemappingBrightness as double?,
      vppTonemappingContrast:
          vppTonemappingContrast == const $CopyWithPlaceholder()
          ? _value.vppTonemappingContrast
          // ignore: cast_nullable_to_non_nullable
          : vppTonemappingContrast as double?,
      h264Crf: h264Crf == const $CopyWithPlaceholder()
          ? _value.h264Crf
          // ignore: cast_nullable_to_non_nullable
          : h264Crf as int?,
      h265Crf: h265Crf == const $CopyWithPlaceholder()
          ? _value.h265Crf
          // ignore: cast_nullable_to_non_nullable
          : h265Crf as int?,
      encoderPreset: encoderPreset == const $CopyWithPlaceholder()
          ? _value.encoderPreset
          // ignore: cast_nullable_to_non_nullable
          : encoderPreset as EncoderPreset?,
      deinterlaceDoubleRate:
          deinterlaceDoubleRate == const $CopyWithPlaceholder()
          ? _value.deinterlaceDoubleRate
          // ignore: cast_nullable_to_non_nullable
          : deinterlaceDoubleRate as bool?,
      deinterlaceMethod: deinterlaceMethod == const $CopyWithPlaceholder()
          ? _value.deinterlaceMethod
          // ignore: cast_nullable_to_non_nullable
          : deinterlaceMethod as DeinterlaceMethod?,
      enableDecodingColorDepth10Hevc:
          enableDecodingColorDepth10Hevc == const $CopyWithPlaceholder()
          ? _value.enableDecodingColorDepth10Hevc
          // ignore: cast_nullable_to_non_nullable
          : enableDecodingColorDepth10Hevc as bool?,
      enableDecodingColorDepth10Vp9:
          enableDecodingColorDepth10Vp9 == const $CopyWithPlaceholder()
          ? _value.enableDecodingColorDepth10Vp9
          // ignore: cast_nullable_to_non_nullable
          : enableDecodingColorDepth10Vp9 as bool?,
      enableDecodingColorDepth10HevcRext:
          enableDecodingColorDepth10HevcRext == const $CopyWithPlaceholder()
          ? _value.enableDecodingColorDepth10HevcRext
          // ignore: cast_nullable_to_non_nullable
          : enableDecodingColorDepth10HevcRext as bool?,
      enableDecodingColorDepth12HevcRext:
          enableDecodingColorDepth12HevcRext == const $CopyWithPlaceholder()
          ? _value.enableDecodingColorDepth12HevcRext
          // ignore: cast_nullable_to_non_nullable
          : enableDecodingColorDepth12HevcRext as bool?,
      enableEnhancedNvdecDecoder:
          enableEnhancedNvdecDecoder == const $CopyWithPlaceholder()
          ? _value.enableEnhancedNvdecDecoder
          // ignore: cast_nullable_to_non_nullable
          : enableEnhancedNvdecDecoder as bool?,
      preferSystemNativeHwDecoder:
          preferSystemNativeHwDecoder == const $CopyWithPlaceholder()
          ? _value.preferSystemNativeHwDecoder
          // ignore: cast_nullable_to_non_nullable
          : preferSystemNativeHwDecoder as bool?,
      enableIntelLowPowerH264HwEncoder:
          enableIntelLowPowerH264HwEncoder == const $CopyWithPlaceholder()
          ? _value.enableIntelLowPowerH264HwEncoder
          // ignore: cast_nullable_to_non_nullable
          : enableIntelLowPowerH264HwEncoder as bool?,
      enableIntelLowPowerHevcHwEncoder:
          enableIntelLowPowerHevcHwEncoder == const $CopyWithPlaceholder()
          ? _value.enableIntelLowPowerHevcHwEncoder
          // ignore: cast_nullable_to_non_nullable
          : enableIntelLowPowerHevcHwEncoder as bool?,
      enableHardwareEncoding:
          enableHardwareEncoding == const $CopyWithPlaceholder()
          ? _value.enableHardwareEncoding
          // ignore: cast_nullable_to_non_nullable
          : enableHardwareEncoding as bool?,
      allowHevcEncoding: allowHevcEncoding == const $CopyWithPlaceholder()
          ? _value.allowHevcEncoding
          // ignore: cast_nullable_to_non_nullable
          : allowHevcEncoding as bool?,
      allowAv1Encoding: allowAv1Encoding == const $CopyWithPlaceholder()
          ? _value.allowAv1Encoding
          // ignore: cast_nullable_to_non_nullable
          : allowAv1Encoding as bool?,
      enableSubtitleExtraction:
          enableSubtitleExtraction == const $CopyWithPlaceholder()
          ? _value.enableSubtitleExtraction
          // ignore: cast_nullable_to_non_nullable
          : enableSubtitleExtraction as bool?,
      hardwareDecodingCodecs:
          hardwareDecodingCodecs == const $CopyWithPlaceholder()
          ? _value.hardwareDecodingCodecs
          // ignore: cast_nullable_to_non_nullable
          : hardwareDecodingCodecs as List<String>?,
      allowOnDemandMetadataBasedKeyframeExtractionForExtensions:
          allowOnDemandMetadataBasedKeyframeExtractionForExtensions ==
              const $CopyWithPlaceholder()
          ? _value.allowOnDemandMetadataBasedKeyframeExtractionForExtensions
          // ignore: cast_nullable_to_non_nullable
          : allowOnDemandMetadataBasedKeyframeExtractionForExtensions
                as List<String>?,
    );
  }
}

extension $EncodingOptionsCopyWith on EncodingOptions {
  /// Returns a callable class that can be used as follows: `instanceOfEncodingOptions.copyWith(...)` or like so:`instanceOfEncodingOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EncodingOptionsCWProxy get copyWith => _$EncodingOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncodingOptions _$EncodingOptionsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'EncodingOptions',
  json,
  ($checkedConvert) {
    final val = EncodingOptions(
      encodingThreadCount: $checkedConvert(
        'EncodingThreadCount',
        (v) => (v as num?)?.toInt(),
      ),
      transcodingTempPath: $checkedConvert(
        'TranscodingTempPath',
        (v) => v as String?,
      ),
      fallbackFontPath: $checkedConvert(
        'FallbackFontPath',
        (v) => v as String?,
      ),
      enableFallbackFont: $checkedConvert(
        'EnableFallbackFont',
        (v) => v as bool?,
      ),
      enableAudioVbr: $checkedConvert('EnableAudioVbr', (v) => v as bool?),
      downMixAudioBoost: $checkedConvert(
        'DownMixAudioBoost',
        (v) => (v as num?)?.toDouble(),
      ),
      downMixStereoAlgorithm: $checkedConvert(
        'DownMixStereoAlgorithm',
        (v) => $enumDecodeNullable(_$DownMixStereoAlgorithmsEnumMap, v),
      ),
      maxMuxingQueueSize: $checkedConvert(
        'MaxMuxingQueueSize',
        (v) => (v as num?)?.toInt(),
      ),
      enableThrottling: $checkedConvert('EnableThrottling', (v) => v as bool?),
      throttleDelaySeconds: $checkedConvert(
        'ThrottleDelaySeconds',
        (v) => (v as num?)?.toInt(),
      ),
      enableSegmentDeletion: $checkedConvert(
        'EnableSegmentDeletion',
        (v) => v as bool?,
      ),
      segmentKeepSeconds: $checkedConvert(
        'SegmentKeepSeconds',
        (v) => (v as num?)?.toInt(),
      ),
      hardwareAccelerationType: $checkedConvert(
        'HardwareAccelerationType',
        (v) => $enumDecodeNullable(_$HardwareAccelerationTypeEnumMap, v),
      ),
      encoderAppPath: $checkedConvert('EncoderAppPath', (v) => v as String?),
      encoderAppPathDisplay: $checkedConvert(
        'EncoderAppPathDisplay',
        (v) => v as String?,
      ),
      vaapiDevice: $checkedConvert('VaapiDevice', (v) => v as String?),
      qsvDevice: $checkedConvert('QsvDevice', (v) => v as String?),
      enableTonemapping: $checkedConvert(
        'EnableTonemapping',
        (v) => v as bool?,
      ),
      enableVppTonemapping: $checkedConvert(
        'EnableVppTonemapping',
        (v) => v as bool?,
      ),
      enableVideoToolboxTonemapping: $checkedConvert(
        'EnableVideoToolboxTonemapping',
        (v) => v as bool?,
      ),
      tonemappingAlgorithm: $checkedConvert(
        'TonemappingAlgorithm',
        (v) => $enumDecodeNullable(_$TonemappingAlgorithmEnumMap, v),
      ),
      tonemappingMode: $checkedConvert(
        'TonemappingMode',
        (v) => $enumDecodeNullable(_$TonemappingModeEnumMap, v),
      ),
      tonemappingRange: $checkedConvert(
        'TonemappingRange',
        (v) => $enumDecodeNullable(_$TonemappingRangeEnumMap, v),
      ),
      tonemappingDesat: $checkedConvert(
        'TonemappingDesat',
        (v) => (v as num?)?.toDouble(),
      ),
      tonemappingPeak: $checkedConvert(
        'TonemappingPeak',
        (v) => (v as num?)?.toDouble(),
      ),
      tonemappingParam: $checkedConvert(
        'TonemappingParam',
        (v) => (v as num?)?.toDouble(),
      ),
      vppTonemappingBrightness: $checkedConvert(
        'VppTonemappingBrightness',
        (v) => (v as num?)?.toDouble(),
      ),
      vppTonemappingContrast: $checkedConvert(
        'VppTonemappingContrast',
        (v) => (v as num?)?.toDouble(),
      ),
      h264Crf: $checkedConvert('H264Crf', (v) => (v as num?)?.toInt()),
      h265Crf: $checkedConvert('H265Crf', (v) => (v as num?)?.toInt()),
      encoderPreset: $checkedConvert(
        'EncoderPreset',
        (v) => $enumDecodeNullable(_$EncoderPresetEnumMap, v),
      ),
      deinterlaceDoubleRate: $checkedConvert(
        'DeinterlaceDoubleRate',
        (v) => v as bool?,
      ),
      deinterlaceMethod: $checkedConvert(
        'DeinterlaceMethod',
        (v) => $enumDecodeNullable(_$DeinterlaceMethodEnumMap, v),
      ),
      enableDecodingColorDepth10Hevc: $checkedConvert(
        'EnableDecodingColorDepth10Hevc',
        (v) => v as bool?,
      ),
      enableDecodingColorDepth10Vp9: $checkedConvert(
        'EnableDecodingColorDepth10Vp9',
        (v) => v as bool?,
      ),
      enableDecodingColorDepth10HevcRext: $checkedConvert(
        'EnableDecodingColorDepth10HevcRext',
        (v) => v as bool?,
      ),
      enableDecodingColorDepth12HevcRext: $checkedConvert(
        'EnableDecodingColorDepth12HevcRext',
        (v) => v as bool?,
      ),
      enableEnhancedNvdecDecoder: $checkedConvert(
        'EnableEnhancedNvdecDecoder',
        (v) => v as bool?,
      ),
      preferSystemNativeHwDecoder: $checkedConvert(
        'PreferSystemNativeHwDecoder',
        (v) => v as bool?,
      ),
      enableIntelLowPowerH264HwEncoder: $checkedConvert(
        'EnableIntelLowPowerH264HwEncoder',
        (v) => v as bool?,
      ),
      enableIntelLowPowerHevcHwEncoder: $checkedConvert(
        'EnableIntelLowPowerHevcHwEncoder',
        (v) => v as bool?,
      ),
      enableHardwareEncoding: $checkedConvert(
        'EnableHardwareEncoding',
        (v) => v as bool?,
      ),
      allowHevcEncoding: $checkedConvert(
        'AllowHevcEncoding',
        (v) => v as bool?,
      ),
      allowAv1Encoding: $checkedConvert('AllowAv1Encoding', (v) => v as bool?),
      enableSubtitleExtraction: $checkedConvert(
        'EnableSubtitleExtraction',
        (v) => v as bool?,
      ),
      hardwareDecodingCodecs: $checkedConvert(
        'HardwareDecodingCodecs',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      allowOnDemandMetadataBasedKeyframeExtractionForExtensions:
          $checkedConvert(
            'AllowOnDemandMetadataBasedKeyframeExtractionForExtensions',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
    );
    return val;
  },
  fieldKeyMap: const {
    'encodingThreadCount': 'EncodingThreadCount',
    'transcodingTempPath': 'TranscodingTempPath',
    'fallbackFontPath': 'FallbackFontPath',
    'enableFallbackFont': 'EnableFallbackFont',
    'enableAudioVbr': 'EnableAudioVbr',
    'downMixAudioBoost': 'DownMixAudioBoost',
    'downMixStereoAlgorithm': 'DownMixStereoAlgorithm',
    'maxMuxingQueueSize': 'MaxMuxingQueueSize',
    'enableThrottling': 'EnableThrottling',
    'throttleDelaySeconds': 'ThrottleDelaySeconds',
    'enableSegmentDeletion': 'EnableSegmentDeletion',
    'segmentKeepSeconds': 'SegmentKeepSeconds',
    'hardwareAccelerationType': 'HardwareAccelerationType',
    'encoderAppPath': 'EncoderAppPath',
    'encoderAppPathDisplay': 'EncoderAppPathDisplay',
    'vaapiDevice': 'VaapiDevice',
    'qsvDevice': 'QsvDevice',
    'enableTonemapping': 'EnableTonemapping',
    'enableVppTonemapping': 'EnableVppTonemapping',
    'enableVideoToolboxTonemapping': 'EnableVideoToolboxTonemapping',
    'tonemappingAlgorithm': 'TonemappingAlgorithm',
    'tonemappingMode': 'TonemappingMode',
    'tonemappingRange': 'TonemappingRange',
    'tonemappingDesat': 'TonemappingDesat',
    'tonemappingPeak': 'TonemappingPeak',
    'tonemappingParam': 'TonemappingParam',
    'vppTonemappingBrightness': 'VppTonemappingBrightness',
    'vppTonemappingContrast': 'VppTonemappingContrast',
    'h264Crf': 'H264Crf',
    'h265Crf': 'H265Crf',
    'encoderPreset': 'EncoderPreset',
    'deinterlaceDoubleRate': 'DeinterlaceDoubleRate',
    'deinterlaceMethod': 'DeinterlaceMethod',
    'enableDecodingColorDepth10Hevc': 'EnableDecodingColorDepth10Hevc',
    'enableDecodingColorDepth10Vp9': 'EnableDecodingColorDepth10Vp9',
    'enableDecodingColorDepth10HevcRext': 'EnableDecodingColorDepth10HevcRext',
    'enableDecodingColorDepth12HevcRext': 'EnableDecodingColorDepth12HevcRext',
    'enableEnhancedNvdecDecoder': 'EnableEnhancedNvdecDecoder',
    'preferSystemNativeHwDecoder': 'PreferSystemNativeHwDecoder',
    'enableIntelLowPowerH264HwEncoder': 'EnableIntelLowPowerH264HwEncoder',
    'enableIntelLowPowerHevcHwEncoder': 'EnableIntelLowPowerHevcHwEncoder',
    'enableHardwareEncoding': 'EnableHardwareEncoding',
    'allowHevcEncoding': 'AllowHevcEncoding',
    'allowAv1Encoding': 'AllowAv1Encoding',
    'enableSubtitleExtraction': 'EnableSubtitleExtraction',
    'hardwareDecodingCodecs': 'HardwareDecodingCodecs',
    'allowOnDemandMetadataBasedKeyframeExtractionForExtensions':
        'AllowOnDemandMetadataBasedKeyframeExtractionForExtensions',
  },
);

Map<String, dynamic> _$EncodingOptionsToJson(
  EncodingOptions instance,
) => <String, dynamic>{
  'EncodingThreadCount': ?instance.encodingThreadCount,
  'TranscodingTempPath': ?instance.transcodingTempPath,
  'FallbackFontPath': ?instance.fallbackFontPath,
  'EnableFallbackFont': ?instance.enableFallbackFont,
  'EnableAudioVbr': ?instance.enableAudioVbr,
  'DownMixAudioBoost': ?instance.downMixAudioBoost,
  'DownMixStereoAlgorithm':
      ?_$DownMixStereoAlgorithmsEnumMap[instance.downMixStereoAlgorithm],
  'MaxMuxingQueueSize': ?instance.maxMuxingQueueSize,
  'EnableThrottling': ?instance.enableThrottling,
  'ThrottleDelaySeconds': ?instance.throttleDelaySeconds,
  'EnableSegmentDeletion': ?instance.enableSegmentDeletion,
  'SegmentKeepSeconds': ?instance.segmentKeepSeconds,
  'HardwareAccelerationType':
      ?_$HardwareAccelerationTypeEnumMap[instance.hardwareAccelerationType],
  'EncoderAppPath': ?instance.encoderAppPath,
  'EncoderAppPathDisplay': ?instance.encoderAppPathDisplay,
  'VaapiDevice': ?instance.vaapiDevice,
  'QsvDevice': ?instance.qsvDevice,
  'EnableTonemapping': ?instance.enableTonemapping,
  'EnableVppTonemapping': ?instance.enableVppTonemapping,
  'EnableVideoToolboxTonemapping': ?instance.enableVideoToolboxTonemapping,
  'TonemappingAlgorithm':
      ?_$TonemappingAlgorithmEnumMap[instance.tonemappingAlgorithm],
  'TonemappingMode': ?_$TonemappingModeEnumMap[instance.tonemappingMode],
  'TonemappingRange': ?_$TonemappingRangeEnumMap[instance.tonemappingRange],
  'TonemappingDesat': ?instance.tonemappingDesat,
  'TonemappingPeak': ?instance.tonemappingPeak,
  'TonemappingParam': ?instance.tonemappingParam,
  'VppTonemappingBrightness': ?instance.vppTonemappingBrightness,
  'VppTonemappingContrast': ?instance.vppTonemappingContrast,
  'H264Crf': ?instance.h264Crf,
  'H265Crf': ?instance.h265Crf,
  'EncoderPreset': ?_$EncoderPresetEnumMap[instance.encoderPreset],
  'DeinterlaceDoubleRate': ?instance.deinterlaceDoubleRate,
  'DeinterlaceMethod': ?_$DeinterlaceMethodEnumMap[instance.deinterlaceMethod],
  'EnableDecodingColorDepth10Hevc': ?instance.enableDecodingColorDepth10Hevc,
  'EnableDecodingColorDepth10Vp9': ?instance.enableDecodingColorDepth10Vp9,
  'EnableDecodingColorDepth10HevcRext':
      ?instance.enableDecodingColorDepth10HevcRext,
  'EnableDecodingColorDepth12HevcRext':
      ?instance.enableDecodingColorDepth12HevcRext,
  'EnableEnhancedNvdecDecoder': ?instance.enableEnhancedNvdecDecoder,
  'PreferSystemNativeHwDecoder': ?instance.preferSystemNativeHwDecoder,
  'EnableIntelLowPowerH264HwEncoder':
      ?instance.enableIntelLowPowerH264HwEncoder,
  'EnableIntelLowPowerHevcHwEncoder':
      ?instance.enableIntelLowPowerHevcHwEncoder,
  'EnableHardwareEncoding': ?instance.enableHardwareEncoding,
  'AllowHevcEncoding': ?instance.allowHevcEncoding,
  'AllowAv1Encoding': ?instance.allowAv1Encoding,
  'EnableSubtitleExtraction': ?instance.enableSubtitleExtraction,
  'HardwareDecodingCodecs': ?instance.hardwareDecodingCodecs,
  'AllowOnDemandMetadataBasedKeyframeExtractionForExtensions':
      ?instance.allowOnDemandMetadataBasedKeyframeExtractionForExtensions,
};

const _$DownMixStereoAlgorithmsEnumMap = {
  DownMixStereoAlgorithms.none: 'None',
  DownMixStereoAlgorithms.dave750: 'Dave750',
  DownMixStereoAlgorithms.nightmodeDialogue: 'NightmodeDialogue',
  DownMixStereoAlgorithms.rfc7845: 'Rfc7845',
  DownMixStereoAlgorithms.ac4: 'Ac4',
};

const _$HardwareAccelerationTypeEnumMap = {
  HardwareAccelerationType.none: 'none',
  HardwareAccelerationType.amf: 'amf',
  HardwareAccelerationType.qsv: 'qsv',
  HardwareAccelerationType.nvenc: 'nvenc',
  HardwareAccelerationType.v4l2m2m: 'v4l2m2m',
  HardwareAccelerationType.vaapi: 'vaapi',
  HardwareAccelerationType.videotoolbox: 'videotoolbox',
  HardwareAccelerationType.rkmpp: 'rkmpp',
};

const _$TonemappingAlgorithmEnumMap = {
  TonemappingAlgorithm.none: 'none',
  TonemappingAlgorithm.clip: 'clip',
  TonemappingAlgorithm.linear: 'linear',
  TonemappingAlgorithm.gamma: 'gamma',
  TonemappingAlgorithm.reinhard: 'reinhard',
  TonemappingAlgorithm.hable: 'hable',
  TonemappingAlgorithm.mobius: 'mobius',
  TonemappingAlgorithm.bt2390: 'bt2390',
};

const _$TonemappingModeEnumMap = {
  TonemappingMode.auto: 'auto',
  TonemappingMode.max: 'max',
  TonemappingMode.rgb: 'rgb',
  TonemappingMode.lum: 'lum',
  TonemappingMode.itp: 'itp',
};

const _$TonemappingRangeEnumMap = {
  TonemappingRange.auto: 'auto',
  TonemappingRange.tv: 'tv',
  TonemappingRange.pc: 'pc',
};

const _$EncoderPresetEnumMap = {
  EncoderPreset.auto: 'auto',
  EncoderPreset.placebo: 'placebo',
  EncoderPreset.veryslow: 'veryslow',
  EncoderPreset.slower: 'slower',
  EncoderPreset.slow: 'slow',
  EncoderPreset.medium: 'medium',
  EncoderPreset.fast: 'fast',
  EncoderPreset.faster: 'faster',
  EncoderPreset.veryfast: 'veryfast',
  EncoderPreset.superfast: 'superfast',
  EncoderPreset.ultrafast: 'ultrafast',
};

const _$DeinterlaceMethodEnumMap = {
  DeinterlaceMethod.yadif: 'yadif',
  DeinterlaceMethod.bwdif: 'bwdif',
};
