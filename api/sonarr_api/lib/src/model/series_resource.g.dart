// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesResource extends SeriesResource {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final BuiltList<AlternateTitleResource>? alternateTitles;
  @override
  final String? sortTitle;
  @override
  final SeriesStatusType? status;
  @override
  final bool? ended;
  @override
  final String? profileName;
  @override
  final String? overview;
  @override
  final DateTime? nextAiring;
  @override
  final DateTime? previousAiring;
  @override
  final String? network;
  @override
  final String? airTime;
  @override
  final BuiltList<MediaCover>? images;
  @override
  final Language? originalLanguage;
  @override
  final String? remotePoster;
  @override
  final BuiltList<SeasonResource>? seasons;
  @override
  final int? year;
  @override
  final String? path;
  @override
  final int? qualityProfileId;
  @override
  final bool? seasonFolder;
  @override
  final bool? monitored;
  @override
  final NewItemMonitorTypes? monitorNewItems;
  @override
  final bool? useSceneNumbering;
  @override
  final int? runtime;
  @override
  final int? tvdbId;
  @override
  final int? tvRageId;
  @override
  final int? tvMazeId;
  @override
  final int? tmdbId;
  @override
  final DateTime? firstAired;
  @override
  final DateTime? lastAired;
  @override
  final SeriesTypes? seriesType;
  @override
  final String? cleanTitle;
  @override
  final String? imdbId;
  @override
  final String? titleSlug;
  @override
  final String? rootFolderPath;
  @override
  final String? folder;
  @override
  final String? certification;
  @override
  final BuiltList<String>? genres;
  @override
  final BuiltSet<int>? tags;
  @override
  final DateTime? added;
  @override
  final AddSeriesOptions? addOptions;
  @override
  final Ratings? ratings;
  @override
  final SeriesStatisticsResource? statistics;
  @override
  final bool? episodesChanged;
  @override
  final int? languageProfileId;

  factory _$SeriesResource([void Function(SeriesResourceBuilder)? updates]) =>
      (SeriesResourceBuilder()..update(updates))._build();

  _$SeriesResource._(
      {this.id,
      this.title,
      this.alternateTitles,
      this.sortTitle,
      this.status,
      this.ended,
      this.profileName,
      this.overview,
      this.nextAiring,
      this.previousAiring,
      this.network,
      this.airTime,
      this.images,
      this.originalLanguage,
      this.remotePoster,
      this.seasons,
      this.year,
      this.path,
      this.qualityProfileId,
      this.seasonFolder,
      this.monitored,
      this.monitorNewItems,
      this.useSceneNumbering,
      this.runtime,
      this.tvdbId,
      this.tvRageId,
      this.tvMazeId,
      this.tmdbId,
      this.firstAired,
      this.lastAired,
      this.seriesType,
      this.cleanTitle,
      this.imdbId,
      this.titleSlug,
      this.rootFolderPath,
      this.folder,
      this.certification,
      this.genres,
      this.tags,
      this.added,
      this.addOptions,
      this.ratings,
      this.statistics,
      this.episodesChanged,
      this.languageProfileId})
      : super._();
  @override
  SeriesResource rebuild(void Function(SeriesResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesResourceBuilder toBuilder() => SeriesResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesResource &&
        id == other.id &&
        title == other.title &&
        alternateTitles == other.alternateTitles &&
        sortTitle == other.sortTitle &&
        status == other.status &&
        ended == other.ended &&
        profileName == other.profileName &&
        overview == other.overview &&
        nextAiring == other.nextAiring &&
        previousAiring == other.previousAiring &&
        network == other.network &&
        airTime == other.airTime &&
        images == other.images &&
        originalLanguage == other.originalLanguage &&
        remotePoster == other.remotePoster &&
        seasons == other.seasons &&
        year == other.year &&
        path == other.path &&
        qualityProfileId == other.qualityProfileId &&
        seasonFolder == other.seasonFolder &&
        monitored == other.monitored &&
        monitorNewItems == other.monitorNewItems &&
        useSceneNumbering == other.useSceneNumbering &&
        runtime == other.runtime &&
        tvdbId == other.tvdbId &&
        tvRageId == other.tvRageId &&
        tvMazeId == other.tvMazeId &&
        tmdbId == other.tmdbId &&
        firstAired == other.firstAired &&
        lastAired == other.lastAired &&
        seriesType == other.seriesType &&
        cleanTitle == other.cleanTitle &&
        imdbId == other.imdbId &&
        titleSlug == other.titleSlug &&
        rootFolderPath == other.rootFolderPath &&
        folder == other.folder &&
        certification == other.certification &&
        genres == other.genres &&
        tags == other.tags &&
        added == other.added &&
        addOptions == other.addOptions &&
        ratings == other.ratings &&
        statistics == other.statistics &&
        episodesChanged == other.episodesChanged &&
        languageProfileId == other.languageProfileId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, alternateTitles.hashCode);
    _$hash = $jc(_$hash, sortTitle.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, ended.hashCode);
    _$hash = $jc(_$hash, profileName.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, nextAiring.hashCode);
    _$hash = $jc(_$hash, previousAiring.hashCode);
    _$hash = $jc(_$hash, network.hashCode);
    _$hash = $jc(_$hash, airTime.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, originalLanguage.hashCode);
    _$hash = $jc(_$hash, remotePoster.hashCode);
    _$hash = $jc(_$hash, seasons.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, qualityProfileId.hashCode);
    _$hash = $jc(_$hash, seasonFolder.hashCode);
    _$hash = $jc(_$hash, monitored.hashCode);
    _$hash = $jc(_$hash, monitorNewItems.hashCode);
    _$hash = $jc(_$hash, useSceneNumbering.hashCode);
    _$hash = $jc(_$hash, runtime.hashCode);
    _$hash = $jc(_$hash, tvdbId.hashCode);
    _$hash = $jc(_$hash, tvRageId.hashCode);
    _$hash = $jc(_$hash, tvMazeId.hashCode);
    _$hash = $jc(_$hash, tmdbId.hashCode);
    _$hash = $jc(_$hash, firstAired.hashCode);
    _$hash = $jc(_$hash, lastAired.hashCode);
    _$hash = $jc(_$hash, seriesType.hashCode);
    _$hash = $jc(_$hash, cleanTitle.hashCode);
    _$hash = $jc(_$hash, imdbId.hashCode);
    _$hash = $jc(_$hash, titleSlug.hashCode);
    _$hash = $jc(_$hash, rootFolderPath.hashCode);
    _$hash = $jc(_$hash, folder.hashCode);
    _$hash = $jc(_$hash, certification.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, added.hashCode);
    _$hash = $jc(_$hash, addOptions.hashCode);
    _$hash = $jc(_$hash, ratings.hashCode);
    _$hash = $jc(_$hash, statistics.hashCode);
    _$hash = $jc(_$hash, episodesChanged.hashCode);
    _$hash = $jc(_$hash, languageProfileId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesResource')
          ..add('id', id)
          ..add('title', title)
          ..add('alternateTitles', alternateTitles)
          ..add('sortTitle', sortTitle)
          ..add('status', status)
          ..add('ended', ended)
          ..add('profileName', profileName)
          ..add('overview', overview)
          ..add('nextAiring', nextAiring)
          ..add('previousAiring', previousAiring)
          ..add('network', network)
          ..add('airTime', airTime)
          ..add('images', images)
          ..add('originalLanguage', originalLanguage)
          ..add('remotePoster', remotePoster)
          ..add('seasons', seasons)
          ..add('year', year)
          ..add('path', path)
          ..add('qualityProfileId', qualityProfileId)
          ..add('seasonFolder', seasonFolder)
          ..add('monitored', monitored)
          ..add('monitorNewItems', monitorNewItems)
          ..add('useSceneNumbering', useSceneNumbering)
          ..add('runtime', runtime)
          ..add('tvdbId', tvdbId)
          ..add('tvRageId', tvRageId)
          ..add('tvMazeId', tvMazeId)
          ..add('tmdbId', tmdbId)
          ..add('firstAired', firstAired)
          ..add('lastAired', lastAired)
          ..add('seriesType', seriesType)
          ..add('cleanTitle', cleanTitle)
          ..add('imdbId', imdbId)
          ..add('titleSlug', titleSlug)
          ..add('rootFolderPath', rootFolderPath)
          ..add('folder', folder)
          ..add('certification', certification)
          ..add('genres', genres)
          ..add('tags', tags)
          ..add('added', added)
          ..add('addOptions', addOptions)
          ..add('ratings', ratings)
          ..add('statistics', statistics)
          ..add('episodesChanged', episodesChanged)
          ..add('languageProfileId', languageProfileId))
        .toString();
  }
}

class SeriesResourceBuilder
    implements Builder<SeriesResource, SeriesResourceBuilder> {
  _$SeriesResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<AlternateTitleResource>? _alternateTitles;
  ListBuilder<AlternateTitleResource> get alternateTitles =>
      _$this._alternateTitles ??= ListBuilder<AlternateTitleResource>();
  set alternateTitles(ListBuilder<AlternateTitleResource>? alternateTitles) =>
      _$this._alternateTitles = alternateTitles;

  String? _sortTitle;
  String? get sortTitle => _$this._sortTitle;
  set sortTitle(String? sortTitle) => _$this._sortTitle = sortTitle;

  SeriesStatusType? _status;
  SeriesStatusType? get status => _$this._status;
  set status(SeriesStatusType? status) => _$this._status = status;

  bool? _ended;
  bool? get ended => _$this._ended;
  set ended(bool? ended) => _$this._ended = ended;

  String? _profileName;
  String? get profileName => _$this._profileName;
  set profileName(String? profileName) => _$this._profileName = profileName;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  DateTime? _nextAiring;
  DateTime? get nextAiring => _$this._nextAiring;
  set nextAiring(DateTime? nextAiring) => _$this._nextAiring = nextAiring;

  DateTime? _previousAiring;
  DateTime? get previousAiring => _$this._previousAiring;
  set previousAiring(DateTime? previousAiring) =>
      _$this._previousAiring = previousAiring;

  String? _network;
  String? get network => _$this._network;
  set network(String? network) => _$this._network = network;

  String? _airTime;
  String? get airTime => _$this._airTime;
  set airTime(String? airTime) => _$this._airTime = airTime;

  ListBuilder<MediaCover>? _images;
  ListBuilder<MediaCover> get images =>
      _$this._images ??= ListBuilder<MediaCover>();
  set images(ListBuilder<MediaCover>? images) => _$this._images = images;

  LanguageBuilder? _originalLanguage;
  LanguageBuilder get originalLanguage =>
      _$this._originalLanguage ??= LanguageBuilder();
  set originalLanguage(LanguageBuilder? originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String? _remotePoster;
  String? get remotePoster => _$this._remotePoster;
  set remotePoster(String? remotePoster) => _$this._remotePoster = remotePoster;

  ListBuilder<SeasonResource>? _seasons;
  ListBuilder<SeasonResource> get seasons =>
      _$this._seasons ??= ListBuilder<SeasonResource>();
  set seasons(ListBuilder<SeasonResource>? seasons) =>
      _$this._seasons = seasons;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  int? _qualityProfileId;
  int? get qualityProfileId => _$this._qualityProfileId;
  set qualityProfileId(int? qualityProfileId) =>
      _$this._qualityProfileId = qualityProfileId;

  bool? _seasonFolder;
  bool? get seasonFolder => _$this._seasonFolder;
  set seasonFolder(bool? seasonFolder) => _$this._seasonFolder = seasonFolder;

  bool? _monitored;
  bool? get monitored => _$this._monitored;
  set monitored(bool? monitored) => _$this._monitored = monitored;

  NewItemMonitorTypes? _monitorNewItems;
  NewItemMonitorTypes? get monitorNewItems => _$this._monitorNewItems;
  set monitorNewItems(NewItemMonitorTypes? monitorNewItems) =>
      _$this._monitorNewItems = monitorNewItems;

  bool? _useSceneNumbering;
  bool? get useSceneNumbering => _$this._useSceneNumbering;
  set useSceneNumbering(bool? useSceneNumbering) =>
      _$this._useSceneNumbering = useSceneNumbering;

  int? _runtime;
  int? get runtime => _$this._runtime;
  set runtime(int? runtime) => _$this._runtime = runtime;

  int? _tvdbId;
  int? get tvdbId => _$this._tvdbId;
  set tvdbId(int? tvdbId) => _$this._tvdbId = tvdbId;

  int? _tvRageId;
  int? get tvRageId => _$this._tvRageId;
  set tvRageId(int? tvRageId) => _$this._tvRageId = tvRageId;

  int? _tvMazeId;
  int? get tvMazeId => _$this._tvMazeId;
  set tvMazeId(int? tvMazeId) => _$this._tvMazeId = tvMazeId;

  int? _tmdbId;
  int? get tmdbId => _$this._tmdbId;
  set tmdbId(int? tmdbId) => _$this._tmdbId = tmdbId;

  DateTime? _firstAired;
  DateTime? get firstAired => _$this._firstAired;
  set firstAired(DateTime? firstAired) => _$this._firstAired = firstAired;

  DateTime? _lastAired;
  DateTime? get lastAired => _$this._lastAired;
  set lastAired(DateTime? lastAired) => _$this._lastAired = lastAired;

  SeriesTypes? _seriesType;
  SeriesTypes? get seriesType => _$this._seriesType;
  set seriesType(SeriesTypes? seriesType) => _$this._seriesType = seriesType;

  String? _cleanTitle;
  String? get cleanTitle => _$this._cleanTitle;
  set cleanTitle(String? cleanTitle) => _$this._cleanTitle = cleanTitle;

  String? _imdbId;
  String? get imdbId => _$this._imdbId;
  set imdbId(String? imdbId) => _$this._imdbId = imdbId;

  String? _titleSlug;
  String? get titleSlug => _$this._titleSlug;
  set titleSlug(String? titleSlug) => _$this._titleSlug = titleSlug;

  String? _rootFolderPath;
  String? get rootFolderPath => _$this._rootFolderPath;
  set rootFolderPath(String? rootFolderPath) =>
      _$this._rootFolderPath = rootFolderPath;

  String? _folder;
  String? get folder => _$this._folder;
  set folder(String? folder) => _$this._folder = folder;

  String? _certification;
  String? get certification => _$this._certification;
  set certification(String? certification) =>
      _$this._certification = certification;

  ListBuilder<String>? _genres;
  ListBuilder<String> get genres => _$this._genres ??= ListBuilder<String>();
  set genres(ListBuilder<String>? genres) => _$this._genres = genres;

  SetBuilder<int>? _tags;
  SetBuilder<int> get tags => _$this._tags ??= SetBuilder<int>();
  set tags(SetBuilder<int>? tags) => _$this._tags = tags;

  DateTime? _added;
  DateTime? get added => _$this._added;
  set added(DateTime? added) => _$this._added = added;

  AddSeriesOptionsBuilder? _addOptions;
  AddSeriesOptionsBuilder get addOptions =>
      _$this._addOptions ??= AddSeriesOptionsBuilder();
  set addOptions(AddSeriesOptionsBuilder? addOptions) =>
      _$this._addOptions = addOptions;

  RatingsBuilder? _ratings;
  RatingsBuilder get ratings => _$this._ratings ??= RatingsBuilder();
  set ratings(RatingsBuilder? ratings) => _$this._ratings = ratings;

  SeriesStatisticsResourceBuilder? _statistics;
  SeriesStatisticsResourceBuilder get statistics =>
      _$this._statistics ??= SeriesStatisticsResourceBuilder();
  set statistics(SeriesStatisticsResourceBuilder? statistics) =>
      _$this._statistics = statistics;

  bool? _episodesChanged;
  bool? get episodesChanged => _$this._episodesChanged;
  set episodesChanged(bool? episodesChanged) =>
      _$this._episodesChanged = episodesChanged;

  int? _languageProfileId;
  int? get languageProfileId => _$this._languageProfileId;
  set languageProfileId(int? languageProfileId) =>
      _$this._languageProfileId = languageProfileId;

  SeriesResourceBuilder() {
    SeriesResource._defaults(this);
  }

  SeriesResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _alternateTitles = $v.alternateTitles?.toBuilder();
      _sortTitle = $v.sortTitle;
      _status = $v.status;
      _ended = $v.ended;
      _profileName = $v.profileName;
      _overview = $v.overview;
      _nextAiring = $v.nextAiring;
      _previousAiring = $v.previousAiring;
      _network = $v.network;
      _airTime = $v.airTime;
      _images = $v.images?.toBuilder();
      _originalLanguage = $v.originalLanguage?.toBuilder();
      _remotePoster = $v.remotePoster;
      _seasons = $v.seasons?.toBuilder();
      _year = $v.year;
      _path = $v.path;
      _qualityProfileId = $v.qualityProfileId;
      _seasonFolder = $v.seasonFolder;
      _monitored = $v.monitored;
      _monitorNewItems = $v.monitorNewItems;
      _useSceneNumbering = $v.useSceneNumbering;
      _runtime = $v.runtime;
      _tvdbId = $v.tvdbId;
      _tvRageId = $v.tvRageId;
      _tvMazeId = $v.tvMazeId;
      _tmdbId = $v.tmdbId;
      _firstAired = $v.firstAired;
      _lastAired = $v.lastAired;
      _seriesType = $v.seriesType;
      _cleanTitle = $v.cleanTitle;
      _imdbId = $v.imdbId;
      _titleSlug = $v.titleSlug;
      _rootFolderPath = $v.rootFolderPath;
      _folder = $v.folder;
      _certification = $v.certification;
      _genres = $v.genres?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _added = $v.added;
      _addOptions = $v.addOptions?.toBuilder();
      _ratings = $v.ratings?.toBuilder();
      _statistics = $v.statistics?.toBuilder();
      _episodesChanged = $v.episodesChanged;
      _languageProfileId = $v.languageProfileId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesResource other) {
    _$v = other as _$SeriesResource;
  }

  @override
  void update(void Function(SeriesResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesResource build() => _build();

  _$SeriesResource _build() {
    _$SeriesResource _$result;
    try {
      _$result = _$v ??
          _$SeriesResource._(
            id: id,
            title: title,
            alternateTitles: _alternateTitles?.build(),
            sortTitle: sortTitle,
            status: status,
            ended: ended,
            profileName: profileName,
            overview: overview,
            nextAiring: nextAiring,
            previousAiring: previousAiring,
            network: network,
            airTime: airTime,
            images: _images?.build(),
            originalLanguage: _originalLanguage?.build(),
            remotePoster: remotePoster,
            seasons: _seasons?.build(),
            year: year,
            path: path,
            qualityProfileId: qualityProfileId,
            seasonFolder: seasonFolder,
            monitored: monitored,
            monitorNewItems: monitorNewItems,
            useSceneNumbering: useSceneNumbering,
            runtime: runtime,
            tvdbId: tvdbId,
            tvRageId: tvRageId,
            tvMazeId: tvMazeId,
            tmdbId: tmdbId,
            firstAired: firstAired,
            lastAired: lastAired,
            seriesType: seriesType,
            cleanTitle: cleanTitle,
            imdbId: imdbId,
            titleSlug: titleSlug,
            rootFolderPath: rootFolderPath,
            folder: folder,
            certification: certification,
            genres: _genres?.build(),
            tags: _tags?.build(),
            added: added,
            addOptions: _addOptions?.build(),
            ratings: _ratings?.build(),
            statistics: _statistics?.build(),
            episodesChanged: episodesChanged,
            languageProfileId: languageProfileId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alternateTitles';
        _alternateTitles?.build();

        _$failedField = 'images';
        _images?.build();
        _$failedField = 'originalLanguage';
        _originalLanguage?.build();

        _$failedField = 'seasons';
        _seasons?.build();

        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'addOptions';
        _addOptions?.build();
        _$failedField = 'ratings';
        _ratings?.build();
        _$failedField = 'statistics';
        _statistics?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeriesResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
