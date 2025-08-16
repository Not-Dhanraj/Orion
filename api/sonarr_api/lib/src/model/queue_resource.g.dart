// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueueResource extends QueueResource {
  @override
  final int? id;
  @override
  final int? seriesId;
  @override
  final int? episodeId;
  @override
  final int? seasonNumber;
  @override
  final SeriesResource? series;
  @override
  final EpisodeResource? episode;
  @override
  final BuiltList<Language>? languages;
  @override
  final QualityModel? quality;
  @override
  final BuiltList<CustomFormatResource>? customFormats;
  @override
  final int? customFormatScore;
  @override
  final double? size;
  @override
  final String? title;
  @override
  final DateTime? estimatedCompletionTime;
  @override
  final DateTime? added;
  @override
  final QueueStatus? status;
  @override
  final TrackedDownloadStatus? trackedDownloadStatus;
  @override
  final TrackedDownloadState? trackedDownloadState;
  @override
  final BuiltList<TrackedDownloadStatusMessage>? statusMessages;
  @override
  final String? errorMessage;
  @override
  final String? downloadId;
  @override
  final DownloadProtocol? protocol;
  @override
  final String? downloadClient;
  @override
  final bool? downloadClientHasPostImportCategory;
  @override
  final String? indexer;
  @override
  final String? outputPath;
  @override
  final bool? episodeHasFile;
  @override
  final double? sizeleft;
  @override
  final String? timeleft;

  factory _$QueueResource([void Function(QueueResourceBuilder)? updates]) =>
      (QueueResourceBuilder()..update(updates))._build();

  _$QueueResource._(
      {this.id,
      this.seriesId,
      this.episodeId,
      this.seasonNumber,
      this.series,
      this.episode,
      this.languages,
      this.quality,
      this.customFormats,
      this.customFormatScore,
      this.size,
      this.title,
      this.estimatedCompletionTime,
      this.added,
      this.status,
      this.trackedDownloadStatus,
      this.trackedDownloadState,
      this.statusMessages,
      this.errorMessage,
      this.downloadId,
      this.protocol,
      this.downloadClient,
      this.downloadClientHasPostImportCategory,
      this.indexer,
      this.outputPath,
      this.episodeHasFile,
      this.sizeleft,
      this.timeleft})
      : super._();
  @override
  QueueResource rebuild(void Function(QueueResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueueResourceBuilder toBuilder() => QueueResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueueResource &&
        id == other.id &&
        seriesId == other.seriesId &&
        episodeId == other.episodeId &&
        seasonNumber == other.seasonNumber &&
        series == other.series &&
        episode == other.episode &&
        languages == other.languages &&
        quality == other.quality &&
        customFormats == other.customFormats &&
        customFormatScore == other.customFormatScore &&
        size == other.size &&
        title == other.title &&
        estimatedCompletionTime == other.estimatedCompletionTime &&
        added == other.added &&
        status == other.status &&
        trackedDownloadStatus == other.trackedDownloadStatus &&
        trackedDownloadState == other.trackedDownloadState &&
        statusMessages == other.statusMessages &&
        errorMessage == other.errorMessage &&
        downloadId == other.downloadId &&
        protocol == other.protocol &&
        downloadClient == other.downloadClient &&
        downloadClientHasPostImportCategory ==
            other.downloadClientHasPostImportCategory &&
        indexer == other.indexer &&
        outputPath == other.outputPath &&
        episodeHasFile == other.episodeHasFile &&
        sizeleft == other.sizeleft &&
        timeleft == other.timeleft;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, seriesId.hashCode);
    _$hash = $jc(_$hash, episodeId.hashCode);
    _$hash = $jc(_$hash, seasonNumber.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, customFormats.hashCode);
    _$hash = $jc(_$hash, customFormatScore.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, estimatedCompletionTime.hashCode);
    _$hash = $jc(_$hash, added.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, trackedDownloadStatus.hashCode);
    _$hash = $jc(_$hash, trackedDownloadState.hashCode);
    _$hash = $jc(_$hash, statusMessages.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, downloadId.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, downloadClient.hashCode);
    _$hash = $jc(_$hash, downloadClientHasPostImportCategory.hashCode);
    _$hash = $jc(_$hash, indexer.hashCode);
    _$hash = $jc(_$hash, outputPath.hashCode);
    _$hash = $jc(_$hash, episodeHasFile.hashCode);
    _$hash = $jc(_$hash, sizeleft.hashCode);
    _$hash = $jc(_$hash, timeleft.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QueueResource')
          ..add('id', id)
          ..add('seriesId', seriesId)
          ..add('episodeId', episodeId)
          ..add('seasonNumber', seasonNumber)
          ..add('series', series)
          ..add('episode', episode)
          ..add('languages', languages)
          ..add('quality', quality)
          ..add('customFormats', customFormats)
          ..add('customFormatScore', customFormatScore)
          ..add('size', size)
          ..add('title', title)
          ..add('estimatedCompletionTime', estimatedCompletionTime)
          ..add('added', added)
          ..add('status', status)
          ..add('trackedDownloadStatus', trackedDownloadStatus)
          ..add('trackedDownloadState', trackedDownloadState)
          ..add('statusMessages', statusMessages)
          ..add('errorMessage', errorMessage)
          ..add('downloadId', downloadId)
          ..add('protocol', protocol)
          ..add('downloadClient', downloadClient)
          ..add('downloadClientHasPostImportCategory',
              downloadClientHasPostImportCategory)
          ..add('indexer', indexer)
          ..add('outputPath', outputPath)
          ..add('episodeHasFile', episodeHasFile)
          ..add('sizeleft', sizeleft)
          ..add('timeleft', timeleft))
        .toString();
  }
}

class QueueResourceBuilder
    implements Builder<QueueResource, QueueResourceBuilder> {
  _$QueueResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _seriesId;
  int? get seriesId => _$this._seriesId;
  set seriesId(int? seriesId) => _$this._seriesId = seriesId;

  int? _episodeId;
  int? get episodeId => _$this._episodeId;
  set episodeId(int? episodeId) => _$this._episodeId = episodeId;

  int? _seasonNumber;
  int? get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int? seasonNumber) => _$this._seasonNumber = seasonNumber;

  SeriesResourceBuilder? _series;
  SeriesResourceBuilder get series =>
      _$this._series ??= SeriesResourceBuilder();
  set series(SeriesResourceBuilder? series) => _$this._series = series;

  EpisodeResourceBuilder? _episode;
  EpisodeResourceBuilder get episode =>
      _$this._episode ??= EpisodeResourceBuilder();
  set episode(EpisodeResourceBuilder? episode) => _$this._episode = episode;

  ListBuilder<Language>? _languages;
  ListBuilder<Language> get languages =>
      _$this._languages ??= ListBuilder<Language>();
  set languages(ListBuilder<Language>? languages) =>
      _$this._languages = languages;

  QualityModelBuilder? _quality;
  QualityModelBuilder get quality => _$this._quality ??= QualityModelBuilder();
  set quality(QualityModelBuilder? quality) => _$this._quality = quality;

  ListBuilder<CustomFormatResource>? _customFormats;
  ListBuilder<CustomFormatResource> get customFormats =>
      _$this._customFormats ??= ListBuilder<CustomFormatResource>();
  set customFormats(ListBuilder<CustomFormatResource>? customFormats) =>
      _$this._customFormats = customFormats;

  int? _customFormatScore;
  int? get customFormatScore => _$this._customFormatScore;
  set customFormatScore(int? customFormatScore) =>
      _$this._customFormatScore = customFormatScore;

  double? _size;
  double? get size => _$this._size;
  set size(double? size) => _$this._size = size;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _estimatedCompletionTime;
  DateTime? get estimatedCompletionTime => _$this._estimatedCompletionTime;
  set estimatedCompletionTime(DateTime? estimatedCompletionTime) =>
      _$this._estimatedCompletionTime = estimatedCompletionTime;

  DateTime? _added;
  DateTime? get added => _$this._added;
  set added(DateTime? added) => _$this._added = added;

  QueueStatus? _status;
  QueueStatus? get status => _$this._status;
  set status(QueueStatus? status) => _$this._status = status;

  TrackedDownloadStatus? _trackedDownloadStatus;
  TrackedDownloadStatus? get trackedDownloadStatus =>
      _$this._trackedDownloadStatus;
  set trackedDownloadStatus(TrackedDownloadStatus? trackedDownloadStatus) =>
      _$this._trackedDownloadStatus = trackedDownloadStatus;

  TrackedDownloadState? _trackedDownloadState;
  TrackedDownloadState? get trackedDownloadState =>
      _$this._trackedDownloadState;
  set trackedDownloadState(TrackedDownloadState? trackedDownloadState) =>
      _$this._trackedDownloadState = trackedDownloadState;

  ListBuilder<TrackedDownloadStatusMessage>? _statusMessages;
  ListBuilder<TrackedDownloadStatusMessage> get statusMessages =>
      _$this._statusMessages ??= ListBuilder<TrackedDownloadStatusMessage>();
  set statusMessages(
          ListBuilder<TrackedDownloadStatusMessage>? statusMessages) =>
      _$this._statusMessages = statusMessages;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _downloadId;
  String? get downloadId => _$this._downloadId;
  set downloadId(String? downloadId) => _$this._downloadId = downloadId;

  DownloadProtocol? _protocol;
  DownloadProtocol? get protocol => _$this._protocol;
  set protocol(DownloadProtocol? protocol) => _$this._protocol = protocol;

  String? _downloadClient;
  String? get downloadClient => _$this._downloadClient;
  set downloadClient(String? downloadClient) =>
      _$this._downloadClient = downloadClient;

  bool? _downloadClientHasPostImportCategory;
  bool? get downloadClientHasPostImportCategory =>
      _$this._downloadClientHasPostImportCategory;
  set downloadClientHasPostImportCategory(
          bool? downloadClientHasPostImportCategory) =>
      _$this._downloadClientHasPostImportCategory =
          downloadClientHasPostImportCategory;

  String? _indexer;
  String? get indexer => _$this._indexer;
  set indexer(String? indexer) => _$this._indexer = indexer;

  String? _outputPath;
  String? get outputPath => _$this._outputPath;
  set outputPath(String? outputPath) => _$this._outputPath = outputPath;

  bool? _episodeHasFile;
  bool? get episodeHasFile => _$this._episodeHasFile;
  set episodeHasFile(bool? episodeHasFile) =>
      _$this._episodeHasFile = episodeHasFile;

  double? _sizeleft;
  double? get sizeleft => _$this._sizeleft;
  set sizeleft(double? sizeleft) => _$this._sizeleft = sizeleft;

  String? _timeleft;
  String? get timeleft => _$this._timeleft;
  set timeleft(String? timeleft) => _$this._timeleft = timeleft;

  QueueResourceBuilder() {
    QueueResource._defaults(this);
  }

  QueueResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _seriesId = $v.seriesId;
      _episodeId = $v.episodeId;
      _seasonNumber = $v.seasonNumber;
      _series = $v.series?.toBuilder();
      _episode = $v.episode?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _quality = $v.quality?.toBuilder();
      _customFormats = $v.customFormats?.toBuilder();
      _customFormatScore = $v.customFormatScore;
      _size = $v.size;
      _title = $v.title;
      _estimatedCompletionTime = $v.estimatedCompletionTime;
      _added = $v.added;
      _status = $v.status;
      _trackedDownloadStatus = $v.trackedDownloadStatus;
      _trackedDownloadState = $v.trackedDownloadState;
      _statusMessages = $v.statusMessages?.toBuilder();
      _errorMessage = $v.errorMessage;
      _downloadId = $v.downloadId;
      _protocol = $v.protocol;
      _downloadClient = $v.downloadClient;
      _downloadClientHasPostImportCategory =
          $v.downloadClientHasPostImportCategory;
      _indexer = $v.indexer;
      _outputPath = $v.outputPath;
      _episodeHasFile = $v.episodeHasFile;
      _sizeleft = $v.sizeleft;
      _timeleft = $v.timeleft;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueueResource other) {
    _$v = other as _$QueueResource;
  }

  @override
  void update(void Function(QueueResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueueResource build() => _build();

  _$QueueResource _build() {
    _$QueueResource _$result;
    try {
      _$result = _$v ??
          _$QueueResource._(
            id: id,
            seriesId: seriesId,
            episodeId: episodeId,
            seasonNumber: seasonNumber,
            series: _series?.build(),
            episode: _episode?.build(),
            languages: _languages?.build(),
            quality: _quality?.build(),
            customFormats: _customFormats?.build(),
            customFormatScore: customFormatScore,
            size: size,
            title: title,
            estimatedCompletionTime: estimatedCompletionTime,
            added: added,
            status: status,
            trackedDownloadStatus: trackedDownloadStatus,
            trackedDownloadState: trackedDownloadState,
            statusMessages: _statusMessages?.build(),
            errorMessage: errorMessage,
            downloadId: downloadId,
            protocol: protocol,
            downloadClient: downloadClient,
            downloadClientHasPostImportCategory:
                downloadClientHasPostImportCategory,
            indexer: indexer,
            outputPath: outputPath,
            episodeHasFile: episodeHasFile,
            sizeleft: sizeleft,
            timeleft: timeleft,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'series';
        _series?.build();
        _$failedField = 'episode';
        _episode?.build();
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'quality';
        _quality?.build();
        _$failedField = 'customFormats';
        _customFormats?.build();

        _$failedField = 'statusMessages';
        _statusMessages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'QueueResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
