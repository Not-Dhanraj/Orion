//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/listings_provider_info.dart';
import 'package:jelly_api/lib/model/tuner_host_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'live_tv_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LiveTvOptions {
  /// Returns a new [LiveTvOptions] instance.
  LiveTvOptions({

     this.guideDays,

     this.recordingPath,

     this.movieRecordingPath,

     this.seriesRecordingPath,

     this.enableRecordingSubfolders,

     this.enableOriginalAudioWithEncodedRecordings,

     this.tunerHosts,

     this.listingProviders,

     this.prePaddingSeconds,

     this.postPaddingSeconds,

     this.mediaLocationsCreated,

     this.recordingPostProcessor,

     this.recordingPostProcessorArguments,

     this.saveRecordingNFO,

     this.saveRecordingImages,
  });

  @JsonKey(
    
    name: r'GuideDays',
    required: false,
    includeIfNull: false,
  )


  final int? guideDays;



  @JsonKey(
    
    name: r'RecordingPath',
    required: false,
    includeIfNull: false,
  )


  final String? recordingPath;



  @JsonKey(
    
    name: r'MovieRecordingPath',
    required: false,
    includeIfNull: false,
  )


  final String? movieRecordingPath;



  @JsonKey(
    
    name: r'SeriesRecordingPath',
    required: false,
    includeIfNull: false,
  )


  final String? seriesRecordingPath;



  @JsonKey(
    
    name: r'EnableRecordingSubfolders',
    required: false,
    includeIfNull: false,
  )


  final bool? enableRecordingSubfolders;



  @JsonKey(
    
    name: r'EnableOriginalAudioWithEncodedRecordings',
    required: false,
    includeIfNull: false,
  )


  final bool? enableOriginalAudioWithEncodedRecordings;



  @JsonKey(
    
    name: r'TunerHosts',
    required: false,
    includeIfNull: false,
  )


  final List<TunerHostInfo>? tunerHosts;



  @JsonKey(
    
    name: r'ListingProviders',
    required: false,
    includeIfNull: false,
  )


  final List<ListingsProviderInfo>? listingProviders;



  @JsonKey(
    
    name: r'PrePaddingSeconds',
    required: false,
    includeIfNull: false,
  )


  final int? prePaddingSeconds;



  @JsonKey(
    
    name: r'PostPaddingSeconds',
    required: false,
    includeIfNull: false,
  )


  final int? postPaddingSeconds;



  @JsonKey(
    
    name: r'MediaLocationsCreated',
    required: false,
    includeIfNull: false,
  )


  final List<String>? mediaLocationsCreated;



  @JsonKey(
    
    name: r'RecordingPostProcessor',
    required: false,
    includeIfNull: false,
  )


  final String? recordingPostProcessor;



  @JsonKey(
    
    name: r'RecordingPostProcessorArguments',
    required: false,
    includeIfNull: false,
  )


  final String? recordingPostProcessorArguments;



  @JsonKey(
    
    name: r'SaveRecordingNFO',
    required: false,
    includeIfNull: false,
  )


  final bool? saveRecordingNFO;



  @JsonKey(
    
    name: r'SaveRecordingImages',
    required: false,
    includeIfNull: false,
  )


  final bool? saveRecordingImages;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LiveTvOptions &&
      other.guideDays == guideDays &&
      other.recordingPath == recordingPath &&
      other.movieRecordingPath == movieRecordingPath &&
      other.seriesRecordingPath == seriesRecordingPath &&
      other.enableRecordingSubfolders == enableRecordingSubfolders &&
      other.enableOriginalAudioWithEncodedRecordings == enableOriginalAudioWithEncodedRecordings &&
      other.tunerHosts == tunerHosts &&
      other.listingProviders == listingProviders &&
      other.prePaddingSeconds == prePaddingSeconds &&
      other.postPaddingSeconds == postPaddingSeconds &&
      other.mediaLocationsCreated == mediaLocationsCreated &&
      other.recordingPostProcessor == recordingPostProcessor &&
      other.recordingPostProcessorArguments == recordingPostProcessorArguments &&
      other.saveRecordingNFO == saveRecordingNFO &&
      other.saveRecordingImages == saveRecordingImages;

    @override
    int get hashCode =>
        (guideDays == null ? 0 : guideDays.hashCode) +
        (recordingPath == null ? 0 : recordingPath.hashCode) +
        (movieRecordingPath == null ? 0 : movieRecordingPath.hashCode) +
        (seriesRecordingPath == null ? 0 : seriesRecordingPath.hashCode) +
        enableRecordingSubfolders.hashCode +
        enableOriginalAudioWithEncodedRecordings.hashCode +
        (tunerHosts == null ? 0 : tunerHosts.hashCode) +
        (listingProviders == null ? 0 : listingProviders.hashCode) +
        prePaddingSeconds.hashCode +
        postPaddingSeconds.hashCode +
        (mediaLocationsCreated == null ? 0 : mediaLocationsCreated.hashCode) +
        (recordingPostProcessor == null ? 0 : recordingPostProcessor.hashCode) +
        (recordingPostProcessorArguments == null ? 0 : recordingPostProcessorArguments.hashCode) +
        saveRecordingNFO.hashCode +
        saveRecordingImages.hashCode;

  factory LiveTvOptions.fromJson(Map<String, dynamic> json) => _$LiveTvOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$LiveTvOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

