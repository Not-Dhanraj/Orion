//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/repository_info.dart';
import 'package:jelly_api/lib/model/image_resolution.dart';
import 'package:jelly_api/lib/model/image_saving_convention.dart';
import 'package:jelly_api/lib/model/metadata_options.dart';
import 'package:jelly_api/lib/model/trickplay_options.dart';
import 'package:jelly_api/lib/model/cast_receiver_application.dart';
import 'package:jelly_api/lib/model/path_substitution.dart';
import 'package:jelly_api/lib/model/name_value_pair.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'server_configuration.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerConfiguration {
  /// Returns a new [ServerConfiguration] instance.
  ServerConfiguration({

     this.logFileRetentionDays,

     this.isStartupWizardCompleted,

     this.cachePath,

     this.previousVersion,

     this.previousVersionStr,

     this.enableMetrics,

     this.enableNormalizedItemByNameIds,

     this.isPortAuthorized,

     this.quickConnectAvailable,

     this.enableCaseSensitiveItemIds,

     this.disableLiveTvChannelUserDataName,

     this.metadataPath,

     this.preferredMetadataLanguage,

     this.metadataCountryCode,

     this.sortReplaceCharacters,

     this.sortRemoveCharacters,

     this.sortRemoveWords,

     this.minResumePct,

     this.maxResumePct,

     this.minResumeDurationSeconds,

     this.minAudiobookResume,

     this.maxAudiobookResume,

     this.inactiveSessionThreshold,

     this.libraryMonitorDelay,

     this.libraryUpdateDuration,

     this.cacheSize,

     this.imageSavingConvention,

     this.metadataOptions,

     this.skipDeserializationForBasicTypes,

     this.serverName,

     this.uICulture,

     this.saveMetadataHidden,

     this.contentTypes,

     this.remoteClientBitrateLimit,

     this.enableFolderView,

     this.enableGroupingMoviesIntoCollections,

     this.enableGroupingShowsIntoCollections,

     this.displaySpecialsWithinSeasons,

     this.codecsUsed,

     this.pluginRepositories,

     this.enableExternalContentInSuggestions,

     this.imageExtractionTimeoutMs,

     this.pathSubstitutions,

     this.enableSlowResponseWarning,

     this.slowResponseThresholdMs,

     this.corsHosts,

     this.activityLogRetentionDays,

     this.libraryScanFanoutConcurrency,

     this.libraryMetadataRefreshConcurrency,

     this.allowClientLogUpload,

     this.dummyChapterDuration,

     this.chapterImageResolution,

     this.parallelImageEncodingLimit,

     this.castReceiverApplications,

     this.trickplayOptions,

     this.enableLegacyAuthorization,
  });

      /// Gets or sets the number of days we should retain log files.
  @JsonKey(
    
    name: r'LogFileRetentionDays',
    required: false,
    includeIfNull: false,
  )


  final int? logFileRetentionDays;



      /// Gets or sets a value indicating whether this instance is first run.
  @JsonKey(
    
    name: r'IsStartupWizardCompleted',
    required: false,
    includeIfNull: false,
  )


  final bool? isStartupWizardCompleted;



      /// Gets or sets the cache path.
  @JsonKey(
    
    name: r'CachePath',
    required: false,
    includeIfNull: false,
  )


  final String? cachePath;



      /// Gets or sets the last known version that was ran using the configuration.
  @JsonKey(
    
    name: r'PreviousVersion',
    required: false,
    includeIfNull: false,
  )


  final String? previousVersion;



      /// Gets or sets the stringified PreviousVersion to be stored/loaded,  because System.Version itself isn't xml-serializable.
  @JsonKey(
    
    name: r'PreviousVersionStr',
    required: false,
    includeIfNull: false,
  )


  final String? previousVersionStr;



      /// Gets or sets a value indicating whether to enable prometheus metrics exporting.
  @JsonKey(
    
    name: r'EnableMetrics',
    required: false,
    includeIfNull: false,
  )


  final bool? enableMetrics;



  @JsonKey(
    
    name: r'EnableNormalizedItemByNameIds',
    required: false,
    includeIfNull: false,
  )


  final bool? enableNormalizedItemByNameIds;



      /// Gets or sets a value indicating whether this instance is port authorized.
  @JsonKey(
    
    name: r'IsPortAuthorized',
    required: false,
    includeIfNull: false,
  )


  final bool? isPortAuthorized;



      /// Gets or sets a value indicating whether quick connect is available for use on this server.
  @JsonKey(
    
    name: r'QuickConnectAvailable',
    required: false,
    includeIfNull: false,
  )


  final bool? quickConnectAvailable;



      /// Gets or sets a value indicating whether [enable case-sensitive item ids].
  @JsonKey(
    
    name: r'EnableCaseSensitiveItemIds',
    required: false,
    includeIfNull: false,
  )


  final bool? enableCaseSensitiveItemIds;



  @JsonKey(
    
    name: r'DisableLiveTvChannelUserDataName',
    required: false,
    includeIfNull: false,
  )


  final bool? disableLiveTvChannelUserDataName;



      /// Gets or sets the metadata path.
  @JsonKey(
    
    name: r'MetadataPath',
    required: false,
    includeIfNull: false,
  )


  final String? metadataPath;



      /// Gets or sets the preferred metadata language.
  @JsonKey(
    
    name: r'PreferredMetadataLanguage',
    required: false,
    includeIfNull: false,
  )


  final String? preferredMetadataLanguage;



      /// Gets or sets the metadata country code.
  @JsonKey(
    
    name: r'MetadataCountryCode',
    required: false,
    includeIfNull: false,
  )


  final String? metadataCountryCode;



      /// Gets or sets characters to be replaced with a ' ' in strings to create a sort name.
  @JsonKey(
    
    name: r'SortReplaceCharacters',
    required: false,
    includeIfNull: false,
  )


  final List<String>? sortReplaceCharacters;



      /// Gets or sets characters to be removed from strings to create a sort name.
  @JsonKey(
    
    name: r'SortRemoveCharacters',
    required: false,
    includeIfNull: false,
  )


  final List<String>? sortRemoveCharacters;



      /// Gets or sets words to be removed from strings to create a sort name.
  @JsonKey(
    
    name: r'SortRemoveWords',
    required: false,
    includeIfNull: false,
  )


  final List<String>? sortRemoveWords;



      /// Gets or sets the minimum percentage of an item that must be played in order for playstate to be updated.
  @JsonKey(
    
    name: r'MinResumePct',
    required: false,
    includeIfNull: false,
  )


  final int? minResumePct;



      /// Gets or sets the maximum percentage of an item that can be played while still saving playstate. If this percentage is crossed playstate will be reset to the beginning and the item will be marked watched.
  @JsonKey(
    
    name: r'MaxResumePct',
    required: false,
    includeIfNull: false,
  )


  final int? maxResumePct;



      /// Gets or sets the minimum duration that an item must have in order to be eligible for playstate updates..
  @JsonKey(
    
    name: r'MinResumeDurationSeconds',
    required: false,
    includeIfNull: false,
  )


  final int? minResumeDurationSeconds;



      /// Gets or sets the minimum minutes of a book that must be played in order for playstate to be updated.
  @JsonKey(
    
    name: r'MinAudiobookResume',
    required: false,
    includeIfNull: false,
  )


  final int? minAudiobookResume;



      /// Gets or sets the remaining minutes of a book that can be played while still saving playstate. If this percentage is crossed playstate will be reset to the beginning and the item will be marked watched.
  @JsonKey(
    
    name: r'MaxAudiobookResume',
    required: false,
    includeIfNull: false,
  )


  final int? maxAudiobookResume;



      /// Gets or sets the threshold in minutes after a inactive session gets closed automatically.  If set to 0 the check for inactive sessions gets disabled.
  @JsonKey(
    
    name: r'InactiveSessionThreshold',
    required: false,
    includeIfNull: false,
  )


  final int? inactiveSessionThreshold;



      /// Gets or sets the delay in seconds that we will wait after a file system change to try and discover what has been added/removed  Some delay is necessary with some items because their creation is not atomic.  It involves the creation of several  different directories and files.
  @JsonKey(
    
    name: r'LibraryMonitorDelay',
    required: false,
    includeIfNull: false,
  )


  final int? libraryMonitorDelay;



      /// Gets or sets the duration in seconds that we will wait after a library updated event before executing the library changed notification.
  @JsonKey(
    
    name: r'LibraryUpdateDuration',
    required: false,
    includeIfNull: false,
  )


  final int? libraryUpdateDuration;



      /// Gets or sets the maximum amount of items to cache.
  @JsonKey(
    
    name: r'CacheSize',
    required: false,
    includeIfNull: false,
  )


  final int? cacheSize;



      /// Gets or sets the image saving convention.
  @JsonKey(
    
    name: r'ImageSavingConvention',
    required: false,
    includeIfNull: false,
  )


  final ImageSavingConvention? imageSavingConvention;



  @JsonKey(
    
    name: r'MetadataOptions',
    required: false,
    includeIfNull: false,
  )


  final List<MetadataOptions>? metadataOptions;



  @JsonKey(
    
    name: r'SkipDeserializationForBasicTypes',
    required: false,
    includeIfNull: false,
  )


  final bool? skipDeserializationForBasicTypes;



  @JsonKey(
    
    name: r'ServerName',
    required: false,
    includeIfNull: false,
  )


  final String? serverName;



  @JsonKey(
    
    name: r'UICulture',
    required: false,
    includeIfNull: false,
  )


  final String? uICulture;



  @JsonKey(
    
    name: r'SaveMetadataHidden',
    required: false,
    includeIfNull: false,
  )


  final bool? saveMetadataHidden;



  @JsonKey(
    
    name: r'ContentTypes',
    required: false,
    includeIfNull: false,
  )


  final List<NameValuePair>? contentTypes;



  @JsonKey(
    
    name: r'RemoteClientBitrateLimit',
    required: false,
    includeIfNull: false,
  )


  final int? remoteClientBitrateLimit;



  @JsonKey(
    
    name: r'EnableFolderView',
    required: false,
    includeIfNull: false,
  )


  final bool? enableFolderView;



  @JsonKey(
    
    name: r'EnableGroupingMoviesIntoCollections',
    required: false,
    includeIfNull: false,
  )


  final bool? enableGroupingMoviesIntoCollections;



  @JsonKey(
    
    name: r'EnableGroupingShowsIntoCollections',
    required: false,
    includeIfNull: false,
  )


  final bool? enableGroupingShowsIntoCollections;



  @JsonKey(
    
    name: r'DisplaySpecialsWithinSeasons',
    required: false,
    includeIfNull: false,
  )


  final bool? displaySpecialsWithinSeasons;



  @JsonKey(
    
    name: r'CodecsUsed',
    required: false,
    includeIfNull: false,
  )


  final List<String>? codecsUsed;



  @JsonKey(
    
    name: r'PluginRepositories',
    required: false,
    includeIfNull: false,
  )


  final List<RepositoryInfo>? pluginRepositories;



  @JsonKey(
    
    name: r'EnableExternalContentInSuggestions',
    required: false,
    includeIfNull: false,
  )


  final bool? enableExternalContentInSuggestions;



  @JsonKey(
    
    name: r'ImageExtractionTimeoutMs',
    required: false,
    includeIfNull: false,
  )


  final int? imageExtractionTimeoutMs;



  @JsonKey(
    
    name: r'PathSubstitutions',
    required: false,
    includeIfNull: false,
  )


  final List<PathSubstitution>? pathSubstitutions;



      /// Gets or sets a value indicating whether slow server responses should be logged as a warning.
  @JsonKey(
    
    name: r'EnableSlowResponseWarning',
    required: false,
    includeIfNull: false,
  )


  final bool? enableSlowResponseWarning;



      /// Gets or sets the threshold for the slow response time warning in ms.
  @JsonKey(
    
    name: r'SlowResponseThresholdMs',
    required: false,
    includeIfNull: false,
  )


  final int? slowResponseThresholdMs;



      /// Gets or sets the cors hosts.
  @JsonKey(
    
    name: r'CorsHosts',
    required: false,
    includeIfNull: false,
  )


  final List<String>? corsHosts;



      /// Gets or sets the number of days we should retain activity logs.
  @JsonKey(
    
    name: r'ActivityLogRetentionDays',
    required: false,
    includeIfNull: false,
  )


  final int? activityLogRetentionDays;



      /// Gets or sets the how the library scan fans out.
  @JsonKey(
    
    name: r'LibraryScanFanoutConcurrency',
    required: false,
    includeIfNull: false,
  )


  final int? libraryScanFanoutConcurrency;



      /// Gets or sets the how many metadata refreshes can run concurrently.
  @JsonKey(
    
    name: r'LibraryMetadataRefreshConcurrency',
    required: false,
    includeIfNull: false,
  )


  final int? libraryMetadataRefreshConcurrency;



      /// Gets or sets a value indicating whether clients should be allowed to upload logs.
  @JsonKey(
    
    name: r'AllowClientLogUpload',
    required: false,
    includeIfNull: false,
  )


  final bool? allowClientLogUpload;



      /// Gets or sets the dummy chapter duration in seconds, use 0 (zero) or less to disable generation altogether.
  @JsonKey(
    
    name: r'DummyChapterDuration',
    required: false,
    includeIfNull: false,
  )


  final int? dummyChapterDuration;



      /// Gets or sets the chapter image resolution.
  @JsonKey(
    
    name: r'ChapterImageResolution',
    required: false,
    includeIfNull: false,
  )


  final ImageResolution? chapterImageResolution;



      /// Gets or sets the limit for parallel image encoding.
  @JsonKey(
    
    name: r'ParallelImageEncodingLimit',
    required: false,
    includeIfNull: false,
  )


  final int? parallelImageEncodingLimit;



      /// Gets or sets the list of cast receiver applications.
  @JsonKey(
    
    name: r'CastReceiverApplications',
    required: false,
    includeIfNull: false,
  )


  final List<CastReceiverApplication>? castReceiverApplications;



      /// Gets or sets the trickplay options.
  @JsonKey(
    
    name: r'TrickplayOptions',
    required: false,
    includeIfNull: false,
  )


  final TrickplayOptions? trickplayOptions;



      /// Gets or sets a value indicating whether old authorization methods are allowed.
  @JsonKey(
    
    name: r'EnableLegacyAuthorization',
    required: false,
    includeIfNull: false,
  )


  final bool? enableLegacyAuthorization;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ServerConfiguration &&
      other.logFileRetentionDays == logFileRetentionDays &&
      other.isStartupWizardCompleted == isStartupWizardCompleted &&
      other.cachePath == cachePath &&
      other.previousVersion == previousVersion &&
      other.previousVersionStr == previousVersionStr &&
      other.enableMetrics == enableMetrics &&
      other.enableNormalizedItemByNameIds == enableNormalizedItemByNameIds &&
      other.isPortAuthorized == isPortAuthorized &&
      other.quickConnectAvailable == quickConnectAvailable &&
      other.enableCaseSensitiveItemIds == enableCaseSensitiveItemIds &&
      other.disableLiveTvChannelUserDataName == disableLiveTvChannelUserDataName &&
      other.metadataPath == metadataPath &&
      other.preferredMetadataLanguage == preferredMetadataLanguage &&
      other.metadataCountryCode == metadataCountryCode &&
      other.sortReplaceCharacters == sortReplaceCharacters &&
      other.sortRemoveCharacters == sortRemoveCharacters &&
      other.sortRemoveWords == sortRemoveWords &&
      other.minResumePct == minResumePct &&
      other.maxResumePct == maxResumePct &&
      other.minResumeDurationSeconds == minResumeDurationSeconds &&
      other.minAudiobookResume == minAudiobookResume &&
      other.maxAudiobookResume == maxAudiobookResume &&
      other.inactiveSessionThreshold == inactiveSessionThreshold &&
      other.libraryMonitorDelay == libraryMonitorDelay &&
      other.libraryUpdateDuration == libraryUpdateDuration &&
      other.cacheSize == cacheSize &&
      other.imageSavingConvention == imageSavingConvention &&
      other.metadataOptions == metadataOptions &&
      other.skipDeserializationForBasicTypes == skipDeserializationForBasicTypes &&
      other.serverName == serverName &&
      other.uICulture == uICulture &&
      other.saveMetadataHidden == saveMetadataHidden &&
      other.contentTypes == contentTypes &&
      other.remoteClientBitrateLimit == remoteClientBitrateLimit &&
      other.enableFolderView == enableFolderView &&
      other.enableGroupingMoviesIntoCollections == enableGroupingMoviesIntoCollections &&
      other.enableGroupingShowsIntoCollections == enableGroupingShowsIntoCollections &&
      other.displaySpecialsWithinSeasons == displaySpecialsWithinSeasons &&
      other.codecsUsed == codecsUsed &&
      other.pluginRepositories == pluginRepositories &&
      other.enableExternalContentInSuggestions == enableExternalContentInSuggestions &&
      other.imageExtractionTimeoutMs == imageExtractionTimeoutMs &&
      other.pathSubstitutions == pathSubstitutions &&
      other.enableSlowResponseWarning == enableSlowResponseWarning &&
      other.slowResponseThresholdMs == slowResponseThresholdMs &&
      other.corsHosts == corsHosts &&
      other.activityLogRetentionDays == activityLogRetentionDays &&
      other.libraryScanFanoutConcurrency == libraryScanFanoutConcurrency &&
      other.libraryMetadataRefreshConcurrency == libraryMetadataRefreshConcurrency &&
      other.allowClientLogUpload == allowClientLogUpload &&
      other.dummyChapterDuration == dummyChapterDuration &&
      other.chapterImageResolution == chapterImageResolution &&
      other.parallelImageEncodingLimit == parallelImageEncodingLimit &&
      other.castReceiverApplications == castReceiverApplications &&
      other.trickplayOptions == trickplayOptions &&
      other.enableLegacyAuthorization == enableLegacyAuthorization;

    @override
    int get hashCode =>
        logFileRetentionDays.hashCode +
        isStartupWizardCompleted.hashCode +
        (cachePath == null ? 0 : cachePath.hashCode) +
        (previousVersion == null ? 0 : previousVersion.hashCode) +
        (previousVersionStr == null ? 0 : previousVersionStr.hashCode) +
        enableMetrics.hashCode +
        enableNormalizedItemByNameIds.hashCode +
        isPortAuthorized.hashCode +
        quickConnectAvailable.hashCode +
        enableCaseSensitiveItemIds.hashCode +
        disableLiveTvChannelUserDataName.hashCode +
        metadataPath.hashCode +
        preferredMetadataLanguage.hashCode +
        metadataCountryCode.hashCode +
        sortReplaceCharacters.hashCode +
        sortRemoveCharacters.hashCode +
        sortRemoveWords.hashCode +
        minResumePct.hashCode +
        maxResumePct.hashCode +
        minResumeDurationSeconds.hashCode +
        minAudiobookResume.hashCode +
        maxAudiobookResume.hashCode +
        inactiveSessionThreshold.hashCode +
        libraryMonitorDelay.hashCode +
        libraryUpdateDuration.hashCode +
        cacheSize.hashCode +
        imageSavingConvention.hashCode +
        metadataOptions.hashCode +
        skipDeserializationForBasicTypes.hashCode +
        serverName.hashCode +
        uICulture.hashCode +
        saveMetadataHidden.hashCode +
        contentTypes.hashCode +
        remoteClientBitrateLimit.hashCode +
        enableFolderView.hashCode +
        enableGroupingMoviesIntoCollections.hashCode +
        enableGroupingShowsIntoCollections.hashCode +
        displaySpecialsWithinSeasons.hashCode +
        codecsUsed.hashCode +
        pluginRepositories.hashCode +
        enableExternalContentInSuggestions.hashCode +
        imageExtractionTimeoutMs.hashCode +
        pathSubstitutions.hashCode +
        enableSlowResponseWarning.hashCode +
        slowResponseThresholdMs.hashCode +
        corsHosts.hashCode +
        (activityLogRetentionDays == null ? 0 : activityLogRetentionDays.hashCode) +
        libraryScanFanoutConcurrency.hashCode +
        libraryMetadataRefreshConcurrency.hashCode +
        allowClientLogUpload.hashCode +
        dummyChapterDuration.hashCode +
        chapterImageResolution.hashCode +
        parallelImageEncodingLimit.hashCode +
        castReceiverApplications.hashCode +
        trickplayOptions.hashCode +
        enableLegacyAuthorization.hashCode;

  factory ServerConfiguration.fromJson(Map<String, dynamic> json) => _$ServerConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$ServerConfigurationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

