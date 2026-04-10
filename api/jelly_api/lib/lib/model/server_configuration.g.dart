// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_configuration.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ServerConfigurationCWProxy {
  ServerConfiguration logFileRetentionDays(int? logFileRetentionDays);

  ServerConfiguration isStartupWizardCompleted(bool? isStartupWizardCompleted);

  ServerConfiguration cachePath(String? cachePath);

  ServerConfiguration previousVersion(String? previousVersion);

  ServerConfiguration previousVersionStr(String? previousVersionStr);

  ServerConfiguration enableMetrics(bool? enableMetrics);

  ServerConfiguration enableNormalizedItemByNameIds(
    bool? enableNormalizedItemByNameIds,
  );

  ServerConfiguration isPortAuthorized(bool? isPortAuthorized);

  ServerConfiguration quickConnectAvailable(bool? quickConnectAvailable);

  ServerConfiguration enableCaseSensitiveItemIds(
    bool? enableCaseSensitiveItemIds,
  );

  ServerConfiguration disableLiveTvChannelUserDataName(
    bool? disableLiveTvChannelUserDataName,
  );

  ServerConfiguration metadataPath(String? metadataPath);

  ServerConfiguration preferredMetadataLanguage(
    String? preferredMetadataLanguage,
  );

  ServerConfiguration metadataCountryCode(String? metadataCountryCode);

  ServerConfiguration sortReplaceCharacters(
    List<String>? sortReplaceCharacters,
  );

  ServerConfiguration sortRemoveCharacters(List<String>? sortRemoveCharacters);

  ServerConfiguration sortRemoveWords(List<String>? sortRemoveWords);

  ServerConfiguration minResumePct(int? minResumePct);

  ServerConfiguration maxResumePct(int? maxResumePct);

  ServerConfiguration minResumeDurationSeconds(int? minResumeDurationSeconds);

  ServerConfiguration minAudiobookResume(int? minAudiobookResume);

  ServerConfiguration maxAudiobookResume(int? maxAudiobookResume);

  ServerConfiguration inactiveSessionThreshold(int? inactiveSessionThreshold);

  ServerConfiguration libraryMonitorDelay(int? libraryMonitorDelay);

  ServerConfiguration libraryUpdateDuration(int? libraryUpdateDuration);

  ServerConfiguration cacheSize(int? cacheSize);

  ServerConfiguration imageSavingConvention(
    ImageSavingConvention? imageSavingConvention,
  );

  ServerConfiguration metadataOptions(List<MetadataOptions>? metadataOptions);

  ServerConfiguration skipDeserializationForBasicTypes(
    bool? skipDeserializationForBasicTypes,
  );

  ServerConfiguration serverName(String? serverName);

  ServerConfiguration uICulture(String? uICulture);

  ServerConfiguration saveMetadataHidden(bool? saveMetadataHidden);

  ServerConfiguration contentTypes(List<NameValuePair>? contentTypes);

  ServerConfiguration remoteClientBitrateLimit(int? remoteClientBitrateLimit);

  ServerConfiguration enableFolderView(bool? enableFolderView);

  ServerConfiguration enableGroupingMoviesIntoCollections(
    bool? enableGroupingMoviesIntoCollections,
  );

  ServerConfiguration enableGroupingShowsIntoCollections(
    bool? enableGroupingShowsIntoCollections,
  );

  ServerConfiguration displaySpecialsWithinSeasons(
    bool? displaySpecialsWithinSeasons,
  );

  ServerConfiguration codecsUsed(List<String>? codecsUsed);

  ServerConfiguration pluginRepositories(
    List<RepositoryInfo>? pluginRepositories,
  );

  ServerConfiguration enableExternalContentInSuggestions(
    bool? enableExternalContentInSuggestions,
  );

  ServerConfiguration imageExtractionTimeoutMs(int? imageExtractionTimeoutMs);

  ServerConfiguration pathSubstitutions(
    List<PathSubstitution>? pathSubstitutions,
  );

  ServerConfiguration enableSlowResponseWarning(
    bool? enableSlowResponseWarning,
  );

  ServerConfiguration slowResponseThresholdMs(int? slowResponseThresholdMs);

  ServerConfiguration corsHosts(List<String>? corsHosts);

  ServerConfiguration activityLogRetentionDays(int? activityLogRetentionDays);

  ServerConfiguration libraryScanFanoutConcurrency(
    int? libraryScanFanoutConcurrency,
  );

  ServerConfiguration libraryMetadataRefreshConcurrency(
    int? libraryMetadataRefreshConcurrency,
  );

  ServerConfiguration allowClientLogUpload(bool? allowClientLogUpload);

  ServerConfiguration dummyChapterDuration(int? dummyChapterDuration);

  ServerConfiguration chapterImageResolution(
    ImageResolution? chapterImageResolution,
  );

  ServerConfiguration parallelImageEncodingLimit(
    int? parallelImageEncodingLimit,
  );

  ServerConfiguration castReceiverApplications(
    List<CastReceiverApplication>? castReceiverApplications,
  );

  ServerConfiguration trickplayOptions(TrickplayOptions? trickplayOptions);

  ServerConfiguration enableLegacyAuthorization(
    bool? enableLegacyAuthorization,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ServerConfiguration(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ServerConfiguration(...).copyWith(id: 12, name: "My name")
  /// ````
  ServerConfiguration call({
    int? logFileRetentionDays,
    bool? isStartupWizardCompleted,
    String? cachePath,
    String? previousVersion,
    String? previousVersionStr,
    bool? enableMetrics,
    bool? enableNormalizedItemByNameIds,
    bool? isPortAuthorized,
    bool? quickConnectAvailable,
    bool? enableCaseSensitiveItemIds,
    bool? disableLiveTvChannelUserDataName,
    String? metadataPath,
    String? preferredMetadataLanguage,
    String? metadataCountryCode,
    List<String>? sortReplaceCharacters,
    List<String>? sortRemoveCharacters,
    List<String>? sortRemoveWords,
    int? minResumePct,
    int? maxResumePct,
    int? minResumeDurationSeconds,
    int? minAudiobookResume,
    int? maxAudiobookResume,
    int? inactiveSessionThreshold,
    int? libraryMonitorDelay,
    int? libraryUpdateDuration,
    int? cacheSize,
    ImageSavingConvention? imageSavingConvention,
    List<MetadataOptions>? metadataOptions,
    bool? skipDeserializationForBasicTypes,
    String? serverName,
    String? uICulture,
    bool? saveMetadataHidden,
    List<NameValuePair>? contentTypes,
    int? remoteClientBitrateLimit,
    bool? enableFolderView,
    bool? enableGroupingMoviesIntoCollections,
    bool? enableGroupingShowsIntoCollections,
    bool? displaySpecialsWithinSeasons,
    List<String>? codecsUsed,
    List<RepositoryInfo>? pluginRepositories,
    bool? enableExternalContentInSuggestions,
    int? imageExtractionTimeoutMs,
    List<PathSubstitution>? pathSubstitutions,
    bool? enableSlowResponseWarning,
    int? slowResponseThresholdMs,
    List<String>? corsHosts,
    int? activityLogRetentionDays,
    int? libraryScanFanoutConcurrency,
    int? libraryMetadataRefreshConcurrency,
    bool? allowClientLogUpload,
    int? dummyChapterDuration,
    ImageResolution? chapterImageResolution,
    int? parallelImageEncodingLimit,
    List<CastReceiverApplication>? castReceiverApplications,
    TrickplayOptions? trickplayOptions,
    bool? enableLegacyAuthorization,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfServerConfiguration.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfServerConfiguration.copyWith.fieldName(...)`
class _$ServerConfigurationCWProxyImpl implements _$ServerConfigurationCWProxy {
  const _$ServerConfigurationCWProxyImpl(this._value);

  final ServerConfiguration _value;

  @override
  ServerConfiguration logFileRetentionDays(int? logFileRetentionDays) =>
      this(logFileRetentionDays: logFileRetentionDays);

  @override
  ServerConfiguration isStartupWizardCompleted(
    bool? isStartupWizardCompleted,
  ) => this(isStartupWizardCompleted: isStartupWizardCompleted);

  @override
  ServerConfiguration cachePath(String? cachePath) =>
      this(cachePath: cachePath);

  @override
  ServerConfiguration previousVersion(String? previousVersion) =>
      this(previousVersion: previousVersion);

  @override
  ServerConfiguration previousVersionStr(String? previousVersionStr) =>
      this(previousVersionStr: previousVersionStr);

  @override
  ServerConfiguration enableMetrics(bool? enableMetrics) =>
      this(enableMetrics: enableMetrics);

  @override
  ServerConfiguration enableNormalizedItemByNameIds(
    bool? enableNormalizedItemByNameIds,
  ) => this(enableNormalizedItemByNameIds: enableNormalizedItemByNameIds);

  @override
  ServerConfiguration isPortAuthorized(bool? isPortAuthorized) =>
      this(isPortAuthorized: isPortAuthorized);

  @override
  ServerConfiguration quickConnectAvailable(bool? quickConnectAvailable) =>
      this(quickConnectAvailable: quickConnectAvailable);

  @override
  ServerConfiguration enableCaseSensitiveItemIds(
    bool? enableCaseSensitiveItemIds,
  ) => this(enableCaseSensitiveItemIds: enableCaseSensitiveItemIds);

  @override
  ServerConfiguration disableLiveTvChannelUserDataName(
    bool? disableLiveTvChannelUserDataName,
  ) => this(disableLiveTvChannelUserDataName: disableLiveTvChannelUserDataName);

  @override
  ServerConfiguration metadataPath(String? metadataPath) =>
      this(metadataPath: metadataPath);

  @override
  ServerConfiguration preferredMetadataLanguage(
    String? preferredMetadataLanguage,
  ) => this(preferredMetadataLanguage: preferredMetadataLanguage);

  @override
  ServerConfiguration metadataCountryCode(String? metadataCountryCode) =>
      this(metadataCountryCode: metadataCountryCode);

  @override
  ServerConfiguration sortReplaceCharacters(
    List<String>? sortReplaceCharacters,
  ) => this(sortReplaceCharacters: sortReplaceCharacters);

  @override
  ServerConfiguration sortRemoveCharacters(
    List<String>? sortRemoveCharacters,
  ) => this(sortRemoveCharacters: sortRemoveCharacters);

  @override
  ServerConfiguration sortRemoveWords(List<String>? sortRemoveWords) =>
      this(sortRemoveWords: sortRemoveWords);

  @override
  ServerConfiguration minResumePct(int? minResumePct) =>
      this(minResumePct: minResumePct);

  @override
  ServerConfiguration maxResumePct(int? maxResumePct) =>
      this(maxResumePct: maxResumePct);

  @override
  ServerConfiguration minResumeDurationSeconds(int? minResumeDurationSeconds) =>
      this(minResumeDurationSeconds: minResumeDurationSeconds);

  @override
  ServerConfiguration minAudiobookResume(int? minAudiobookResume) =>
      this(minAudiobookResume: minAudiobookResume);

  @override
  ServerConfiguration maxAudiobookResume(int? maxAudiobookResume) =>
      this(maxAudiobookResume: maxAudiobookResume);

  @override
  ServerConfiguration inactiveSessionThreshold(int? inactiveSessionThreshold) =>
      this(inactiveSessionThreshold: inactiveSessionThreshold);

  @override
  ServerConfiguration libraryMonitorDelay(int? libraryMonitorDelay) =>
      this(libraryMonitorDelay: libraryMonitorDelay);

  @override
  ServerConfiguration libraryUpdateDuration(int? libraryUpdateDuration) =>
      this(libraryUpdateDuration: libraryUpdateDuration);

  @override
  ServerConfiguration cacheSize(int? cacheSize) => this(cacheSize: cacheSize);

  @override
  ServerConfiguration imageSavingConvention(
    ImageSavingConvention? imageSavingConvention,
  ) => this(imageSavingConvention: imageSavingConvention);

  @override
  ServerConfiguration metadataOptions(List<MetadataOptions>? metadataOptions) =>
      this(metadataOptions: metadataOptions);

  @override
  ServerConfiguration skipDeserializationForBasicTypes(
    bool? skipDeserializationForBasicTypes,
  ) => this(skipDeserializationForBasicTypes: skipDeserializationForBasicTypes);

  @override
  ServerConfiguration serverName(String? serverName) =>
      this(serverName: serverName);

  @override
  ServerConfiguration uICulture(String? uICulture) =>
      this(uICulture: uICulture);

  @override
  ServerConfiguration saveMetadataHidden(bool? saveMetadataHidden) =>
      this(saveMetadataHidden: saveMetadataHidden);

  @override
  ServerConfiguration contentTypes(List<NameValuePair>? contentTypes) =>
      this(contentTypes: contentTypes);

  @override
  ServerConfiguration remoteClientBitrateLimit(int? remoteClientBitrateLimit) =>
      this(remoteClientBitrateLimit: remoteClientBitrateLimit);

  @override
  ServerConfiguration enableFolderView(bool? enableFolderView) =>
      this(enableFolderView: enableFolderView);

  @override
  ServerConfiguration enableGroupingMoviesIntoCollections(
    bool? enableGroupingMoviesIntoCollections,
  ) => this(
    enableGroupingMoviesIntoCollections: enableGroupingMoviesIntoCollections,
  );

  @override
  ServerConfiguration enableGroupingShowsIntoCollections(
    bool? enableGroupingShowsIntoCollections,
  ) => this(
    enableGroupingShowsIntoCollections: enableGroupingShowsIntoCollections,
  );

  @override
  ServerConfiguration displaySpecialsWithinSeasons(
    bool? displaySpecialsWithinSeasons,
  ) => this(displaySpecialsWithinSeasons: displaySpecialsWithinSeasons);

  @override
  ServerConfiguration codecsUsed(List<String>? codecsUsed) =>
      this(codecsUsed: codecsUsed);

  @override
  ServerConfiguration pluginRepositories(
    List<RepositoryInfo>? pluginRepositories,
  ) => this(pluginRepositories: pluginRepositories);

  @override
  ServerConfiguration enableExternalContentInSuggestions(
    bool? enableExternalContentInSuggestions,
  ) => this(
    enableExternalContentInSuggestions: enableExternalContentInSuggestions,
  );

  @override
  ServerConfiguration imageExtractionTimeoutMs(int? imageExtractionTimeoutMs) =>
      this(imageExtractionTimeoutMs: imageExtractionTimeoutMs);

  @override
  ServerConfiguration pathSubstitutions(
    List<PathSubstitution>? pathSubstitutions,
  ) => this(pathSubstitutions: pathSubstitutions);

  @override
  ServerConfiguration enableSlowResponseWarning(
    bool? enableSlowResponseWarning,
  ) => this(enableSlowResponseWarning: enableSlowResponseWarning);

  @override
  ServerConfiguration slowResponseThresholdMs(int? slowResponseThresholdMs) =>
      this(slowResponseThresholdMs: slowResponseThresholdMs);

  @override
  ServerConfiguration corsHosts(List<String>? corsHosts) =>
      this(corsHosts: corsHosts);

  @override
  ServerConfiguration activityLogRetentionDays(int? activityLogRetentionDays) =>
      this(activityLogRetentionDays: activityLogRetentionDays);

  @override
  ServerConfiguration libraryScanFanoutConcurrency(
    int? libraryScanFanoutConcurrency,
  ) => this(libraryScanFanoutConcurrency: libraryScanFanoutConcurrency);

  @override
  ServerConfiguration libraryMetadataRefreshConcurrency(
    int? libraryMetadataRefreshConcurrency,
  ) => this(
    libraryMetadataRefreshConcurrency: libraryMetadataRefreshConcurrency,
  );

  @override
  ServerConfiguration allowClientLogUpload(bool? allowClientLogUpload) =>
      this(allowClientLogUpload: allowClientLogUpload);

  @override
  ServerConfiguration dummyChapterDuration(int? dummyChapterDuration) =>
      this(dummyChapterDuration: dummyChapterDuration);

  @override
  ServerConfiguration chapterImageResolution(
    ImageResolution? chapterImageResolution,
  ) => this(chapterImageResolution: chapterImageResolution);

  @override
  ServerConfiguration parallelImageEncodingLimit(
    int? parallelImageEncodingLimit,
  ) => this(parallelImageEncodingLimit: parallelImageEncodingLimit);

  @override
  ServerConfiguration castReceiverApplications(
    List<CastReceiverApplication>? castReceiverApplications,
  ) => this(castReceiverApplications: castReceiverApplications);

  @override
  ServerConfiguration trickplayOptions(TrickplayOptions? trickplayOptions) =>
      this(trickplayOptions: trickplayOptions);

  @override
  ServerConfiguration enableLegacyAuthorization(
    bool? enableLegacyAuthorization,
  ) => this(enableLegacyAuthorization: enableLegacyAuthorization);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ServerConfiguration(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ServerConfiguration(...).copyWith(id: 12, name: "My name")
  /// ````
  ServerConfiguration call({
    Object? logFileRetentionDays = const $CopyWithPlaceholder(),
    Object? isStartupWizardCompleted = const $CopyWithPlaceholder(),
    Object? cachePath = const $CopyWithPlaceholder(),
    Object? previousVersion = const $CopyWithPlaceholder(),
    Object? previousVersionStr = const $CopyWithPlaceholder(),
    Object? enableMetrics = const $CopyWithPlaceholder(),
    Object? enableNormalizedItemByNameIds = const $CopyWithPlaceholder(),
    Object? isPortAuthorized = const $CopyWithPlaceholder(),
    Object? quickConnectAvailable = const $CopyWithPlaceholder(),
    Object? enableCaseSensitiveItemIds = const $CopyWithPlaceholder(),
    Object? disableLiveTvChannelUserDataName = const $CopyWithPlaceholder(),
    Object? metadataPath = const $CopyWithPlaceholder(),
    Object? preferredMetadataLanguage = const $CopyWithPlaceholder(),
    Object? metadataCountryCode = const $CopyWithPlaceholder(),
    Object? sortReplaceCharacters = const $CopyWithPlaceholder(),
    Object? sortRemoveCharacters = const $CopyWithPlaceholder(),
    Object? sortRemoveWords = const $CopyWithPlaceholder(),
    Object? minResumePct = const $CopyWithPlaceholder(),
    Object? maxResumePct = const $CopyWithPlaceholder(),
    Object? minResumeDurationSeconds = const $CopyWithPlaceholder(),
    Object? minAudiobookResume = const $CopyWithPlaceholder(),
    Object? maxAudiobookResume = const $CopyWithPlaceholder(),
    Object? inactiveSessionThreshold = const $CopyWithPlaceholder(),
    Object? libraryMonitorDelay = const $CopyWithPlaceholder(),
    Object? libraryUpdateDuration = const $CopyWithPlaceholder(),
    Object? cacheSize = const $CopyWithPlaceholder(),
    Object? imageSavingConvention = const $CopyWithPlaceholder(),
    Object? metadataOptions = const $CopyWithPlaceholder(),
    Object? skipDeserializationForBasicTypes = const $CopyWithPlaceholder(),
    Object? serverName = const $CopyWithPlaceholder(),
    Object? uICulture = const $CopyWithPlaceholder(),
    Object? saveMetadataHidden = const $CopyWithPlaceholder(),
    Object? contentTypes = const $CopyWithPlaceholder(),
    Object? remoteClientBitrateLimit = const $CopyWithPlaceholder(),
    Object? enableFolderView = const $CopyWithPlaceholder(),
    Object? enableGroupingMoviesIntoCollections = const $CopyWithPlaceholder(),
    Object? enableGroupingShowsIntoCollections = const $CopyWithPlaceholder(),
    Object? displaySpecialsWithinSeasons = const $CopyWithPlaceholder(),
    Object? codecsUsed = const $CopyWithPlaceholder(),
    Object? pluginRepositories = const $CopyWithPlaceholder(),
    Object? enableExternalContentInSuggestions = const $CopyWithPlaceholder(),
    Object? imageExtractionTimeoutMs = const $CopyWithPlaceholder(),
    Object? pathSubstitutions = const $CopyWithPlaceholder(),
    Object? enableSlowResponseWarning = const $CopyWithPlaceholder(),
    Object? slowResponseThresholdMs = const $CopyWithPlaceholder(),
    Object? corsHosts = const $CopyWithPlaceholder(),
    Object? activityLogRetentionDays = const $CopyWithPlaceholder(),
    Object? libraryScanFanoutConcurrency = const $CopyWithPlaceholder(),
    Object? libraryMetadataRefreshConcurrency = const $CopyWithPlaceholder(),
    Object? allowClientLogUpload = const $CopyWithPlaceholder(),
    Object? dummyChapterDuration = const $CopyWithPlaceholder(),
    Object? chapterImageResolution = const $CopyWithPlaceholder(),
    Object? parallelImageEncodingLimit = const $CopyWithPlaceholder(),
    Object? castReceiverApplications = const $CopyWithPlaceholder(),
    Object? trickplayOptions = const $CopyWithPlaceholder(),
    Object? enableLegacyAuthorization = const $CopyWithPlaceholder(),
  }) {
    return ServerConfiguration(
      logFileRetentionDays: logFileRetentionDays == const $CopyWithPlaceholder()
          ? _value.logFileRetentionDays
          // ignore: cast_nullable_to_non_nullable
          : logFileRetentionDays as int?,
      isStartupWizardCompleted:
          isStartupWizardCompleted == const $CopyWithPlaceholder()
          ? _value.isStartupWizardCompleted
          // ignore: cast_nullable_to_non_nullable
          : isStartupWizardCompleted as bool?,
      cachePath: cachePath == const $CopyWithPlaceholder()
          ? _value.cachePath
          // ignore: cast_nullable_to_non_nullable
          : cachePath as String?,
      previousVersion: previousVersion == const $CopyWithPlaceholder()
          ? _value.previousVersion
          // ignore: cast_nullable_to_non_nullable
          : previousVersion as String?,
      previousVersionStr: previousVersionStr == const $CopyWithPlaceholder()
          ? _value.previousVersionStr
          // ignore: cast_nullable_to_non_nullable
          : previousVersionStr as String?,
      enableMetrics: enableMetrics == const $CopyWithPlaceholder()
          ? _value.enableMetrics
          // ignore: cast_nullable_to_non_nullable
          : enableMetrics as bool?,
      enableNormalizedItemByNameIds:
          enableNormalizedItemByNameIds == const $CopyWithPlaceholder()
          ? _value.enableNormalizedItemByNameIds
          // ignore: cast_nullable_to_non_nullable
          : enableNormalizedItemByNameIds as bool?,
      isPortAuthorized: isPortAuthorized == const $CopyWithPlaceholder()
          ? _value.isPortAuthorized
          // ignore: cast_nullable_to_non_nullable
          : isPortAuthorized as bool?,
      quickConnectAvailable:
          quickConnectAvailable == const $CopyWithPlaceholder()
          ? _value.quickConnectAvailable
          // ignore: cast_nullable_to_non_nullable
          : quickConnectAvailable as bool?,
      enableCaseSensitiveItemIds:
          enableCaseSensitiveItemIds == const $CopyWithPlaceholder()
          ? _value.enableCaseSensitiveItemIds
          // ignore: cast_nullable_to_non_nullable
          : enableCaseSensitiveItemIds as bool?,
      disableLiveTvChannelUserDataName:
          disableLiveTvChannelUserDataName == const $CopyWithPlaceholder()
          ? _value.disableLiveTvChannelUserDataName
          // ignore: cast_nullable_to_non_nullable
          : disableLiveTvChannelUserDataName as bool?,
      metadataPath: metadataPath == const $CopyWithPlaceholder()
          ? _value.metadataPath
          // ignore: cast_nullable_to_non_nullable
          : metadataPath as String?,
      preferredMetadataLanguage:
          preferredMetadataLanguage == const $CopyWithPlaceholder()
          ? _value.preferredMetadataLanguage
          // ignore: cast_nullable_to_non_nullable
          : preferredMetadataLanguage as String?,
      metadataCountryCode: metadataCountryCode == const $CopyWithPlaceholder()
          ? _value.metadataCountryCode
          // ignore: cast_nullable_to_non_nullable
          : metadataCountryCode as String?,
      sortReplaceCharacters:
          sortReplaceCharacters == const $CopyWithPlaceholder()
          ? _value.sortReplaceCharacters
          // ignore: cast_nullable_to_non_nullable
          : sortReplaceCharacters as List<String>?,
      sortRemoveCharacters: sortRemoveCharacters == const $CopyWithPlaceholder()
          ? _value.sortRemoveCharacters
          // ignore: cast_nullable_to_non_nullable
          : sortRemoveCharacters as List<String>?,
      sortRemoveWords: sortRemoveWords == const $CopyWithPlaceholder()
          ? _value.sortRemoveWords
          // ignore: cast_nullable_to_non_nullable
          : sortRemoveWords as List<String>?,
      minResumePct: minResumePct == const $CopyWithPlaceholder()
          ? _value.minResumePct
          // ignore: cast_nullable_to_non_nullable
          : minResumePct as int?,
      maxResumePct: maxResumePct == const $CopyWithPlaceholder()
          ? _value.maxResumePct
          // ignore: cast_nullable_to_non_nullable
          : maxResumePct as int?,
      minResumeDurationSeconds:
          minResumeDurationSeconds == const $CopyWithPlaceholder()
          ? _value.minResumeDurationSeconds
          // ignore: cast_nullable_to_non_nullable
          : minResumeDurationSeconds as int?,
      minAudiobookResume: minAudiobookResume == const $CopyWithPlaceholder()
          ? _value.minAudiobookResume
          // ignore: cast_nullable_to_non_nullable
          : minAudiobookResume as int?,
      maxAudiobookResume: maxAudiobookResume == const $CopyWithPlaceholder()
          ? _value.maxAudiobookResume
          // ignore: cast_nullable_to_non_nullable
          : maxAudiobookResume as int?,
      inactiveSessionThreshold:
          inactiveSessionThreshold == const $CopyWithPlaceholder()
          ? _value.inactiveSessionThreshold
          // ignore: cast_nullable_to_non_nullable
          : inactiveSessionThreshold as int?,
      libraryMonitorDelay: libraryMonitorDelay == const $CopyWithPlaceholder()
          ? _value.libraryMonitorDelay
          // ignore: cast_nullable_to_non_nullable
          : libraryMonitorDelay as int?,
      libraryUpdateDuration:
          libraryUpdateDuration == const $CopyWithPlaceholder()
          ? _value.libraryUpdateDuration
          // ignore: cast_nullable_to_non_nullable
          : libraryUpdateDuration as int?,
      cacheSize: cacheSize == const $CopyWithPlaceholder()
          ? _value.cacheSize
          // ignore: cast_nullable_to_non_nullable
          : cacheSize as int?,
      imageSavingConvention:
          imageSavingConvention == const $CopyWithPlaceholder()
          ? _value.imageSavingConvention
          // ignore: cast_nullable_to_non_nullable
          : imageSavingConvention as ImageSavingConvention?,
      metadataOptions: metadataOptions == const $CopyWithPlaceholder()
          ? _value.metadataOptions
          // ignore: cast_nullable_to_non_nullable
          : metadataOptions as List<MetadataOptions>?,
      skipDeserializationForBasicTypes:
          skipDeserializationForBasicTypes == const $CopyWithPlaceholder()
          ? _value.skipDeserializationForBasicTypes
          // ignore: cast_nullable_to_non_nullable
          : skipDeserializationForBasicTypes as bool?,
      serverName: serverName == const $CopyWithPlaceholder()
          ? _value.serverName
          // ignore: cast_nullable_to_non_nullable
          : serverName as String?,
      uICulture: uICulture == const $CopyWithPlaceholder()
          ? _value.uICulture
          // ignore: cast_nullable_to_non_nullable
          : uICulture as String?,
      saveMetadataHidden: saveMetadataHidden == const $CopyWithPlaceholder()
          ? _value.saveMetadataHidden
          // ignore: cast_nullable_to_non_nullable
          : saveMetadataHidden as bool?,
      contentTypes: contentTypes == const $CopyWithPlaceholder()
          ? _value.contentTypes
          // ignore: cast_nullable_to_non_nullable
          : contentTypes as List<NameValuePair>?,
      remoteClientBitrateLimit:
          remoteClientBitrateLimit == const $CopyWithPlaceholder()
          ? _value.remoteClientBitrateLimit
          // ignore: cast_nullable_to_non_nullable
          : remoteClientBitrateLimit as int?,
      enableFolderView: enableFolderView == const $CopyWithPlaceholder()
          ? _value.enableFolderView
          // ignore: cast_nullable_to_non_nullable
          : enableFolderView as bool?,
      enableGroupingMoviesIntoCollections:
          enableGroupingMoviesIntoCollections == const $CopyWithPlaceholder()
          ? _value.enableGroupingMoviesIntoCollections
          // ignore: cast_nullable_to_non_nullable
          : enableGroupingMoviesIntoCollections as bool?,
      enableGroupingShowsIntoCollections:
          enableGroupingShowsIntoCollections == const $CopyWithPlaceholder()
          ? _value.enableGroupingShowsIntoCollections
          // ignore: cast_nullable_to_non_nullable
          : enableGroupingShowsIntoCollections as bool?,
      displaySpecialsWithinSeasons:
          displaySpecialsWithinSeasons == const $CopyWithPlaceholder()
          ? _value.displaySpecialsWithinSeasons
          // ignore: cast_nullable_to_non_nullable
          : displaySpecialsWithinSeasons as bool?,
      codecsUsed: codecsUsed == const $CopyWithPlaceholder()
          ? _value.codecsUsed
          // ignore: cast_nullable_to_non_nullable
          : codecsUsed as List<String>?,
      pluginRepositories: pluginRepositories == const $CopyWithPlaceholder()
          ? _value.pluginRepositories
          // ignore: cast_nullable_to_non_nullable
          : pluginRepositories as List<RepositoryInfo>?,
      enableExternalContentInSuggestions:
          enableExternalContentInSuggestions == const $CopyWithPlaceholder()
          ? _value.enableExternalContentInSuggestions
          // ignore: cast_nullable_to_non_nullable
          : enableExternalContentInSuggestions as bool?,
      imageExtractionTimeoutMs:
          imageExtractionTimeoutMs == const $CopyWithPlaceholder()
          ? _value.imageExtractionTimeoutMs
          // ignore: cast_nullable_to_non_nullable
          : imageExtractionTimeoutMs as int?,
      pathSubstitutions: pathSubstitutions == const $CopyWithPlaceholder()
          ? _value.pathSubstitutions
          // ignore: cast_nullable_to_non_nullable
          : pathSubstitutions as List<PathSubstitution>?,
      enableSlowResponseWarning:
          enableSlowResponseWarning == const $CopyWithPlaceholder()
          ? _value.enableSlowResponseWarning
          // ignore: cast_nullable_to_non_nullable
          : enableSlowResponseWarning as bool?,
      slowResponseThresholdMs:
          slowResponseThresholdMs == const $CopyWithPlaceholder()
          ? _value.slowResponseThresholdMs
          // ignore: cast_nullable_to_non_nullable
          : slowResponseThresholdMs as int?,
      corsHosts: corsHosts == const $CopyWithPlaceholder()
          ? _value.corsHosts
          // ignore: cast_nullable_to_non_nullable
          : corsHosts as List<String>?,
      activityLogRetentionDays:
          activityLogRetentionDays == const $CopyWithPlaceholder()
          ? _value.activityLogRetentionDays
          // ignore: cast_nullable_to_non_nullable
          : activityLogRetentionDays as int?,
      libraryScanFanoutConcurrency:
          libraryScanFanoutConcurrency == const $CopyWithPlaceholder()
          ? _value.libraryScanFanoutConcurrency
          // ignore: cast_nullable_to_non_nullable
          : libraryScanFanoutConcurrency as int?,
      libraryMetadataRefreshConcurrency:
          libraryMetadataRefreshConcurrency == const $CopyWithPlaceholder()
          ? _value.libraryMetadataRefreshConcurrency
          // ignore: cast_nullable_to_non_nullable
          : libraryMetadataRefreshConcurrency as int?,
      allowClientLogUpload: allowClientLogUpload == const $CopyWithPlaceholder()
          ? _value.allowClientLogUpload
          // ignore: cast_nullable_to_non_nullable
          : allowClientLogUpload as bool?,
      dummyChapterDuration: dummyChapterDuration == const $CopyWithPlaceholder()
          ? _value.dummyChapterDuration
          // ignore: cast_nullable_to_non_nullable
          : dummyChapterDuration as int?,
      chapterImageResolution:
          chapterImageResolution == const $CopyWithPlaceholder()
          ? _value.chapterImageResolution
          // ignore: cast_nullable_to_non_nullable
          : chapterImageResolution as ImageResolution?,
      parallelImageEncodingLimit:
          parallelImageEncodingLimit == const $CopyWithPlaceholder()
          ? _value.parallelImageEncodingLimit
          // ignore: cast_nullable_to_non_nullable
          : parallelImageEncodingLimit as int?,
      castReceiverApplications:
          castReceiverApplications == const $CopyWithPlaceholder()
          ? _value.castReceiverApplications
          // ignore: cast_nullable_to_non_nullable
          : castReceiverApplications as List<CastReceiverApplication>?,
      trickplayOptions: trickplayOptions == const $CopyWithPlaceholder()
          ? _value.trickplayOptions
          // ignore: cast_nullable_to_non_nullable
          : trickplayOptions as TrickplayOptions?,
      enableLegacyAuthorization:
          enableLegacyAuthorization == const $CopyWithPlaceholder()
          ? _value.enableLegacyAuthorization
          // ignore: cast_nullable_to_non_nullable
          : enableLegacyAuthorization as bool?,
    );
  }
}

extension $ServerConfigurationCopyWith on ServerConfiguration {
  /// Returns a callable class that can be used as follows: `instanceOfServerConfiguration.copyWith(...)` or like so:`instanceOfServerConfiguration.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ServerConfigurationCWProxy get copyWith =>
      _$ServerConfigurationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerConfiguration _$ServerConfigurationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ServerConfiguration',
  json,
  ($checkedConvert) {
    final val = ServerConfiguration(
      logFileRetentionDays: $checkedConvert(
        'LogFileRetentionDays',
        (v) => (v as num?)?.toInt(),
      ),
      isStartupWizardCompleted: $checkedConvert(
        'IsStartupWizardCompleted',
        (v) => v as bool?,
      ),
      cachePath: $checkedConvert('CachePath', (v) => v as String?),
      previousVersion: $checkedConvert('PreviousVersion', (v) => v as String?),
      previousVersionStr: $checkedConvert(
        'PreviousVersionStr',
        (v) => v as String?,
      ),
      enableMetrics: $checkedConvert('EnableMetrics', (v) => v as bool?),
      enableNormalizedItemByNameIds: $checkedConvert(
        'EnableNormalizedItemByNameIds',
        (v) => v as bool?,
      ),
      isPortAuthorized: $checkedConvert('IsPortAuthorized', (v) => v as bool?),
      quickConnectAvailable: $checkedConvert(
        'QuickConnectAvailable',
        (v) => v as bool?,
      ),
      enableCaseSensitiveItemIds: $checkedConvert(
        'EnableCaseSensitiveItemIds',
        (v) => v as bool?,
      ),
      disableLiveTvChannelUserDataName: $checkedConvert(
        'DisableLiveTvChannelUserDataName',
        (v) => v as bool?,
      ),
      metadataPath: $checkedConvert('MetadataPath', (v) => v as String?),
      preferredMetadataLanguage: $checkedConvert(
        'PreferredMetadataLanguage',
        (v) => v as String?,
      ),
      metadataCountryCode: $checkedConvert(
        'MetadataCountryCode',
        (v) => v as String?,
      ),
      sortReplaceCharacters: $checkedConvert(
        'SortReplaceCharacters',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      sortRemoveCharacters: $checkedConvert(
        'SortRemoveCharacters',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      sortRemoveWords: $checkedConvert(
        'SortRemoveWords',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      minResumePct: $checkedConvert(
        'MinResumePct',
        (v) => (v as num?)?.toInt(),
      ),
      maxResumePct: $checkedConvert(
        'MaxResumePct',
        (v) => (v as num?)?.toInt(),
      ),
      minResumeDurationSeconds: $checkedConvert(
        'MinResumeDurationSeconds',
        (v) => (v as num?)?.toInt(),
      ),
      minAudiobookResume: $checkedConvert(
        'MinAudiobookResume',
        (v) => (v as num?)?.toInt(),
      ),
      maxAudiobookResume: $checkedConvert(
        'MaxAudiobookResume',
        (v) => (v as num?)?.toInt(),
      ),
      inactiveSessionThreshold: $checkedConvert(
        'InactiveSessionThreshold',
        (v) => (v as num?)?.toInt(),
      ),
      libraryMonitorDelay: $checkedConvert(
        'LibraryMonitorDelay',
        (v) => (v as num?)?.toInt(),
      ),
      libraryUpdateDuration: $checkedConvert(
        'LibraryUpdateDuration',
        (v) => (v as num?)?.toInt(),
      ),
      cacheSize: $checkedConvert('CacheSize', (v) => (v as num?)?.toInt()),
      imageSavingConvention: $checkedConvert(
        'ImageSavingConvention',
        (v) => $enumDecodeNullable(_$ImageSavingConventionEnumMap, v),
      ),
      metadataOptions: $checkedConvert(
        'MetadataOptions',
        (v) => (v as List<dynamic>?)
            ?.map((e) => MetadataOptions.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      skipDeserializationForBasicTypes: $checkedConvert(
        'SkipDeserializationForBasicTypes',
        (v) => v as bool?,
      ),
      serverName: $checkedConvert('ServerName', (v) => v as String?),
      uICulture: $checkedConvert('UICulture', (v) => v as String?),
      saveMetadataHidden: $checkedConvert(
        'SaveMetadataHidden',
        (v) => v as bool?,
      ),
      contentTypes: $checkedConvert(
        'ContentTypes',
        (v) => (v as List<dynamic>?)
            ?.map((e) => NameValuePair.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      remoteClientBitrateLimit: $checkedConvert(
        'RemoteClientBitrateLimit',
        (v) => (v as num?)?.toInt(),
      ),
      enableFolderView: $checkedConvert('EnableFolderView', (v) => v as bool?),
      enableGroupingMoviesIntoCollections: $checkedConvert(
        'EnableGroupingMoviesIntoCollections',
        (v) => v as bool?,
      ),
      enableGroupingShowsIntoCollections: $checkedConvert(
        'EnableGroupingShowsIntoCollections',
        (v) => v as bool?,
      ),
      displaySpecialsWithinSeasons: $checkedConvert(
        'DisplaySpecialsWithinSeasons',
        (v) => v as bool?,
      ),
      codecsUsed: $checkedConvert(
        'CodecsUsed',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      pluginRepositories: $checkedConvert(
        'PluginRepositories',
        (v) => (v as List<dynamic>?)
            ?.map((e) => RepositoryInfo.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      enableExternalContentInSuggestions: $checkedConvert(
        'EnableExternalContentInSuggestions',
        (v) => v as bool?,
      ),
      imageExtractionTimeoutMs: $checkedConvert(
        'ImageExtractionTimeoutMs',
        (v) => (v as num?)?.toInt(),
      ),
      pathSubstitutions: $checkedConvert(
        'PathSubstitutions',
        (v) => (v as List<dynamic>?)
            ?.map((e) => PathSubstitution.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      enableSlowResponseWarning: $checkedConvert(
        'EnableSlowResponseWarning',
        (v) => v as bool?,
      ),
      slowResponseThresholdMs: $checkedConvert(
        'SlowResponseThresholdMs',
        (v) => (v as num?)?.toInt(),
      ),
      corsHosts: $checkedConvert(
        'CorsHosts',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      activityLogRetentionDays: $checkedConvert(
        'ActivityLogRetentionDays',
        (v) => (v as num?)?.toInt(),
      ),
      libraryScanFanoutConcurrency: $checkedConvert(
        'LibraryScanFanoutConcurrency',
        (v) => (v as num?)?.toInt(),
      ),
      libraryMetadataRefreshConcurrency: $checkedConvert(
        'LibraryMetadataRefreshConcurrency',
        (v) => (v as num?)?.toInt(),
      ),
      allowClientLogUpload: $checkedConvert(
        'AllowClientLogUpload',
        (v) => v as bool?,
      ),
      dummyChapterDuration: $checkedConvert(
        'DummyChapterDuration',
        (v) => (v as num?)?.toInt(),
      ),
      chapterImageResolution: $checkedConvert(
        'ChapterImageResolution',
        (v) => $enumDecodeNullable(_$ImageResolutionEnumMap, v),
      ),
      parallelImageEncodingLimit: $checkedConvert(
        'ParallelImageEncodingLimit',
        (v) => (v as num?)?.toInt(),
      ),
      castReceiverApplications: $checkedConvert(
        'CastReceiverApplications',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) =>
                  CastReceiverApplication.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      trickplayOptions: $checkedConvert(
        'TrickplayOptions',
        (v) => v == null
            ? null
            : TrickplayOptions.fromJson(v as Map<String, dynamic>),
      ),
      enableLegacyAuthorization: $checkedConvert(
        'EnableLegacyAuthorization',
        (v) => v as bool?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'logFileRetentionDays': 'LogFileRetentionDays',
    'isStartupWizardCompleted': 'IsStartupWizardCompleted',
    'cachePath': 'CachePath',
    'previousVersion': 'PreviousVersion',
    'previousVersionStr': 'PreviousVersionStr',
    'enableMetrics': 'EnableMetrics',
    'enableNormalizedItemByNameIds': 'EnableNormalizedItemByNameIds',
    'isPortAuthorized': 'IsPortAuthorized',
    'quickConnectAvailable': 'QuickConnectAvailable',
    'enableCaseSensitiveItemIds': 'EnableCaseSensitiveItemIds',
    'disableLiveTvChannelUserDataName': 'DisableLiveTvChannelUserDataName',
    'metadataPath': 'MetadataPath',
    'preferredMetadataLanguage': 'PreferredMetadataLanguage',
    'metadataCountryCode': 'MetadataCountryCode',
    'sortReplaceCharacters': 'SortReplaceCharacters',
    'sortRemoveCharacters': 'SortRemoveCharacters',
    'sortRemoveWords': 'SortRemoveWords',
    'minResumePct': 'MinResumePct',
    'maxResumePct': 'MaxResumePct',
    'minResumeDurationSeconds': 'MinResumeDurationSeconds',
    'minAudiobookResume': 'MinAudiobookResume',
    'maxAudiobookResume': 'MaxAudiobookResume',
    'inactiveSessionThreshold': 'InactiveSessionThreshold',
    'libraryMonitorDelay': 'LibraryMonitorDelay',
    'libraryUpdateDuration': 'LibraryUpdateDuration',
    'cacheSize': 'CacheSize',
    'imageSavingConvention': 'ImageSavingConvention',
    'metadataOptions': 'MetadataOptions',
    'skipDeserializationForBasicTypes': 'SkipDeserializationForBasicTypes',
    'serverName': 'ServerName',
    'uICulture': 'UICulture',
    'saveMetadataHidden': 'SaveMetadataHidden',
    'contentTypes': 'ContentTypes',
    'remoteClientBitrateLimit': 'RemoteClientBitrateLimit',
    'enableFolderView': 'EnableFolderView',
    'enableGroupingMoviesIntoCollections':
        'EnableGroupingMoviesIntoCollections',
    'enableGroupingShowsIntoCollections': 'EnableGroupingShowsIntoCollections',
    'displaySpecialsWithinSeasons': 'DisplaySpecialsWithinSeasons',
    'codecsUsed': 'CodecsUsed',
    'pluginRepositories': 'PluginRepositories',
    'enableExternalContentInSuggestions': 'EnableExternalContentInSuggestions',
    'imageExtractionTimeoutMs': 'ImageExtractionTimeoutMs',
    'pathSubstitutions': 'PathSubstitutions',
    'enableSlowResponseWarning': 'EnableSlowResponseWarning',
    'slowResponseThresholdMs': 'SlowResponseThresholdMs',
    'corsHosts': 'CorsHosts',
    'activityLogRetentionDays': 'ActivityLogRetentionDays',
    'libraryScanFanoutConcurrency': 'LibraryScanFanoutConcurrency',
    'libraryMetadataRefreshConcurrency': 'LibraryMetadataRefreshConcurrency',
    'allowClientLogUpload': 'AllowClientLogUpload',
    'dummyChapterDuration': 'DummyChapterDuration',
    'chapterImageResolution': 'ChapterImageResolution',
    'parallelImageEncodingLimit': 'ParallelImageEncodingLimit',
    'castReceiverApplications': 'CastReceiverApplications',
    'trickplayOptions': 'TrickplayOptions',
    'enableLegacyAuthorization': 'EnableLegacyAuthorization',
  },
);

Map<String, dynamic> _$ServerConfigurationToJson(
  ServerConfiguration instance,
) => <String, dynamic>{
  'LogFileRetentionDays': ?instance.logFileRetentionDays,
  'IsStartupWizardCompleted': ?instance.isStartupWizardCompleted,
  'CachePath': ?instance.cachePath,
  'PreviousVersion': ?instance.previousVersion,
  'PreviousVersionStr': ?instance.previousVersionStr,
  'EnableMetrics': ?instance.enableMetrics,
  'EnableNormalizedItemByNameIds': ?instance.enableNormalizedItemByNameIds,
  'IsPortAuthorized': ?instance.isPortAuthorized,
  'QuickConnectAvailable': ?instance.quickConnectAvailable,
  'EnableCaseSensitiveItemIds': ?instance.enableCaseSensitiveItemIds,
  'DisableLiveTvChannelUserDataName':
      ?instance.disableLiveTvChannelUserDataName,
  'MetadataPath': ?instance.metadataPath,
  'PreferredMetadataLanguage': ?instance.preferredMetadataLanguage,
  'MetadataCountryCode': ?instance.metadataCountryCode,
  'SortReplaceCharacters': ?instance.sortReplaceCharacters,
  'SortRemoveCharacters': ?instance.sortRemoveCharacters,
  'SortRemoveWords': ?instance.sortRemoveWords,
  'MinResumePct': ?instance.minResumePct,
  'MaxResumePct': ?instance.maxResumePct,
  'MinResumeDurationSeconds': ?instance.minResumeDurationSeconds,
  'MinAudiobookResume': ?instance.minAudiobookResume,
  'MaxAudiobookResume': ?instance.maxAudiobookResume,
  'InactiveSessionThreshold': ?instance.inactiveSessionThreshold,
  'LibraryMonitorDelay': ?instance.libraryMonitorDelay,
  'LibraryUpdateDuration': ?instance.libraryUpdateDuration,
  'CacheSize': ?instance.cacheSize,
  'ImageSavingConvention':
      ?_$ImageSavingConventionEnumMap[instance.imageSavingConvention],
  'MetadataOptions': ?instance.metadataOptions?.map((e) => e.toJson()).toList(),
  'SkipDeserializationForBasicTypes':
      ?instance.skipDeserializationForBasicTypes,
  'ServerName': ?instance.serverName,
  'UICulture': ?instance.uICulture,
  'SaveMetadataHidden': ?instance.saveMetadataHidden,
  'ContentTypes': ?instance.contentTypes?.map((e) => e.toJson()).toList(),
  'RemoteClientBitrateLimit': ?instance.remoteClientBitrateLimit,
  'EnableFolderView': ?instance.enableFolderView,
  'EnableGroupingMoviesIntoCollections':
      ?instance.enableGroupingMoviesIntoCollections,
  'EnableGroupingShowsIntoCollections':
      ?instance.enableGroupingShowsIntoCollections,
  'DisplaySpecialsWithinSeasons': ?instance.displaySpecialsWithinSeasons,
  'CodecsUsed': ?instance.codecsUsed,
  'PluginRepositories': ?instance.pluginRepositories
      ?.map((e) => e.toJson())
      .toList(),
  'EnableExternalContentInSuggestions':
      ?instance.enableExternalContentInSuggestions,
  'ImageExtractionTimeoutMs': ?instance.imageExtractionTimeoutMs,
  'PathSubstitutions': ?instance.pathSubstitutions
      ?.map((e) => e.toJson())
      .toList(),
  'EnableSlowResponseWarning': ?instance.enableSlowResponseWarning,
  'SlowResponseThresholdMs': ?instance.slowResponseThresholdMs,
  'CorsHosts': ?instance.corsHosts,
  'ActivityLogRetentionDays': ?instance.activityLogRetentionDays,
  'LibraryScanFanoutConcurrency': ?instance.libraryScanFanoutConcurrency,
  'LibraryMetadataRefreshConcurrency':
      ?instance.libraryMetadataRefreshConcurrency,
  'AllowClientLogUpload': ?instance.allowClientLogUpload,
  'DummyChapterDuration': ?instance.dummyChapterDuration,
  'ChapterImageResolution':
      ?_$ImageResolutionEnumMap[instance.chapterImageResolution],
  'ParallelImageEncodingLimit': ?instance.parallelImageEncodingLimit,
  'CastReceiverApplications': ?instance.castReceiverApplications
      ?.map((e) => e.toJson())
      .toList(),
  'TrickplayOptions': ?instance.trickplayOptions?.toJson(),
  'EnableLegacyAuthorization': ?instance.enableLegacyAuthorization,
};

const _$ImageSavingConventionEnumMap = {
  ImageSavingConvention.legacy: 'Legacy',
  ImageSavingConvention.compatible: 'Compatible',
};

const _$ImageResolutionEnumMap = {
  ImageResolution.matchSource: 'MatchSource',
  ImageResolution.p144: 'P144',
  ImageResolution.p240: 'P240',
  ImageResolution.p360: 'P360',
  ImageResolution.p480: 'P480',
  ImageResolution.p720: 'P720',
  ImageResolution.p1080: 'P1080',
  ImageResolution.p1440: 'P1440',
  ImageResolution.p2160: 'P2160',
};
