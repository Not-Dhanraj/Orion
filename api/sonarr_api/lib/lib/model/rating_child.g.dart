// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_child.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RatingChildCWProxy {
  RatingChild votes(int? votes);

  RatingChild value(double? value);

  RatingChild type(RatingType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RatingChild(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RatingChild(...).copyWith(id: 12, name: "My name")
  /// ````
  RatingChild call({int? votes, double? value, RatingType? type});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRatingChild.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRatingChild.copyWith.fieldName(...)`
class _$RatingChildCWProxyImpl implements _$RatingChildCWProxy {
  const _$RatingChildCWProxyImpl(this._value);

  final RatingChild _value;

  @override
  RatingChild votes(int? votes) => this(votes: votes);

  @override
  RatingChild value(double? value) => this(value: value);

  @override
  RatingChild type(RatingType? type) => this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RatingChild(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RatingChild(...).copyWith(id: 12, name: "My name")
  /// ````
  RatingChild call({
    Object? votes = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return RatingChild(
      votes: votes == const $CopyWithPlaceholder()
          ? _value.votes
          // ignore: cast_nullable_to_non_nullable
          : votes as int?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as double?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as RatingType?,
    );
  }
}

extension $RatingChildCopyWith on RatingChild {
  /// Returns a callable class that can be used as follows: `instanceOfRatingChild.copyWith(...)` or like so:`instanceOfRatingChild.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RatingChildCWProxy get copyWith => _$RatingChildCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingChild _$RatingChildFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RatingChild', json, ($checkedConvert) {
      final val = RatingChild(
        votes: $checkedConvert('votes', (v) => (v as num?)?.toInt()),
        value: $checkedConvert('value', (v) => (v as num?)?.toDouble()),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$RatingTypeEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$RatingChildToJson(RatingChild instance) =>
    <String, dynamic>{
      'votes': ?instance.votes,
      'value': ?instance.value,
      'type': ?_$RatingTypeEnumMap[instance.type],
    };

const _$RatingTypeEnumMap = {
  RatingType.user: 'user',
  RatingType.critic: 'critic',
};
