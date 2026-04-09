// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RatingsCWProxy {
  Ratings votes(int? votes);

  Ratings value(double? value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Ratings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Ratings(...).copyWith(id: 12, name: "My name")
  /// ````
  Ratings call({int? votes, double? value});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRatings.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRatings.copyWith.fieldName(...)`
class _$RatingsCWProxyImpl implements _$RatingsCWProxy {
  const _$RatingsCWProxyImpl(this._value);

  final Ratings _value;

  @override
  Ratings votes(int? votes) => this(votes: votes);

  @override
  Ratings value(double? value) => this(value: value);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Ratings(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Ratings(...).copyWith(id: 12, name: "My name")
  /// ````
  Ratings call({
    Object? votes = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return Ratings(
      votes: votes == const $CopyWithPlaceholder()
          ? _value.votes
          // ignore: cast_nullable_to_non_nullable
          : votes as int?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as double?,
    );
  }
}

extension $RatingsCopyWith on Ratings {
  /// Returns a callable class that can be used as follows: `instanceOfRatings.copyWith(...)` or like so:`instanceOfRatings.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RatingsCWProxy get copyWith => _$RatingsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ratings _$RatingsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Ratings', json, ($checkedConvert) {
      final val = Ratings(
        votes: $checkedConvert('votes', (v) => (v as num?)?.toInt()),
        value: $checkedConvert('value', (v) => (v as num?)?.toDouble()),
      );
      return val;
    });

Map<String, dynamic> _$RatingsToJson(Ratings instance) => <String, dynamic>{
  'votes': ?instance.votes,
  'value': ?instance.value,
};
