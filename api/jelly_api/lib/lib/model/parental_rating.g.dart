// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parental_rating.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ParentalRatingCWProxy {
  ParentalRating name(String? name);

  ParentalRating value(int? value);

  ParentalRating ratingScore(ParentalRatingScore? ratingScore);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParentalRating(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParentalRating(...).copyWith(id: 12, name: "My name")
  /// ````
  ParentalRating call({
    String? name,
    int? value,
    ParentalRatingScore? ratingScore,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfParentalRating.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfParentalRating.copyWith.fieldName(...)`
class _$ParentalRatingCWProxyImpl implements _$ParentalRatingCWProxy {
  const _$ParentalRatingCWProxyImpl(this._value);

  final ParentalRating _value;

  @override
  ParentalRating name(String? name) => this(name: name);

  @override
  ParentalRating value(int? value) => this(value: value);

  @override
  ParentalRating ratingScore(ParentalRatingScore? ratingScore) =>
      this(ratingScore: ratingScore);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParentalRating(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParentalRating(...).copyWith(id: 12, name: "My name")
  /// ````
  ParentalRating call({
    Object? name = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? ratingScore = const $CopyWithPlaceholder(),
  }) {
    return ParentalRating(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as int?,
      ratingScore: ratingScore == const $CopyWithPlaceholder()
          ? _value.ratingScore
          // ignore: cast_nullable_to_non_nullable
          : ratingScore as ParentalRatingScore?,
    );
  }
}

extension $ParentalRatingCopyWith on ParentalRating {
  /// Returns a callable class that can be used as follows: `instanceOfParentalRating.copyWith(...)` or like so:`instanceOfParentalRating.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ParentalRatingCWProxy get copyWith => _$ParentalRatingCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParentalRating _$ParentalRatingFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ParentalRating',
      json,
      ($checkedConvert) {
        final val = ParentalRating(
          name: $checkedConvert('Name', (v) => v as String?),
          value: $checkedConvert('Value', (v) => (v as num?)?.toInt()),
          ratingScore: $checkedConvert(
            'RatingScore',
            (v) => v == null
                ? null
                : ParentalRatingScore.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'name': 'Name',
        'value': 'Value',
        'ratingScore': 'RatingScore',
      },
    );

Map<String, dynamic> _$ParentalRatingToJson(ParentalRating instance) =>
    <String, dynamic>{
      'Name': ?instance.name,
      'Value': ?instance.value,
      'RatingScore': ?instance.ratingScore?.toJson(),
    };
