// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Series _$SeriesFromJson(Map<String, dynamic> json) {
  return _Series.fromJson(json);
}

/// @nodoc
mixin _$Series {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get previousAiring => throw _privateConstructorUsedError;
  DateTime get nextAiring => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;
  String get remotePoster => throw _privateConstructorUsedError;
  List<Season> get seasons => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  int get qualityProfileId => throw _privateConstructorUsedError;
  bool get seasonFolder => throw _privateConstructorUsedError;
  bool get monitored => throw _privateConstructorUsedError;
  bool get useSceneNumbering => throw _privateConstructorUsedError;
  int get seriesType => throw _privateConstructorUsedError;

  /// Serializes this Series to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res, Series>;
  @useResult
  $Res call({
    int id,
    String title,
    String overview,
    String status,
    DateTime previousAiring,
    DateTime nextAiring,
    String network,
    String remotePoster,
    List<Season> seasons,
    int year,
    String path,
    int qualityProfileId,
    bool seasonFolder,
    bool monitored,
    bool useSceneNumbering,
    int seriesType,
  });
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res, $Val extends Series>
    implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? status = null,
    Object? previousAiring = null,
    Object? nextAiring = null,
    Object? network = null,
    Object? remotePoster = null,
    Object? seasons = null,
    Object? year = null,
    Object? path = null,
    Object? qualityProfileId = null,
    Object? seasonFolder = null,
    Object? monitored = null,
    Object? useSceneNumbering = null,
    Object? seriesType = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            overview: null == overview
                ? _value.overview
                : overview // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            previousAiring: null == previousAiring
                ? _value.previousAiring
                : previousAiring // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            nextAiring: null == nextAiring
                ? _value.nextAiring
                : nextAiring // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            network: null == network
                ? _value.network
                : network // ignore: cast_nullable_to_non_nullable
                      as String,
            remotePoster: null == remotePoster
                ? _value.remotePoster
                : remotePoster // ignore: cast_nullable_to_non_nullable
                      as String,
            seasons: null == seasons
                ? _value.seasons
                : seasons // ignore: cast_nullable_to_non_nullable
                      as List<Season>,
            year: null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                      as int,
            path: null == path
                ? _value.path
                : path // ignore: cast_nullable_to_non_nullable
                      as String,
            qualityProfileId: null == qualityProfileId
                ? _value.qualityProfileId
                : qualityProfileId // ignore: cast_nullable_to_non_nullable
                      as int,
            seasonFolder: null == seasonFolder
                ? _value.seasonFolder
                : seasonFolder // ignore: cast_nullable_to_non_nullable
                      as bool,
            monitored: null == monitored
                ? _value.monitored
                : monitored // ignore: cast_nullable_to_non_nullable
                      as bool,
            useSceneNumbering: null == useSceneNumbering
                ? _value.useSceneNumbering
                : useSceneNumbering // ignore: cast_nullable_to_non_nullable
                      as bool,
            seriesType: null == seriesType
                ? _value.seriesType
                : seriesType // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SeriesImplCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$$SeriesImplCopyWith(
    _$SeriesImpl value,
    $Res Function(_$SeriesImpl) then,
  ) = __$$SeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String overview,
    String status,
    DateTime previousAiring,
    DateTime nextAiring,
    String network,
    String remotePoster,
    List<Season> seasons,
    int year,
    String path,
    int qualityProfileId,
    bool seasonFolder,
    bool monitored,
    bool useSceneNumbering,
    int seriesType,
  });
}

/// @nodoc
class __$$SeriesImplCopyWithImpl<$Res>
    extends _$SeriesCopyWithImpl<$Res, _$SeriesImpl>
    implements _$$SeriesImplCopyWith<$Res> {
  __$$SeriesImplCopyWithImpl(
    _$SeriesImpl _value,
    $Res Function(_$SeriesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = null,
    Object? status = null,
    Object? previousAiring = null,
    Object? nextAiring = null,
    Object? network = null,
    Object? remotePoster = null,
    Object? seasons = null,
    Object? year = null,
    Object? path = null,
    Object? qualityProfileId = null,
    Object? seasonFolder = null,
    Object? monitored = null,
    Object? useSceneNumbering = null,
    Object? seriesType = null,
  }) {
    return _then(
      _$SeriesImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        overview: null == overview
            ? _value.overview
            : overview // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        previousAiring: null == previousAiring
            ? _value.previousAiring
            : previousAiring // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        nextAiring: null == nextAiring
            ? _value.nextAiring
            : nextAiring // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        network: null == network
            ? _value.network
            : network // ignore: cast_nullable_to_non_nullable
                  as String,
        remotePoster: null == remotePoster
            ? _value.remotePoster
            : remotePoster // ignore: cast_nullable_to_non_nullable
                  as String,
        seasons: null == seasons
            ? _value._seasons
            : seasons // ignore: cast_nullable_to_non_nullable
                  as List<Season>,
        year: null == year
            ? _value.year
            : year // ignore: cast_nullable_to_non_nullable
                  as int,
        path: null == path
            ? _value.path
            : path // ignore: cast_nullable_to_non_nullable
                  as String,
        qualityProfileId: null == qualityProfileId
            ? _value.qualityProfileId
            : qualityProfileId // ignore: cast_nullable_to_non_nullable
                  as int,
        seasonFolder: null == seasonFolder
            ? _value.seasonFolder
            : seasonFolder // ignore: cast_nullable_to_non_nullable
                  as bool,
        monitored: null == monitored
            ? _value.monitored
            : monitored // ignore: cast_nullable_to_non_nullable
                  as bool,
        useSceneNumbering: null == useSceneNumbering
            ? _value.useSceneNumbering
            : useSceneNumbering // ignore: cast_nullable_to_non_nullable
                  as bool,
        seriesType: null == seriesType
            ? _value.seriesType
            : seriesType // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SeriesImpl implements _Series {
  const _$SeriesImpl({
    required this.id,
    required this.title,
    required this.overview,
    required this.status,
    required this.previousAiring,
    required this.nextAiring,
    required this.network,
    required this.remotePoster,
    required final List<Season> seasons,
    required this.year,
    required this.path,
    required this.qualityProfileId,
    required this.seasonFolder,
    required this.monitored,
    required this.useSceneNumbering,
    required this.seriesType,
  }) : _seasons = seasons;

  factory _$SeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String overview;
  @override
  final String status;
  @override
  final DateTime previousAiring;
  @override
  final DateTime nextAiring;
  @override
  final String network;
  @override
  final String remotePoster;
  final List<Season> _seasons;
  @override
  List<Season> get seasons {
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seasons);
  }

  @override
  final int year;
  @override
  final String path;
  @override
  final int qualityProfileId;
  @override
  final bool seasonFolder;
  @override
  final bool monitored;
  @override
  final bool useSceneNumbering;
  @override
  final int seriesType;

  @override
  String toString() {
    return 'Series(id: $id, title: $title, overview: $overview, status: $status, previousAiring: $previousAiring, nextAiring: $nextAiring, network: $network, remotePoster: $remotePoster, seasons: $seasons, year: $year, path: $path, qualityProfileId: $qualityProfileId, seasonFolder: $seasonFolder, monitored: $monitored, useSceneNumbering: $useSceneNumbering, seriesType: $seriesType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.previousAiring, previousAiring) ||
                other.previousAiring == previousAiring) &&
            (identical(other.nextAiring, nextAiring) ||
                other.nextAiring == nextAiring) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.remotePoster, remotePoster) ||
                other.remotePoster == remotePoster) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.qualityProfileId, qualityProfileId) ||
                other.qualityProfileId == qualityProfileId) &&
            (identical(other.seasonFolder, seasonFolder) ||
                other.seasonFolder == seasonFolder) &&
            (identical(other.monitored, monitored) ||
                other.monitored == monitored) &&
            (identical(other.useSceneNumbering, useSceneNumbering) ||
                other.useSceneNumbering == useSceneNumbering) &&
            (identical(other.seriesType, seriesType) ||
                other.seriesType == seriesType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    overview,
    status,
    previousAiring,
    nextAiring,
    network,
    remotePoster,
    const DeepCollectionEquality().hash(_seasons),
    year,
    path,
    qualityProfileId,
    seasonFolder,
    monitored,
    useSceneNumbering,
    seriesType,
  );

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      __$$SeriesImplCopyWithImpl<_$SeriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeriesImplToJson(this);
  }
}

abstract class _Series implements Series {
  const factory _Series({
    required final int id,
    required final String title,
    required final String overview,
    required final String status,
    required final DateTime previousAiring,
    required final DateTime nextAiring,
    required final String network,
    required final String remotePoster,
    required final List<Season> seasons,
    required final int year,
    required final String path,
    required final int qualityProfileId,
    required final bool seasonFolder,
    required final bool monitored,
    required final bool useSceneNumbering,
    required final int seriesType,
  }) = _$SeriesImpl;

  factory _Series.fromJson(Map<String, dynamic> json) = _$SeriesImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get overview;
  @override
  String get status;
  @override
  DateTime get previousAiring;
  @override
  DateTime get nextAiring;
  @override
  String get network;
  @override
  String get remotePoster;
  @override
  List<Season> get seasons;
  @override
  int get year;
  @override
  String get path;
  @override
  int get qualityProfileId;
  @override
  bool get seasonFolder;
  @override
  bool get monitored;
  @override
  bool get useSceneNumbering;
  @override
  int get seriesType;

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
