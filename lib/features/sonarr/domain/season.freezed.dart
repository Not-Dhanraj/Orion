// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$Season {
  int get seasonNumber => throw _privateConstructorUsedError;
  bool get monitored => throw _privateConstructorUsedError;

  /// Serializes this Season to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res, Season>;
  @useResult
  $Res call({int seasonNumber, bool monitored});
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res, $Val extends Season>
    implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? seasonNumber = null, Object? monitored = null}) {
    return _then(
      _value.copyWith(
            seasonNumber: null == seasonNumber
                ? _value.seasonNumber
                : seasonNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            monitored: null == monitored
                ? _value.monitored
                : monitored // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SeasonImplCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$$SeasonImplCopyWith(
    _$SeasonImpl value,
    $Res Function(_$SeasonImpl) then,
  ) = __$$SeasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seasonNumber, bool monitored});
}

/// @nodoc
class __$$SeasonImplCopyWithImpl<$Res>
    extends _$SeasonCopyWithImpl<$Res, _$SeasonImpl>
    implements _$$SeasonImplCopyWith<$Res> {
  __$$SeasonImplCopyWithImpl(
    _$SeasonImpl _value,
    $Res Function(_$SeasonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? seasonNumber = null, Object? monitored = null}) {
    return _then(
      _$SeasonImpl(
        seasonNumber: null == seasonNumber
            ? _value.seasonNumber
            : seasonNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        monitored: null == monitored
            ? _value.monitored
            : monitored // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonImpl implements _Season {
  const _$SeasonImpl({required this.seasonNumber, required this.monitored});

  factory _$SeasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonImplFromJson(json);

  @override
  final int seasonNumber;
  @override
  final bool monitored;

  @override
  String toString() {
    return 'Season(seasonNumber: $seasonNumber, monitored: $monitored)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonImpl &&
            (identical(other.seasonNumber, seasonNumber) ||
                other.seasonNumber == seasonNumber) &&
            (identical(other.monitored, monitored) ||
                other.monitored == monitored));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seasonNumber, monitored);

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      __$$SeasonImplCopyWithImpl<_$SeasonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonImplToJson(this);
  }
}

abstract class _Season implements Season {
  const factory _Season({
    required final int seasonNumber,
    required final bool monitored,
  }) = _$SeasonImpl;

  factory _Season.fromJson(Map<String, dynamic> json) = _$SeasonImpl.fromJson;

  @override
  int get seasonNumber;
  @override
  bool get monitored;

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
