// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int get runtime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @MovieStatusConverter()
  MovieStatus get movieStatus => throw _privateConstructorUsedError;
  DateTime get digitalRelease => throw _privateConstructorUsedError;
  String get certification => throw _privateConstructorUsedError;
  String get youTubeTrailerId => throw _privateConstructorUsedError;
  String get studio => throw _privateConstructorUsedError;
  bool get hasFile => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  bool get monitored => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  int get qualityProfileId => throw _privateConstructorUsedError;
  int get minimumAvailability => throw _privateConstructorUsedError;

  /// Serializes this Movie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call({
    int id,
    String title,
    String originalTitle,
    String overview,
    List<String> genres,
    int year,
    int runtime,
    String status,
    @MovieStatusConverter() MovieStatus movieStatus,
    DateTime digitalRelease,
    String certification,
    String youTubeTrailerId,
    String studio,
    bool hasFile,
    bool isAvailable,
    bool monitored,
    String path,
    int qualityProfileId,
    int minimumAvailability,
  });
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? genres = null,
    Object? year = null,
    Object? runtime = null,
    Object? status = null,
    Object? movieStatus = null,
    Object? digitalRelease = null,
    Object? certification = null,
    Object? youTubeTrailerId = null,
    Object? studio = null,
    Object? hasFile = null,
    Object? isAvailable = null,
    Object? monitored = null,
    Object? path = null,
    Object? qualityProfileId = null,
    Object? minimumAvailability = null,
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
            originalTitle: null == originalTitle
                ? _value.originalTitle
                : originalTitle // ignore: cast_nullable_to_non_nullable
                      as String,
            overview: null == overview
                ? _value.overview
                : overview // ignore: cast_nullable_to_non_nullable
                      as String,
            genres: null == genres
                ? _value.genres
                : genres // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            year: null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                      as int,
            runtime: null == runtime
                ? _value.runtime
                : runtime // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            movieStatus: null == movieStatus
                ? _value.movieStatus
                : movieStatus // ignore: cast_nullable_to_non_nullable
                      as MovieStatus,
            digitalRelease: null == digitalRelease
                ? _value.digitalRelease
                : digitalRelease // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            certification: null == certification
                ? _value.certification
                : certification // ignore: cast_nullable_to_non_nullable
                      as String,
            youTubeTrailerId: null == youTubeTrailerId
                ? _value.youTubeTrailerId
                : youTubeTrailerId // ignore: cast_nullable_to_non_nullable
                      as String,
            studio: null == studio
                ? _value.studio
                : studio // ignore: cast_nullable_to_non_nullable
                      as String,
            hasFile: null == hasFile
                ? _value.hasFile
                : hasFile // ignore: cast_nullable_to_non_nullable
                      as bool,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
            monitored: null == monitored
                ? _value.monitored
                : monitored // ignore: cast_nullable_to_non_nullable
                      as bool,
            path: null == path
                ? _value.path
                : path // ignore: cast_nullable_to_non_nullable
                      as String,
            qualityProfileId: null == qualityProfileId
                ? _value.qualityProfileId
                : qualityProfileId // ignore: cast_nullable_to_non_nullable
                      as int,
            minimumAvailability: null == minimumAvailability
                ? _value.minimumAvailability
                : minimumAvailability // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
    _$MovieImpl value,
    $Res Function(_$MovieImpl) then,
  ) = __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String originalTitle,
    String overview,
    List<String> genres,
    int year,
    int runtime,
    String status,
    @MovieStatusConverter() MovieStatus movieStatus,
    DateTime digitalRelease,
    String certification,
    String youTubeTrailerId,
    String studio,
    bool hasFile,
    bool isAvailable,
    bool monitored,
    String path,
    int qualityProfileId,
    int minimumAvailability,
  });
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
    _$MovieImpl _value,
    $Res Function(_$MovieImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? genres = null,
    Object? year = null,
    Object? runtime = null,
    Object? status = null,
    Object? movieStatus = null,
    Object? digitalRelease = null,
    Object? certification = null,
    Object? youTubeTrailerId = null,
    Object? studio = null,
    Object? hasFile = null,
    Object? isAvailable = null,
    Object? monitored = null,
    Object? path = null,
    Object? qualityProfileId = null,
    Object? minimumAvailability = null,
  }) {
    return _then(
      _$MovieImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        originalTitle: null == originalTitle
            ? _value.originalTitle
            : originalTitle // ignore: cast_nullable_to_non_nullable
                  as String,
        overview: null == overview
            ? _value.overview
            : overview // ignore: cast_nullable_to_non_nullable
                  as String,
        genres: null == genres
            ? _value._genres
            : genres // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        year: null == year
            ? _value.year
            : year // ignore: cast_nullable_to_non_nullable
                  as int,
        runtime: null == runtime
            ? _value.runtime
            : runtime // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        movieStatus: null == movieStatus
            ? _value.movieStatus
            : movieStatus // ignore: cast_nullable_to_non_nullable
                  as MovieStatus,
        digitalRelease: null == digitalRelease
            ? _value.digitalRelease
            : digitalRelease // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        certification: null == certification
            ? _value.certification
            : certification // ignore: cast_nullable_to_non_nullable
                  as String,
        youTubeTrailerId: null == youTubeTrailerId
            ? _value.youTubeTrailerId
            : youTubeTrailerId // ignore: cast_nullable_to_non_nullable
                  as String,
        studio: null == studio
            ? _value.studio
            : studio // ignore: cast_nullable_to_non_nullable
                  as String,
        hasFile: null == hasFile
            ? _value.hasFile
            : hasFile // ignore: cast_nullable_to_non_nullable
                  as bool,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
                  as bool,
        monitored: null == monitored
            ? _value.monitored
            : monitored // ignore: cast_nullable_to_non_nullable
                  as bool,
        path: null == path
            ? _value.path
            : path // ignore: cast_nullable_to_non_nullable
                  as String,
        qualityProfileId: null == qualityProfileId
            ? _value.qualityProfileId
            : qualityProfileId // ignore: cast_nullable_to_non_nullable
                  as int,
        minimumAvailability: null == minimumAvailability
            ? _value.minimumAvailability
            : minimumAvailability // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImpl implements _Movie {
  const _$MovieImpl({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.overview,
    required final List<String> genres,
    required this.year,
    required this.runtime,
    required this.status,
    @MovieStatusConverter() required this.movieStatus,
    required this.digitalRelease,
    required this.certification,
    required this.youTubeTrailerId,
    required this.studio,
    required this.hasFile,
    required this.isAvailable,
    required this.monitored,
    required this.path,
    required this.qualityProfileId,
    required this.minimumAvailability,
  }) : _genres = genres;

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String originalTitle;
  @override
  final String overview;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final int year;
  @override
  final int runtime;
  @override
  final String status;
  @override
  @MovieStatusConverter()
  final MovieStatus movieStatus;
  @override
  final DateTime digitalRelease;
  @override
  final String certification;
  @override
  final String youTubeTrailerId;
  @override
  final String studio;
  @override
  final bool hasFile;
  @override
  final bool isAvailable;
  @override
  final bool monitored;
  @override
  final String path;
  @override
  final int qualityProfileId;
  @override
  final int minimumAvailability;

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, originalTitle: $originalTitle, overview: $overview, genres: $genres, year: $year, runtime: $runtime, status: $status, movieStatus: $movieStatus, digitalRelease: $digitalRelease, certification: $certification, youTubeTrailerId: $youTubeTrailerId, studio: $studio, hasFile: $hasFile, isAvailable: $isAvailable, monitored: $monitored, path: $path, qualityProfileId: $qualityProfileId, minimumAvailability: $minimumAvailability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.movieStatus, movieStatus) ||
                other.movieStatus == movieStatus) &&
            (identical(other.digitalRelease, digitalRelease) ||
                other.digitalRelease == digitalRelease) &&
            (identical(other.certification, certification) ||
                other.certification == certification) &&
            (identical(other.youTubeTrailerId, youTubeTrailerId) ||
                other.youTubeTrailerId == youTubeTrailerId) &&
            (identical(other.studio, studio) || other.studio == studio) &&
            (identical(other.hasFile, hasFile) || other.hasFile == hasFile) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.monitored, monitored) ||
                other.monitored == monitored) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.qualityProfileId, qualityProfileId) ||
                other.qualityProfileId == qualityProfileId) &&
            (identical(other.minimumAvailability, minimumAvailability) ||
                other.minimumAvailability == minimumAvailability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    title,
    originalTitle,
    overview,
    const DeepCollectionEquality().hash(_genres),
    year,
    runtime,
    status,
    movieStatus,
    digitalRelease,
    certification,
    youTubeTrailerId,
    studio,
    hasFile,
    isAvailable,
    monitored,
    path,
    qualityProfileId,
    minimumAvailability,
  ]);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(this);
  }
}

abstract class _Movie implements Movie {
  const factory _Movie({
    required final int id,
    required final String title,
    required final String originalTitle,
    required final String overview,
    required final List<String> genres,
    required final int year,
    required final int runtime,
    required final String status,
    @MovieStatusConverter() required final MovieStatus movieStatus,
    required final DateTime digitalRelease,
    required final String certification,
    required final String youTubeTrailerId,
    required final String studio,
    required final bool hasFile,
    required final bool isAvailable,
    required final bool monitored,
    required final String path,
    required final int qualityProfileId,
    required final int minimumAvailability,
  }) = _$MovieImpl;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get originalTitle;
  @override
  String get overview;
  @override
  List<String> get genres;
  @override
  int get year;
  @override
  int get runtime;
  @override
  String get status;
  @override
  @MovieStatusConverter()
  MovieStatus get movieStatus;
  @override
  DateTime get digitalRelease;
  @override
  String get certification;
  @override
  String get youTubeTrailerId;
  @override
  String get studio;
  @override
  bool get hasFile;
  @override
  bool get isAvailable;
  @override
  bool get monitored;
  @override
  String get path;
  @override
  int get qualityProfileId;
  @override
  int get minimumAvailability;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
