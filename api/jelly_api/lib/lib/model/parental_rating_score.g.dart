// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parental_rating_score.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ParentalRatingScoreCWProxy {
  ParentalRatingScore score(int? score);

  ParentalRatingScore subScore(int? subScore);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParentalRatingScore(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParentalRatingScore(...).copyWith(id: 12, name: "My name")
  /// ````
  ParentalRatingScore call({int? score, int? subScore});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfParentalRatingScore.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfParentalRatingScore.copyWith.fieldName(...)`
class _$ParentalRatingScoreCWProxyImpl implements _$ParentalRatingScoreCWProxy {
  const _$ParentalRatingScoreCWProxyImpl(this._value);

  final ParentalRatingScore _value;

  @override
  ParentalRatingScore score(int? score) => this(score: score);

  @override
  ParentalRatingScore subScore(int? subScore) => this(subScore: subScore);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParentalRatingScore(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParentalRatingScore(...).copyWith(id: 12, name: "My name")
  /// ````
  ParentalRatingScore call({
    Object? score = const $CopyWithPlaceholder(),
    Object? subScore = const $CopyWithPlaceholder(),
  }) {
    return ParentalRatingScore(
      score: score == const $CopyWithPlaceholder()
          ? _value.score
          // ignore: cast_nullable_to_non_nullable
          : score as int?,
      subScore: subScore == const $CopyWithPlaceholder()
          ? _value.subScore
          // ignore: cast_nullable_to_non_nullable
          : subScore as int?,
    );
  }
}

extension $ParentalRatingScoreCopyWith on ParentalRatingScore {
  /// Returns a callable class that can be used as follows: `instanceOfParentalRatingScore.copyWith(...)` or like so:`instanceOfParentalRatingScore.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ParentalRatingScoreCWProxy get copyWith =>
      _$ParentalRatingScoreCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParentalRatingScore _$ParentalRatingScoreFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ParentalRatingScore', json, ($checkedConvert) {
      final val = ParentalRatingScore(
        score: $checkedConvert('score', (v) => (v as num?)?.toInt()),
        subScore: $checkedConvert('subScore', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ParentalRatingScoreToJson(
  ParentalRatingScore instance,
) => <String, dynamic>{
  'score': ?instance.score,
  'subScore': ?instance.subScore,
};
