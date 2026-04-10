// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LibraryOptionsCWProxy {
  LibraryOptions enabled(bool? enabled);

  LibraryOptions enablePhotos(bool? enablePhotos);

  LibraryOptions enableRealtimeMonitor(bool? enableRealtimeMonitor);

  LibraryOptions enableLUFSScan(bool? enableLUFSScan);

  LibraryOptions enableChapterImageExtraction(
    bool? enableChapterImageExtraction,
  );

  LibraryOptions extractChapterImagesDuringLibraryScan(
    bool? extractChapterImagesDuringLibraryScan,
  );

  LibraryOptions enableTrickplayImageExtraction(
    bool? enableTrickplayImageExtraction,
  );

  LibraryOptions extractTrickplayImagesDuringLibraryScan(
    bool? extractTrickplayImagesDuringLibraryScan,
  );

  LibraryOptions pathInfos(List<MediaPathInfo>? pathInfos);

  LibraryOptions saveLocalMetadata(bool? saveLocalMetadata);

  LibraryOptions enableInternetProviders(bool? enableInternetProviders);

  LibraryOptions enableAutomaticSeriesGrouping(
    bool? enableAutomaticSeriesGrouping,
  );

  LibraryOptions enableEmbeddedTitles(bool? enableEmbeddedTitles);

  LibraryOptions enableEmbeddedExtrasTitles(bool? enableEmbeddedExtrasTitles);

  LibraryOptions enableEmbeddedEpisodeInfos(bool? enableEmbeddedEpisodeInfos);

  LibraryOptions automaticRefreshIntervalDays(
    int? automaticRefreshIntervalDays,
  );

  LibraryOptions preferredMetadataLanguage(String? preferredMetadataLanguage);

  LibraryOptions metadataCountryCode(String? metadataCountryCode);

  LibraryOptions seasonZeroDisplayName(String? seasonZeroDisplayName);

  LibraryOptions metadataSavers(List<String>? metadataSavers);

  LibraryOptions disabledLocalMetadataReaders(
    List<String>? disabledLocalMetadataReaders,
  );

  LibraryOptions localMetadataReaderOrder(
    List<String>? localMetadataReaderOrder,
  );

  LibraryOptions disabledSubtitleFetchers(
    List<String>? disabledSubtitleFetchers,
  );

  LibraryOptions subtitleFetcherOrder(List<String>? subtitleFetcherOrder);

  LibraryOptions disabledMediaSegmentProviders(
    List<String>? disabledMediaSegmentProviders,
  );

  LibraryOptions mediaSegmentProviderOrder(
    List<String>? mediaSegmentProviderOrder,
  );

  LibraryOptions skipSubtitlesIfEmbeddedSubtitlesPresent(
    bool? skipSubtitlesIfEmbeddedSubtitlesPresent,
  );

  LibraryOptions skipSubtitlesIfAudioTrackMatches(
    bool? skipSubtitlesIfAudioTrackMatches,
  );

  LibraryOptions subtitleDownloadLanguages(
    List<String>? subtitleDownloadLanguages,
  );

  LibraryOptions requirePerfectSubtitleMatch(bool? requirePerfectSubtitleMatch);

  LibraryOptions saveSubtitlesWithMedia(bool? saveSubtitlesWithMedia);

  LibraryOptions saveLyricsWithMedia(bool? saveLyricsWithMedia);

  LibraryOptions saveTrickplayWithMedia(bool? saveTrickplayWithMedia);

  LibraryOptions disabledLyricFetchers(List<String>? disabledLyricFetchers);

  LibraryOptions lyricFetcherOrder(List<String>? lyricFetcherOrder);

  LibraryOptions preferNonstandardArtistsTag(bool? preferNonstandardArtistsTag);

  LibraryOptions useCustomTagDelimiters(bool? useCustomTagDelimiters);

  LibraryOptions customTagDelimiters(List<String>? customTagDelimiters);

  LibraryOptions delimiterWhitelist(List<String>? delimiterWhitelist);

  LibraryOptions automaticallyAddToCollection(
    bool? automaticallyAddToCollection,
  );

  LibraryOptions allowEmbeddedSubtitles(
    EmbeddedSubtitleOptions? allowEmbeddedSubtitles,
  );

  LibraryOptions typeOptions(List<TypeOptions>? typeOptions);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LibraryOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LibraryOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  LibraryOptions call({
    bool? enabled,
    bool? enablePhotos,
    bool? enableRealtimeMonitor,
    bool? enableLUFSScan,
    bool? enableChapterImageExtraction,
    bool? extractChapterImagesDuringLibraryScan,
    bool? enableTrickplayImageExtraction,
    bool? extractTrickplayImagesDuringLibraryScan,
    List<MediaPathInfo>? pathInfos,
    bool? saveLocalMetadata,
    bool? enableInternetProviders,
    bool? enableAutomaticSeriesGrouping,
    bool? enableEmbeddedTitles,
    bool? enableEmbeddedExtrasTitles,
    bool? enableEmbeddedEpisodeInfos,
    int? automaticRefreshIntervalDays,
    String? preferredMetadataLanguage,
    String? metadataCountryCode,
    String? seasonZeroDisplayName,
    List<String>? metadataSavers,
    List<String>? disabledLocalMetadataReaders,
    List<String>? localMetadataReaderOrder,
    List<String>? disabledSubtitleFetchers,
    List<String>? subtitleFetcherOrder,
    List<String>? disabledMediaSegmentProviders,
    List<String>? mediaSegmentProviderOrder,
    bool? skipSubtitlesIfEmbeddedSubtitlesPresent,
    bool? skipSubtitlesIfAudioTrackMatches,
    List<String>? subtitleDownloadLanguages,
    bool? requirePerfectSubtitleMatch,
    bool? saveSubtitlesWithMedia,
    bool? saveLyricsWithMedia,
    bool? saveTrickplayWithMedia,
    List<String>? disabledLyricFetchers,
    List<String>? lyricFetcherOrder,
    bool? preferNonstandardArtistsTag,
    bool? useCustomTagDelimiters,
    List<String>? customTagDelimiters,
    List<String>? delimiterWhitelist,
    bool? automaticallyAddToCollection,
    EmbeddedSubtitleOptions? allowEmbeddedSubtitles,
    List<TypeOptions>? typeOptions,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLibraryOptions.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLibraryOptions.copyWith.fieldName(...)`
class _$LibraryOptionsCWProxyImpl implements _$LibraryOptionsCWProxy {
  const _$LibraryOptionsCWProxyImpl(this._value);

  final LibraryOptions _value;

  @override
  LibraryOptions enabled(bool? enabled) => this(enabled: enabled);

  @override
  LibraryOptions enablePhotos(bool? enablePhotos) =>
      this(enablePhotos: enablePhotos);

  @override
  LibraryOptions enableRealtimeMonitor(bool? enableRealtimeMonitor) =>
      this(enableRealtimeMonitor: enableRealtimeMonitor);

  @override
  LibraryOptions enableLUFSScan(bool? enableLUFSScan) =>
      this(enableLUFSScan: enableLUFSScan);

  @override
  LibraryOptions enableChapterImageExtraction(
    bool? enableChapterImageExtraction,
  ) => this(enableChapterImageExtraction: enableChapterImageExtraction);

  @override
  LibraryOptions extractChapterImagesDuringLibraryScan(
    bool? extractChapterImagesDuringLibraryScan,
  ) => this(
    extractChapterImagesDuringLibraryScan:
        extractChapterImagesDuringLibraryScan,
  );

  @override
  LibraryOptions enableTrickplayImageExtraction(
    bool? enableTrickplayImageExtraction,
  ) => this(enableTrickplayImageExtraction: enableTrickplayImageExtraction);

  @override
  LibraryOptions extractTrickplayImagesDuringLibraryScan(
    bool? extractTrickplayImagesDuringLibraryScan,
  ) => this(
    extractTrickplayImagesDuringLibraryScan:
        extractTrickplayImagesDuringLibraryScan,
  );

  @override
  LibraryOptions pathInfos(List<MediaPathInfo>? pathInfos) =>
      this(pathInfos: pathInfos);

  @override
  LibraryOptions saveLocalMetadata(bool? saveLocalMetadata) =>
      this(saveLocalMetadata: saveLocalMetadata);

  @override
  LibraryOptions enableInternetProviders(bool? enableInternetProviders) =>
      this(enableInternetProviders: enableInternetProviders);

  @override
  LibraryOptions enableAutomaticSeriesGrouping(
    bool? enableAutomaticSeriesGrouping,
  ) => this(enableAutomaticSeriesGrouping: enableAutomaticSeriesGrouping);

  @override
  LibraryOptions enableEmbeddedTitles(bool? enableEmbeddedTitles) =>
      this(enableEmbeddedTitles: enableEmbeddedTitles);

  @override
  LibraryOptions enableEmbeddedExtrasTitles(bool? enableEmbeddedExtrasTitles) =>
      this(enableEmbeddedExtrasTitles: enableEmbeddedExtrasTitles);

  @override
  LibraryOptions enableEmbeddedEpisodeInfos(bool? enableEmbeddedEpisodeInfos) =>
      this(enableEmbeddedEpisodeInfos: enableEmbeddedEpisodeInfos);

  @override
  LibraryOptions automaticRefreshIntervalDays(
    int? automaticRefreshIntervalDays,
  ) => this(automaticRefreshIntervalDays: automaticRefreshIntervalDays);

  @override
  LibraryOptions preferredMetadataLanguage(String? preferredMetadataLanguage) =>
      this(preferredMetadataLanguage: preferredMetadataLanguage);

  @override
  LibraryOptions metadataCountryCode(String? metadataCountryCode) =>
      this(metadataCountryCode: metadataCountryCode);

  @override
  LibraryOptions seasonZeroDisplayName(String? seasonZeroDisplayName) =>
      this(seasonZeroDisplayName: seasonZeroDisplayName);

  @override
  LibraryOptions metadataSavers(List<String>? metadataSavers) =>
      this(metadataSavers: metadataSavers);

  @override
  LibraryOptions disabledLocalMetadataReaders(
    List<String>? disabledLocalMetadataReaders,
  ) => this(disabledLocalMetadataReaders: disabledLocalMetadataReaders);

  @override
  LibraryOptions localMetadataReaderOrder(
    List<String>? localMetadataReaderOrder,
  ) => this(localMetadataReaderOrder: localMetadataReaderOrder);

  @override
  LibraryOptions disabledSubtitleFetchers(
    List<String>? disabledSubtitleFetchers,
  ) => this(disabledSubtitleFetchers: disabledSubtitleFetchers);

  @override
  LibraryOptions subtitleFetcherOrder(List<String>? subtitleFetcherOrder) =>
      this(subtitleFetcherOrder: subtitleFetcherOrder);

  @override
  LibraryOptions disabledMediaSegmentProviders(
    List<String>? disabledMediaSegmentProviders,
  ) => this(disabledMediaSegmentProviders: disabledMediaSegmentProviders);

  @override
  LibraryOptions mediaSegmentProviderOrder(
    List<String>? mediaSegmentProviderOrder,
  ) => this(mediaSegmentProviderOrder: mediaSegmentProviderOrder);

  @override
  LibraryOptions skipSubtitlesIfEmbeddedSubtitlesPresent(
    bool? skipSubtitlesIfEmbeddedSubtitlesPresent,
  ) => this(
    skipSubtitlesIfEmbeddedSubtitlesPresent:
        skipSubtitlesIfEmbeddedSubtitlesPresent,
  );

  @override
  LibraryOptions skipSubtitlesIfAudioTrackMatches(
    bool? skipSubtitlesIfAudioTrackMatches,
  ) => this(skipSubtitlesIfAudioTrackMatches: skipSubtitlesIfAudioTrackMatches);

  @override
  LibraryOptions subtitleDownloadLanguages(
    List<String>? subtitleDownloadLanguages,
  ) => this(subtitleDownloadLanguages: subtitleDownloadLanguages);

  @override
  LibraryOptions requirePerfectSubtitleMatch(
    bool? requirePerfectSubtitleMatch,
  ) => this(requirePerfectSubtitleMatch: requirePerfectSubtitleMatch);

  @override
  LibraryOptions saveSubtitlesWithMedia(bool? saveSubtitlesWithMedia) =>
      this(saveSubtitlesWithMedia: saveSubtitlesWithMedia);

  @override
  LibraryOptions saveLyricsWithMedia(bool? saveLyricsWithMedia) =>
      this(saveLyricsWithMedia: saveLyricsWithMedia);

  @override
  LibraryOptions saveTrickplayWithMedia(bool? saveTrickplayWithMedia) =>
      this(saveTrickplayWithMedia: saveTrickplayWithMedia);

  @override
  LibraryOptions disabledLyricFetchers(List<String>? disabledLyricFetchers) =>
      this(disabledLyricFetchers: disabledLyricFetchers);

  @override
  LibraryOptions lyricFetcherOrder(List<String>? lyricFetcherOrder) =>
      this(lyricFetcherOrder: lyricFetcherOrder);

  @override
  LibraryOptions preferNonstandardArtistsTag(
    bool? preferNonstandardArtistsTag,
  ) => this(preferNonstandardArtistsTag: preferNonstandardArtistsTag);

  @override
  LibraryOptions useCustomTagDelimiters(bool? useCustomTagDelimiters) =>
      this(useCustomTagDelimiters: useCustomTagDelimiters);

  @override
  LibraryOptions customTagDelimiters(List<String>? customTagDelimiters) =>
      this(customTagDelimiters: customTagDelimiters);

  @override
  LibraryOptions delimiterWhitelist(List<String>? delimiterWhitelist) =>
      this(delimiterWhitelist: delimiterWhitelist);

  @override
  LibraryOptions automaticallyAddToCollection(
    bool? automaticallyAddToCollection,
  ) => this(automaticallyAddToCollection: automaticallyAddToCollection);

  @override
  LibraryOptions allowEmbeddedSubtitles(
    EmbeddedSubtitleOptions? allowEmbeddedSubtitles,
  ) => this(allowEmbeddedSubtitles: allowEmbeddedSubtitles);

  @override
  LibraryOptions typeOptions(List<TypeOptions>? typeOptions) =>
      this(typeOptions: typeOptions);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LibraryOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LibraryOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  LibraryOptions call({
    Object? enabled = const $CopyWithPlaceholder(),
    Object? enablePhotos = const $CopyWithPlaceholder(),
    Object? enableRealtimeMonitor = const $CopyWithPlaceholder(),
    Object? enableLUFSScan = const $CopyWithPlaceholder(),
    Object? enableChapterImageExtraction = const $CopyWithPlaceholder(),
    Object? extractChapterImagesDuringLibraryScan =
        const $CopyWithPlaceholder(),
    Object? enableTrickplayImageExtraction = const $CopyWithPlaceholder(),
    Object? extractTrickplayImagesDuringLibraryScan =
        const $CopyWithPlaceholder(),
    Object? pathInfos = const $CopyWithPlaceholder(),
    Object? saveLocalMetadata = const $CopyWithPlaceholder(),
    Object? enableInternetProviders = const $CopyWithPlaceholder(),
    Object? enableAutomaticSeriesGrouping = const $CopyWithPlaceholder(),
    Object? enableEmbeddedTitles = const $CopyWithPlaceholder(),
    Object? enableEmbeddedExtrasTitles = const $CopyWithPlaceholder(),
    Object? enableEmbeddedEpisodeInfos = const $CopyWithPlaceholder(),
    Object? automaticRefreshIntervalDays = const $CopyWithPlaceholder(),
    Object? preferredMetadataLanguage = const $CopyWithPlaceholder(),
    Object? metadataCountryCode = const $CopyWithPlaceholder(),
    Object? seasonZeroDisplayName = const $CopyWithPlaceholder(),
    Object? metadataSavers = const $CopyWithPlaceholder(),
    Object? disabledLocalMetadataReaders = const $CopyWithPlaceholder(),
    Object? localMetadataReaderOrder = const $CopyWithPlaceholder(),
    Object? disabledSubtitleFetchers = const $CopyWithPlaceholder(),
    Object? subtitleFetcherOrder = const $CopyWithPlaceholder(),
    Object? disabledMediaSegmentProviders = const $CopyWithPlaceholder(),
    Object? mediaSegmentProviderOrder = const $CopyWithPlaceholder(),
    Object? skipSubtitlesIfEmbeddedSubtitlesPresent =
        const $CopyWithPlaceholder(),
    Object? skipSubtitlesIfAudioTrackMatches = const $CopyWithPlaceholder(),
    Object? subtitleDownloadLanguages = const $CopyWithPlaceholder(),
    Object? requirePerfectSubtitleMatch = const $CopyWithPlaceholder(),
    Object? saveSubtitlesWithMedia = const $CopyWithPlaceholder(),
    Object? saveLyricsWithMedia = const $CopyWithPlaceholder(),
    Object? saveTrickplayWithMedia = const $CopyWithPlaceholder(),
    Object? disabledLyricFetchers = const $CopyWithPlaceholder(),
    Object? lyricFetcherOrder = const $CopyWithPlaceholder(),
    Object? preferNonstandardArtistsTag = const $CopyWithPlaceholder(),
    Object? useCustomTagDelimiters = const $CopyWithPlaceholder(),
    Object? customTagDelimiters = const $CopyWithPlaceholder(),
    Object? delimiterWhitelist = const $CopyWithPlaceholder(),
    Object? automaticallyAddToCollection = const $CopyWithPlaceholder(),
    Object? allowEmbeddedSubtitles = const $CopyWithPlaceholder(),
    Object? typeOptions = const $CopyWithPlaceholder(),
  }) {
    return LibraryOptions(
      enabled: enabled == const $CopyWithPlaceholder()
          ? _value.enabled
          // ignore: cast_nullable_to_non_nullable
          : enabled as bool?,
      enablePhotos: enablePhotos == const $CopyWithPlaceholder()
          ? _value.enablePhotos
          // ignore: cast_nullable_to_non_nullable
          : enablePhotos as bool?,
      enableRealtimeMonitor:
          enableRealtimeMonitor == const $CopyWithPlaceholder()
          ? _value.enableRealtimeMonitor
          // ignore: cast_nullable_to_non_nullable
          : enableRealtimeMonitor as bool?,
      enableLUFSScan: enableLUFSScan == const $CopyWithPlaceholder()
          ? _value.enableLUFSScan
          // ignore: cast_nullable_to_non_nullable
          : enableLUFSScan as bool?,
      enableChapterImageExtraction:
          enableChapterImageExtraction == const $CopyWithPlaceholder()
          ? _value.enableChapterImageExtraction
          // ignore: cast_nullable_to_non_nullable
          : enableChapterImageExtraction as bool?,
      extractChapterImagesDuringLibraryScan:
          extractChapterImagesDuringLibraryScan == const $CopyWithPlaceholder()
          ? _value.extractChapterImagesDuringLibraryScan
          // ignore: cast_nullable_to_non_nullable
          : extractChapterImagesDuringLibraryScan as bool?,
      enableTrickplayImageExtraction:
          enableTrickplayImageExtraction == const $CopyWithPlaceholder()
          ? _value.enableTrickplayImageExtraction
          // ignore: cast_nullable_to_non_nullable
          : enableTrickplayImageExtraction as bool?,
      extractTrickplayImagesDuringLibraryScan:
          extractTrickplayImagesDuringLibraryScan ==
              const $CopyWithPlaceholder()
          ? _value.extractTrickplayImagesDuringLibraryScan
          // ignore: cast_nullable_to_non_nullable
          : extractTrickplayImagesDuringLibraryScan as bool?,
      pathInfos: pathInfos == const $CopyWithPlaceholder()
          ? _value.pathInfos
          // ignore: cast_nullable_to_non_nullable
          : pathInfos as List<MediaPathInfo>?,
      saveLocalMetadata: saveLocalMetadata == const $CopyWithPlaceholder()
          ? _value.saveLocalMetadata
          // ignore: cast_nullable_to_non_nullable
          : saveLocalMetadata as bool?,
      enableInternetProviders:
          enableInternetProviders == const $CopyWithPlaceholder()
          ? _value.enableInternetProviders
          // ignore: cast_nullable_to_non_nullable
          : enableInternetProviders as bool?,
      enableAutomaticSeriesGrouping:
          enableAutomaticSeriesGrouping == const $CopyWithPlaceholder()
          ? _value.enableAutomaticSeriesGrouping
          // ignore: cast_nullable_to_non_nullable
          : enableAutomaticSeriesGrouping as bool?,
      enableEmbeddedTitles: enableEmbeddedTitles == const $CopyWithPlaceholder()
          ? _value.enableEmbeddedTitles
          // ignore: cast_nullable_to_non_nullable
          : enableEmbeddedTitles as bool?,
      enableEmbeddedExtrasTitles:
          enableEmbeddedExtrasTitles == const $CopyWithPlaceholder()
          ? _value.enableEmbeddedExtrasTitles
          // ignore: cast_nullable_to_non_nullable
          : enableEmbeddedExtrasTitles as bool?,
      enableEmbeddedEpisodeInfos:
          enableEmbeddedEpisodeInfos == const $CopyWithPlaceholder()
          ? _value.enableEmbeddedEpisodeInfos
          // ignore: cast_nullable_to_non_nullable
          : enableEmbeddedEpisodeInfos as bool?,
      automaticRefreshIntervalDays:
          automaticRefreshIntervalDays == const $CopyWithPlaceholder()
          ? _value.automaticRefreshIntervalDays
          // ignore: cast_nullable_to_non_nullable
          : automaticRefreshIntervalDays as int?,
      preferredMetadataLanguage:
          preferredMetadataLanguage == const $CopyWithPlaceholder()
          ? _value.preferredMetadataLanguage
          // ignore: cast_nullable_to_non_nullable
          : preferredMetadataLanguage as String?,
      metadataCountryCode: metadataCountryCode == const $CopyWithPlaceholder()
          ? _value.metadataCountryCode
          // ignore: cast_nullable_to_non_nullable
          : metadataCountryCode as String?,
      seasonZeroDisplayName:
          seasonZeroDisplayName == const $CopyWithPlaceholder()
          ? _value.seasonZeroDisplayName
          // ignore: cast_nullable_to_non_nullable
          : seasonZeroDisplayName as String?,
      metadataSavers: metadataSavers == const $CopyWithPlaceholder()
          ? _value.metadataSavers
          // ignore: cast_nullable_to_non_nullable
          : metadataSavers as List<String>?,
      disabledLocalMetadataReaders:
          disabledLocalMetadataReaders == const $CopyWithPlaceholder()
          ? _value.disabledLocalMetadataReaders
          // ignore: cast_nullable_to_non_nullable
          : disabledLocalMetadataReaders as List<String>?,
      localMetadataReaderOrder:
          localMetadataReaderOrder == const $CopyWithPlaceholder()
          ? _value.localMetadataReaderOrder
          // ignore: cast_nullable_to_non_nullable
          : localMetadataReaderOrder as List<String>?,
      disabledSubtitleFetchers:
          disabledSubtitleFetchers == const $CopyWithPlaceholder()
          ? _value.disabledSubtitleFetchers
          // ignore: cast_nullable_to_non_nullable
          : disabledSubtitleFetchers as List<String>?,
      subtitleFetcherOrder: subtitleFetcherOrder == const $CopyWithPlaceholder()
          ? _value.subtitleFetcherOrder
          // ignore: cast_nullable_to_non_nullable
          : subtitleFetcherOrder as List<String>?,
      disabledMediaSegmentProviders:
          disabledMediaSegmentProviders == const $CopyWithPlaceholder()
          ? _value.disabledMediaSegmentProviders
          // ignore: cast_nullable_to_non_nullable
          : disabledMediaSegmentProviders as List<String>?,
      mediaSegmentProviderOrder:
          mediaSegmentProviderOrder == const $CopyWithPlaceholder()
          ? _value.mediaSegmentProviderOrder
          // ignore: cast_nullable_to_non_nullable
          : mediaSegmentProviderOrder as List<String>?,
      skipSubtitlesIfEmbeddedSubtitlesPresent:
          skipSubtitlesIfEmbeddedSubtitlesPresent ==
              const $CopyWithPlaceholder()
          ? _value.skipSubtitlesIfEmbeddedSubtitlesPresent
          // ignore: cast_nullable_to_non_nullable
          : skipSubtitlesIfEmbeddedSubtitlesPresent as bool?,
      skipSubtitlesIfAudioTrackMatches:
          skipSubtitlesIfAudioTrackMatches == const $CopyWithPlaceholder()
          ? _value.skipSubtitlesIfAudioTrackMatches
          // ignore: cast_nullable_to_non_nullable
          : skipSubtitlesIfAudioTrackMatches as bool?,
      subtitleDownloadLanguages:
          subtitleDownloadLanguages == const $CopyWithPlaceholder()
          ? _value.subtitleDownloadLanguages
          // ignore: cast_nullable_to_non_nullable
          : subtitleDownloadLanguages as List<String>?,
      requirePerfectSubtitleMatch:
          requirePerfectSubtitleMatch == const $CopyWithPlaceholder()
          ? _value.requirePerfectSubtitleMatch
          // ignore: cast_nullable_to_non_nullable
          : requirePerfectSubtitleMatch as bool?,
      saveSubtitlesWithMedia:
          saveSubtitlesWithMedia == const $CopyWithPlaceholder()
          ? _value.saveSubtitlesWithMedia
          // ignore: cast_nullable_to_non_nullable
          : saveSubtitlesWithMedia as bool?,
      saveLyricsWithMedia: saveLyricsWithMedia == const $CopyWithPlaceholder()
          ? _value.saveLyricsWithMedia
          // ignore: cast_nullable_to_non_nullable
          : saveLyricsWithMedia as bool?,
      saveTrickplayWithMedia:
          saveTrickplayWithMedia == const $CopyWithPlaceholder()
          ? _value.saveTrickplayWithMedia
          // ignore: cast_nullable_to_non_nullable
          : saveTrickplayWithMedia as bool?,
      disabledLyricFetchers:
          disabledLyricFetchers == const $CopyWithPlaceholder()
          ? _value.disabledLyricFetchers
          // ignore: cast_nullable_to_non_nullable
          : disabledLyricFetchers as List<String>?,
      lyricFetcherOrder: lyricFetcherOrder == const $CopyWithPlaceholder()
          ? _value.lyricFetcherOrder
          // ignore: cast_nullable_to_non_nullable
          : lyricFetcherOrder as List<String>?,
      preferNonstandardArtistsTag:
          preferNonstandardArtistsTag == const $CopyWithPlaceholder()
          ? _value.preferNonstandardArtistsTag
          // ignore: cast_nullable_to_non_nullable
          : preferNonstandardArtistsTag as bool?,
      useCustomTagDelimiters:
          useCustomTagDelimiters == const $CopyWithPlaceholder()
          ? _value.useCustomTagDelimiters
          // ignore: cast_nullable_to_non_nullable
          : useCustomTagDelimiters as bool?,
      customTagDelimiters: customTagDelimiters == const $CopyWithPlaceholder()
          ? _value.customTagDelimiters
          // ignore: cast_nullable_to_non_nullable
          : customTagDelimiters as List<String>?,
      delimiterWhitelist: delimiterWhitelist == const $CopyWithPlaceholder()
          ? _value.delimiterWhitelist
          // ignore: cast_nullable_to_non_nullable
          : delimiterWhitelist as List<String>?,
      automaticallyAddToCollection:
          automaticallyAddToCollection == const $CopyWithPlaceholder()
          ? _value.automaticallyAddToCollection
          // ignore: cast_nullable_to_non_nullable
          : automaticallyAddToCollection as bool?,
      allowEmbeddedSubtitles:
          allowEmbeddedSubtitles == const $CopyWithPlaceholder()
          ? _value.allowEmbeddedSubtitles
          // ignore: cast_nullable_to_non_nullable
          : allowEmbeddedSubtitles as EmbeddedSubtitleOptions?,
      typeOptions: typeOptions == const $CopyWithPlaceholder()
          ? _value.typeOptions
          // ignore: cast_nullable_to_non_nullable
          : typeOptions as List<TypeOptions>?,
    );
  }
}

extension $LibraryOptionsCopyWith on LibraryOptions {
  /// Returns a callable class that can be used as follows: `instanceOfLibraryOptions.copyWith(...)` or like so:`instanceOfLibraryOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LibraryOptionsCWProxy get copyWith => _$LibraryOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LibraryOptions _$LibraryOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LibraryOptions',
      json,
      ($checkedConvert) {
        final val = LibraryOptions(
          enabled: $checkedConvert('Enabled', (v) => v as bool?),
          enablePhotos: $checkedConvert('EnablePhotos', (v) => v as bool?),
          enableRealtimeMonitor: $checkedConvert(
            'EnableRealtimeMonitor',
            (v) => v as bool?,
          ),
          enableLUFSScan: $checkedConvert('EnableLUFSScan', (v) => v as bool?),
          enableChapterImageExtraction: $checkedConvert(
            'EnableChapterImageExtraction',
            (v) => v as bool?,
          ),
          extractChapterImagesDuringLibraryScan: $checkedConvert(
            'ExtractChapterImagesDuringLibraryScan',
            (v) => v as bool?,
          ),
          enableTrickplayImageExtraction: $checkedConvert(
            'EnableTrickplayImageExtraction',
            (v) => v as bool?,
          ),
          extractTrickplayImagesDuringLibraryScan: $checkedConvert(
            'ExtractTrickplayImagesDuringLibraryScan',
            (v) => v as bool?,
          ),
          pathInfos: $checkedConvert(
            'PathInfos',
            (v) => (v as List<dynamic>?)
                ?.map((e) => MediaPathInfo.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          saveLocalMetadata: $checkedConvert(
            'SaveLocalMetadata',
            (v) => v as bool?,
          ),
          enableInternetProviders: $checkedConvert(
            'EnableInternetProviders',
            (v) => v as bool?,
          ),
          enableAutomaticSeriesGrouping: $checkedConvert(
            'EnableAutomaticSeriesGrouping',
            (v) => v as bool?,
          ),
          enableEmbeddedTitles: $checkedConvert(
            'EnableEmbeddedTitles',
            (v) => v as bool?,
          ),
          enableEmbeddedExtrasTitles: $checkedConvert(
            'EnableEmbeddedExtrasTitles',
            (v) => v as bool?,
          ),
          enableEmbeddedEpisodeInfos: $checkedConvert(
            'EnableEmbeddedEpisodeInfos',
            (v) => v as bool?,
          ),
          automaticRefreshIntervalDays: $checkedConvert(
            'AutomaticRefreshIntervalDays',
            (v) => (v as num?)?.toInt(),
          ),
          preferredMetadataLanguage: $checkedConvert(
            'PreferredMetadataLanguage',
            (v) => v as String?,
          ),
          metadataCountryCode: $checkedConvert(
            'MetadataCountryCode',
            (v) => v as String?,
          ),
          seasonZeroDisplayName: $checkedConvert(
            'SeasonZeroDisplayName',
            (v) => v as String?,
          ),
          metadataSavers: $checkedConvert(
            'MetadataSavers',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          disabledLocalMetadataReaders: $checkedConvert(
            'DisabledLocalMetadataReaders',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          localMetadataReaderOrder: $checkedConvert(
            'LocalMetadataReaderOrder',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          disabledSubtitleFetchers: $checkedConvert(
            'DisabledSubtitleFetchers',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          subtitleFetcherOrder: $checkedConvert(
            'SubtitleFetcherOrder',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          disabledMediaSegmentProviders: $checkedConvert(
            'DisabledMediaSegmentProviders',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          mediaSegmentProviderOrder: $checkedConvert(
            'MediaSegmentProviderOrder',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          skipSubtitlesIfEmbeddedSubtitlesPresent: $checkedConvert(
            'SkipSubtitlesIfEmbeddedSubtitlesPresent',
            (v) => v as bool?,
          ),
          skipSubtitlesIfAudioTrackMatches: $checkedConvert(
            'SkipSubtitlesIfAudioTrackMatches',
            (v) => v as bool?,
          ),
          subtitleDownloadLanguages: $checkedConvert(
            'SubtitleDownloadLanguages',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          requirePerfectSubtitleMatch: $checkedConvert(
            'RequirePerfectSubtitleMatch',
            (v) => v as bool?,
          ),
          saveSubtitlesWithMedia: $checkedConvert(
            'SaveSubtitlesWithMedia',
            (v) => v as bool?,
          ),
          saveLyricsWithMedia: $checkedConvert(
            'SaveLyricsWithMedia',
            (v) => v as bool? ?? false,
          ),
          saveTrickplayWithMedia: $checkedConvert(
            'SaveTrickplayWithMedia',
            (v) => v as bool? ?? false,
          ),
          disabledLyricFetchers: $checkedConvert(
            'DisabledLyricFetchers',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          lyricFetcherOrder: $checkedConvert(
            'LyricFetcherOrder',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          preferNonstandardArtistsTag: $checkedConvert(
            'PreferNonstandardArtistsTag',
            (v) => v as bool? ?? false,
          ),
          useCustomTagDelimiters: $checkedConvert(
            'UseCustomTagDelimiters',
            (v) => v as bool? ?? false,
          ),
          customTagDelimiters: $checkedConvert(
            'CustomTagDelimiters',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          delimiterWhitelist: $checkedConvert(
            'DelimiterWhitelist',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          automaticallyAddToCollection: $checkedConvert(
            'AutomaticallyAddToCollection',
            (v) => v as bool?,
          ),
          allowEmbeddedSubtitles: $checkedConvert(
            'AllowEmbeddedSubtitles',
            (v) => $enumDecodeNullable(_$EmbeddedSubtitleOptionsEnumMap, v),
          ),
          typeOptions: $checkedConvert(
            'TypeOptions',
            (v) => (v as List<dynamic>?)
                ?.map((e) => TypeOptions.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'enabled': 'Enabled',
        'enablePhotos': 'EnablePhotos',
        'enableRealtimeMonitor': 'EnableRealtimeMonitor',
        'enableLUFSScan': 'EnableLUFSScan',
        'enableChapterImageExtraction': 'EnableChapterImageExtraction',
        'extractChapterImagesDuringLibraryScan':
            'ExtractChapterImagesDuringLibraryScan',
        'enableTrickplayImageExtraction': 'EnableTrickplayImageExtraction',
        'extractTrickplayImagesDuringLibraryScan':
            'ExtractTrickplayImagesDuringLibraryScan',
        'pathInfos': 'PathInfos',
        'saveLocalMetadata': 'SaveLocalMetadata',
        'enableInternetProviders': 'EnableInternetProviders',
        'enableAutomaticSeriesGrouping': 'EnableAutomaticSeriesGrouping',
        'enableEmbeddedTitles': 'EnableEmbeddedTitles',
        'enableEmbeddedExtrasTitles': 'EnableEmbeddedExtrasTitles',
        'enableEmbeddedEpisodeInfos': 'EnableEmbeddedEpisodeInfos',
        'automaticRefreshIntervalDays': 'AutomaticRefreshIntervalDays',
        'preferredMetadataLanguage': 'PreferredMetadataLanguage',
        'metadataCountryCode': 'MetadataCountryCode',
        'seasonZeroDisplayName': 'SeasonZeroDisplayName',
        'metadataSavers': 'MetadataSavers',
        'disabledLocalMetadataReaders': 'DisabledLocalMetadataReaders',
        'localMetadataReaderOrder': 'LocalMetadataReaderOrder',
        'disabledSubtitleFetchers': 'DisabledSubtitleFetchers',
        'subtitleFetcherOrder': 'SubtitleFetcherOrder',
        'disabledMediaSegmentProviders': 'DisabledMediaSegmentProviders',
        'mediaSegmentProviderOrder': 'MediaSegmentProviderOrder',
        'skipSubtitlesIfEmbeddedSubtitlesPresent':
            'SkipSubtitlesIfEmbeddedSubtitlesPresent',
        'skipSubtitlesIfAudioTrackMatches': 'SkipSubtitlesIfAudioTrackMatches',
        'subtitleDownloadLanguages': 'SubtitleDownloadLanguages',
        'requirePerfectSubtitleMatch': 'RequirePerfectSubtitleMatch',
        'saveSubtitlesWithMedia': 'SaveSubtitlesWithMedia',
        'saveLyricsWithMedia': 'SaveLyricsWithMedia',
        'saveTrickplayWithMedia': 'SaveTrickplayWithMedia',
        'disabledLyricFetchers': 'DisabledLyricFetchers',
        'lyricFetcherOrder': 'LyricFetcherOrder',
        'preferNonstandardArtistsTag': 'PreferNonstandardArtistsTag',
        'useCustomTagDelimiters': 'UseCustomTagDelimiters',
        'customTagDelimiters': 'CustomTagDelimiters',
        'delimiterWhitelist': 'DelimiterWhitelist',
        'automaticallyAddToCollection': 'AutomaticallyAddToCollection',
        'allowEmbeddedSubtitles': 'AllowEmbeddedSubtitles',
        'typeOptions': 'TypeOptions',
      },
    );

Map<String, dynamic> _$LibraryOptionsToJson(
  LibraryOptions instance,
) => <String, dynamic>{
  'Enabled': ?instance.enabled,
  'EnablePhotos': ?instance.enablePhotos,
  'EnableRealtimeMonitor': ?instance.enableRealtimeMonitor,
  'EnableLUFSScan': ?instance.enableLUFSScan,
  'EnableChapterImageExtraction': ?instance.enableChapterImageExtraction,
  'ExtractChapterImagesDuringLibraryScan':
      ?instance.extractChapterImagesDuringLibraryScan,
  'EnableTrickplayImageExtraction': ?instance.enableTrickplayImageExtraction,
  'ExtractTrickplayImagesDuringLibraryScan':
      ?instance.extractTrickplayImagesDuringLibraryScan,
  'PathInfos': ?instance.pathInfos?.map((e) => e.toJson()).toList(),
  'SaveLocalMetadata': ?instance.saveLocalMetadata,
  'EnableInternetProviders': ?instance.enableInternetProviders,
  'EnableAutomaticSeriesGrouping': ?instance.enableAutomaticSeriesGrouping,
  'EnableEmbeddedTitles': ?instance.enableEmbeddedTitles,
  'EnableEmbeddedExtrasTitles': ?instance.enableEmbeddedExtrasTitles,
  'EnableEmbeddedEpisodeInfos': ?instance.enableEmbeddedEpisodeInfos,
  'AutomaticRefreshIntervalDays': ?instance.automaticRefreshIntervalDays,
  'PreferredMetadataLanguage': ?instance.preferredMetadataLanguage,
  'MetadataCountryCode': ?instance.metadataCountryCode,
  'SeasonZeroDisplayName': ?instance.seasonZeroDisplayName,
  'MetadataSavers': ?instance.metadataSavers,
  'DisabledLocalMetadataReaders': ?instance.disabledLocalMetadataReaders,
  'LocalMetadataReaderOrder': ?instance.localMetadataReaderOrder,
  'DisabledSubtitleFetchers': ?instance.disabledSubtitleFetchers,
  'SubtitleFetcherOrder': ?instance.subtitleFetcherOrder,
  'DisabledMediaSegmentProviders': ?instance.disabledMediaSegmentProviders,
  'MediaSegmentProviderOrder': ?instance.mediaSegmentProviderOrder,
  'SkipSubtitlesIfEmbeddedSubtitlesPresent':
      ?instance.skipSubtitlesIfEmbeddedSubtitlesPresent,
  'SkipSubtitlesIfAudioTrackMatches':
      ?instance.skipSubtitlesIfAudioTrackMatches,
  'SubtitleDownloadLanguages': ?instance.subtitleDownloadLanguages,
  'RequirePerfectSubtitleMatch': ?instance.requirePerfectSubtitleMatch,
  'SaveSubtitlesWithMedia': ?instance.saveSubtitlesWithMedia,
  'SaveLyricsWithMedia': ?instance.saveLyricsWithMedia,
  'SaveTrickplayWithMedia': ?instance.saveTrickplayWithMedia,
  'DisabledLyricFetchers': ?instance.disabledLyricFetchers,
  'LyricFetcherOrder': ?instance.lyricFetcherOrder,
  'PreferNonstandardArtistsTag': ?instance.preferNonstandardArtistsTag,
  'UseCustomTagDelimiters': ?instance.useCustomTagDelimiters,
  'CustomTagDelimiters': ?instance.customTagDelimiters,
  'DelimiterWhitelist': ?instance.delimiterWhitelist,
  'AutomaticallyAddToCollection': ?instance.automaticallyAddToCollection,
  'AllowEmbeddedSubtitles':
      ?_$EmbeddedSubtitleOptionsEnumMap[instance.allowEmbeddedSubtitles],
  'TypeOptions': ?instance.typeOptions?.map((e) => e.toJson()).toList(),
};

const _$EmbeddedSubtitleOptionsEnumMap = {
  EmbeddedSubtitleOptions.allowAll: 'AllowAll',
  EmbeddedSubtitleOptions.allowText: 'AllowText',
  EmbeddedSubtitleOptions.allowImage: 'AllowImage',
  EmbeddedSubtitleOptions.allowNone: 'AllowNone',
};
