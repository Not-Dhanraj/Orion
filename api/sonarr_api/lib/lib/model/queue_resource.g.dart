// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueueResourceCWProxy {
  QueueResource id(int? id);

  QueueResource seriesId(int? seriesId);

  QueueResource episodeId(int? episodeId);

  QueueResource seasonNumber(int? seasonNumber);

  QueueResource series(SeriesResource? series);

  QueueResource episode(EpisodeResource? episode);

  QueueResource languages(List<Language>? languages);

  QueueResource quality(QualityModel? quality);

  QueueResource customFormats(List<CustomFormatResource>? customFormats);

  QueueResource customFormatScore(int? customFormatScore);

  QueueResource size(double? size);

  QueueResource title(String? title);

  QueueResource estimatedCompletionTime(DateTime? estimatedCompletionTime);

  QueueResource added(DateTime? added);

  QueueResource status(QueueStatus? status);

  QueueResource trackedDownloadStatus(
    TrackedDownloadStatus? trackedDownloadStatus,
  );

  QueueResource trackedDownloadState(
    TrackedDownloadState? trackedDownloadState,
  );

  QueueResource statusMessages(
    List<TrackedDownloadStatusMessage>? statusMessages,
  );

  QueueResource errorMessage(String? errorMessage);

  QueueResource downloadId(String? downloadId);

  QueueResource protocol(DownloadProtocol? protocol);

  QueueResource downloadClient(String? downloadClient);

  QueueResource downloadClientHasPostImportCategory(
    bool? downloadClientHasPostImportCategory,
  );

  QueueResource indexer(String? indexer);

  QueueResource outputPath(String? outputPath);

  QueueResource episodeHasFile(bool? episodeHasFile);

  QueueResource sizeleft(double? sizeleft);

  QueueResource timeleft(String? timeleft);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueResource call({
    int? id,
    int? seriesId,
    int? episodeId,
    int? seasonNumber,
    SeriesResource? series,
    EpisodeResource? episode,
    List<Language>? languages,
    QualityModel? quality,
    List<CustomFormatResource>? customFormats,
    int? customFormatScore,
    double? size,
    String? title,
    DateTime? estimatedCompletionTime,
    DateTime? added,
    QueueStatus? status,
    TrackedDownloadStatus? trackedDownloadStatus,
    TrackedDownloadState? trackedDownloadState,
    List<TrackedDownloadStatusMessage>? statusMessages,
    String? errorMessage,
    String? downloadId,
    DownloadProtocol? protocol,
    String? downloadClient,
    bool? downloadClientHasPostImportCategory,
    String? indexer,
    String? outputPath,
    bool? episodeHasFile,
    double? sizeleft,
    String? timeleft,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQueueResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQueueResource.copyWith.fieldName(...)`
class _$QueueResourceCWProxyImpl implements _$QueueResourceCWProxy {
  const _$QueueResourceCWProxyImpl(this._value);

  final QueueResource _value;

  @override
  QueueResource id(int? id) => this(id: id);

  @override
  QueueResource seriesId(int? seriesId) => this(seriesId: seriesId);

  @override
  QueueResource episodeId(int? episodeId) => this(episodeId: episodeId);

  @override
  QueueResource seasonNumber(int? seasonNumber) =>
      this(seasonNumber: seasonNumber);

  @override
  QueueResource series(SeriesResource? series) => this(series: series);

  @override
  QueueResource episode(EpisodeResource? episode) => this(episode: episode);

  @override
  QueueResource languages(List<Language>? languages) =>
      this(languages: languages);

  @override
  QueueResource quality(QualityModel? quality) => this(quality: quality);

  @override
  QueueResource customFormats(List<CustomFormatResource>? customFormats) =>
      this(customFormats: customFormats);

  @override
  QueueResource customFormatScore(int? customFormatScore) =>
      this(customFormatScore: customFormatScore);

  @override
  QueueResource size(double? size) => this(size: size);

  @override
  QueueResource title(String? title) => this(title: title);

  @override
  QueueResource estimatedCompletionTime(DateTime? estimatedCompletionTime) =>
      this(estimatedCompletionTime: estimatedCompletionTime);

  @override
  QueueResource added(DateTime? added) => this(added: added);

  @override
  QueueResource status(QueueStatus? status) => this(status: status);

  @override
  QueueResource trackedDownloadStatus(
    TrackedDownloadStatus? trackedDownloadStatus,
  ) => this(trackedDownloadStatus: trackedDownloadStatus);

  @override
  QueueResource trackedDownloadState(
    TrackedDownloadState? trackedDownloadState,
  ) => this(trackedDownloadState: trackedDownloadState);

  @override
  QueueResource statusMessages(
    List<TrackedDownloadStatusMessage>? statusMessages,
  ) => this(statusMessages: statusMessages);

  @override
  QueueResource errorMessage(String? errorMessage) =>
      this(errorMessage: errorMessage);

  @override
  QueueResource downloadId(String? downloadId) => this(downloadId: downloadId);

  @override
  QueueResource protocol(DownloadProtocol? protocol) =>
      this(protocol: protocol);

  @override
  QueueResource downloadClient(String? downloadClient) =>
      this(downloadClient: downloadClient);

  @override
  QueueResource downloadClientHasPostImportCategory(
    bool? downloadClientHasPostImportCategory,
  ) => this(
    downloadClientHasPostImportCategory: downloadClientHasPostImportCategory,
  );

  @override
  QueueResource indexer(String? indexer) => this(indexer: indexer);

  @override
  QueueResource outputPath(String? outputPath) => this(outputPath: outputPath);

  @override
  QueueResource episodeHasFile(bool? episodeHasFile) =>
      this(episodeHasFile: episodeHasFile);

  @override
  QueueResource sizeleft(double? sizeleft) => this(sizeleft: sizeleft);

  @override
  QueueResource timeleft(String? timeleft) => this(timeleft: timeleft);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueResource(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? seriesId = const $CopyWithPlaceholder(),
    Object? episodeId = const $CopyWithPlaceholder(),
    Object? seasonNumber = const $CopyWithPlaceholder(),
    Object? series = const $CopyWithPlaceholder(),
    Object? episode = const $CopyWithPlaceholder(),
    Object? languages = const $CopyWithPlaceholder(),
    Object? quality = const $CopyWithPlaceholder(),
    Object? customFormats = const $CopyWithPlaceholder(),
    Object? customFormatScore = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? estimatedCompletionTime = const $CopyWithPlaceholder(),
    Object? added = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? trackedDownloadStatus = const $CopyWithPlaceholder(),
    Object? trackedDownloadState = const $CopyWithPlaceholder(),
    Object? statusMessages = const $CopyWithPlaceholder(),
    Object? errorMessage = const $CopyWithPlaceholder(),
    Object? downloadId = const $CopyWithPlaceholder(),
    Object? protocol = const $CopyWithPlaceholder(),
    Object? downloadClient = const $CopyWithPlaceholder(),
    Object? downloadClientHasPostImportCategory = const $CopyWithPlaceholder(),
    Object? indexer = const $CopyWithPlaceholder(),
    Object? outputPath = const $CopyWithPlaceholder(),
    Object? episodeHasFile = const $CopyWithPlaceholder(),
    Object? sizeleft = const $CopyWithPlaceholder(),
    Object? timeleft = const $CopyWithPlaceholder(),
  }) {
    return QueueResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      seriesId: seriesId == const $CopyWithPlaceholder()
          ? _value.seriesId
          // ignore: cast_nullable_to_non_nullable
          : seriesId as int?,
      episodeId: episodeId == const $CopyWithPlaceholder()
          ? _value.episodeId
          // ignore: cast_nullable_to_non_nullable
          : episodeId as int?,
      seasonNumber: seasonNumber == const $CopyWithPlaceholder()
          ? _value.seasonNumber
          // ignore: cast_nullable_to_non_nullable
          : seasonNumber as int?,
      series: series == const $CopyWithPlaceholder()
          ? _value.series
          // ignore: cast_nullable_to_non_nullable
          : series as SeriesResource?,
      episode: episode == const $CopyWithPlaceholder()
          ? _value.episode
          // ignore: cast_nullable_to_non_nullable
          : episode as EpisodeResource?,
      languages: languages == const $CopyWithPlaceholder()
          ? _value.languages
          // ignore: cast_nullable_to_non_nullable
          : languages as List<Language>?,
      quality: quality == const $CopyWithPlaceholder()
          ? _value.quality
          // ignore: cast_nullable_to_non_nullable
          : quality as QualityModel?,
      customFormats: customFormats == const $CopyWithPlaceholder()
          ? _value.customFormats
          // ignore: cast_nullable_to_non_nullable
          : customFormats as List<CustomFormatResource>?,
      customFormatScore: customFormatScore == const $CopyWithPlaceholder()
          ? _value.customFormatScore
          // ignore: cast_nullable_to_non_nullable
          : customFormatScore as int?,
      size: size == const $CopyWithPlaceholder()
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as double?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      estimatedCompletionTime:
          estimatedCompletionTime == const $CopyWithPlaceholder()
          ? _value.estimatedCompletionTime
          // ignore: cast_nullable_to_non_nullable
          : estimatedCompletionTime as DateTime?,
      added: added == const $CopyWithPlaceholder()
          ? _value.added
          // ignore: cast_nullable_to_non_nullable
          : added as DateTime?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as QueueStatus?,
      trackedDownloadStatus:
          trackedDownloadStatus == const $CopyWithPlaceholder()
          ? _value.trackedDownloadStatus
          // ignore: cast_nullable_to_non_nullable
          : trackedDownloadStatus as TrackedDownloadStatus?,
      trackedDownloadState: trackedDownloadState == const $CopyWithPlaceholder()
          ? _value.trackedDownloadState
          // ignore: cast_nullable_to_non_nullable
          : trackedDownloadState as TrackedDownloadState?,
      statusMessages: statusMessages == const $CopyWithPlaceholder()
          ? _value.statusMessages
          // ignore: cast_nullable_to_non_nullable
          : statusMessages as List<TrackedDownloadStatusMessage>?,
      errorMessage: errorMessage == const $CopyWithPlaceholder()
          ? _value.errorMessage
          // ignore: cast_nullable_to_non_nullable
          : errorMessage as String?,
      downloadId: downloadId == const $CopyWithPlaceholder()
          ? _value.downloadId
          // ignore: cast_nullable_to_non_nullable
          : downloadId as String?,
      protocol: protocol == const $CopyWithPlaceholder()
          ? _value.protocol
          // ignore: cast_nullable_to_non_nullable
          : protocol as DownloadProtocol?,
      downloadClient: downloadClient == const $CopyWithPlaceholder()
          ? _value.downloadClient
          // ignore: cast_nullable_to_non_nullable
          : downloadClient as String?,
      downloadClientHasPostImportCategory:
          downloadClientHasPostImportCategory == const $CopyWithPlaceholder()
          ? _value.downloadClientHasPostImportCategory
          // ignore: cast_nullable_to_non_nullable
          : downloadClientHasPostImportCategory as bool?,
      indexer: indexer == const $CopyWithPlaceholder()
          ? _value.indexer
          // ignore: cast_nullable_to_non_nullable
          : indexer as String?,
      outputPath: outputPath == const $CopyWithPlaceholder()
          ? _value.outputPath
          // ignore: cast_nullable_to_non_nullable
          : outputPath as String?,
      episodeHasFile: episodeHasFile == const $CopyWithPlaceholder()
          ? _value.episodeHasFile
          // ignore: cast_nullable_to_non_nullable
          : episodeHasFile as bool?,
      sizeleft: sizeleft == const $CopyWithPlaceholder()
          ? _value.sizeleft
          // ignore: cast_nullable_to_non_nullable
          : sizeleft as double?,
      timeleft: timeleft == const $CopyWithPlaceholder()
          ? _value.timeleft
          // ignore: cast_nullable_to_non_nullable
          : timeleft as String?,
    );
  }
}

extension $QueueResourceCopyWith on QueueResource {
  /// Returns a callable class that can be used as follows: `instanceOfQueueResource.copyWith(...)` or like so:`instanceOfQueueResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueueResourceCWProxy get copyWith => _$QueueResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueueResource _$QueueResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('QueueResource', json, ($checkedConvert) {
  final val = QueueResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    seriesId: $checkedConvert('seriesId', (v) => (v as num?)?.toInt()),
    episodeId: $checkedConvert('episodeId', (v) => (v as num?)?.toInt()),
    seasonNumber: $checkedConvert('seasonNumber', (v) => (v as num?)?.toInt()),
    series: $checkedConvert(
      'series',
      (v) =>
          v == null ? null : SeriesResource.fromJson(v as Map<String, dynamic>),
    ),
    episode: $checkedConvert(
      'episode',
      (v) => v == null
          ? null
          : EpisodeResource.fromJson(v as Map<String, dynamic>),
    ),
    languages: $checkedConvert(
      'languages',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    quality: $checkedConvert(
      'quality',
      (v) =>
          v == null ? null : QualityModel.fromJson(v as Map<String, dynamic>),
    ),
    customFormats: $checkedConvert(
      'customFormats',
      (v) => (v as List<dynamic>?)
          ?.map((e) => CustomFormatResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    customFormatScore: $checkedConvert(
      'customFormatScore',
      (v) => (v as num?)?.toInt(),
    ),
    size: $checkedConvert('size', (v) => (v as num?)?.toDouble()),
    title: $checkedConvert('title', (v) => v as String?),
    estimatedCompletionTime: $checkedConvert(
      'estimatedCompletionTime',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    added: $checkedConvert(
      'added',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$QueueStatusEnumMap, v),
    ),
    trackedDownloadStatus: $checkedConvert(
      'trackedDownloadStatus',
      (v) => $enumDecodeNullable(_$TrackedDownloadStatusEnumMap, v),
    ),
    trackedDownloadState: $checkedConvert(
      'trackedDownloadState',
      (v) => $enumDecodeNullable(_$TrackedDownloadStateEnumMap, v),
    ),
    statusMessages: $checkedConvert(
      'statusMessages',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => TrackedDownloadStatusMessage.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    errorMessage: $checkedConvert('errorMessage', (v) => v as String?),
    downloadId: $checkedConvert('downloadId', (v) => v as String?),
    protocol: $checkedConvert(
      'protocol',
      (v) => $enumDecodeNullable(_$DownloadProtocolEnumMap, v),
    ),
    downloadClient: $checkedConvert('downloadClient', (v) => v as String?),
    downloadClientHasPostImportCategory: $checkedConvert(
      'downloadClientHasPostImportCategory',
      (v) => v as bool?,
    ),
    indexer: $checkedConvert('indexer', (v) => v as String?),
    outputPath: $checkedConvert('outputPath', (v) => v as String?),
    episodeHasFile: $checkedConvert('episodeHasFile', (v) => v as bool?),
    sizeleft: $checkedConvert('sizeleft', (v) => (v as num?)?.toDouble()),
    timeleft: $checkedConvert('timeleft', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$QueueResourceToJson(
  QueueResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'seriesId': ?instance.seriesId,
  'episodeId': ?instance.episodeId,
  'seasonNumber': ?instance.seasonNumber,
  'series': ?instance.series?.toJson(),
  'episode': ?instance.episode?.toJson(),
  'languages': ?instance.languages?.map((e) => e.toJson()).toList(),
  'quality': ?instance.quality?.toJson(),
  'customFormats': ?instance.customFormats?.map((e) => e.toJson()).toList(),
  'customFormatScore': ?instance.customFormatScore,
  'size': ?instance.size,
  'title': ?instance.title,
  'estimatedCompletionTime': ?instance.estimatedCompletionTime
      ?.toIso8601String(),
  'added': ?instance.added?.toIso8601String(),
  'status': ?_$QueueStatusEnumMap[instance.status],
  'trackedDownloadStatus':
      ?_$TrackedDownloadStatusEnumMap[instance.trackedDownloadStatus],
  'trackedDownloadState':
      ?_$TrackedDownloadStateEnumMap[instance.trackedDownloadState],
  'statusMessages': ?instance.statusMessages?.map((e) => e.toJson()).toList(),
  'errorMessage': ?instance.errorMessage,
  'downloadId': ?instance.downloadId,
  'protocol': ?_$DownloadProtocolEnumMap[instance.protocol],
  'downloadClient': ?instance.downloadClient,
  'downloadClientHasPostImportCategory':
      ?instance.downloadClientHasPostImportCategory,
  'indexer': ?instance.indexer,
  'outputPath': ?instance.outputPath,
  'episodeHasFile': ?instance.episodeHasFile,
  'sizeleft': ?instance.sizeleft,
  'timeleft': ?instance.timeleft,
};

const _$QueueStatusEnumMap = {
  QueueStatus.unknown: 'unknown',
  QueueStatus.queued: 'queued',
  QueueStatus.paused: 'paused',
  QueueStatus.downloading: 'downloading',
  QueueStatus.completed: 'completed',
  QueueStatus.failed: 'failed',
  QueueStatus.warning: 'warning',
  QueueStatus.delay: 'delay',
  QueueStatus.downloadClientUnavailable: 'downloadClientUnavailable',
  QueueStatus.fallback: 'fallback',
};

const _$TrackedDownloadStatusEnumMap = {
  TrackedDownloadStatus.ok: 'ok',
  TrackedDownloadStatus.warning: 'warning',
  TrackedDownloadStatus.error: 'error',
};

const _$TrackedDownloadStateEnumMap = {
  TrackedDownloadState.downloading: 'downloading',
  TrackedDownloadState.importBlocked: 'importBlocked',
  TrackedDownloadState.importPending: 'importPending',
  TrackedDownloadState.importing: 'importing',
  TrackedDownloadState.imported: 'imported',
  TrackedDownloadState.failedPending: 'failedPending',
  TrackedDownloadState.failed: 'failed',
  TrackedDownloadState.ignored: 'ignored',
};

const _$DownloadProtocolEnumMap = {
  DownloadProtocol.unknown: 'unknown',
  DownloadProtocol.usenet: 'usenet',
  DownloadProtocol.torrent: 'torrent',
};
