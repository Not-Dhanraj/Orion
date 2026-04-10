// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecommendationDtoCWProxy {
  RecommendationDto items(List<BaseItemDto>? items);

  RecommendationDto recommendationType(RecommendationType? recommendationType);

  RecommendationDto baselineItemName(String? baselineItemName);

  RecommendationDto categoryId(String? categoryId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RecommendationDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RecommendationDto(...).copyWith(id: 12, name: "My name")
  /// ````
  RecommendationDto call({
    List<BaseItemDto>? items,
    RecommendationType? recommendationType,
    String? baselineItemName,
    String? categoryId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRecommendationDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRecommendationDto.copyWith.fieldName(...)`
class _$RecommendationDtoCWProxyImpl implements _$RecommendationDtoCWProxy {
  const _$RecommendationDtoCWProxyImpl(this._value);

  final RecommendationDto _value;

  @override
  RecommendationDto items(List<BaseItemDto>? items) => this(items: items);

  @override
  RecommendationDto recommendationType(
    RecommendationType? recommendationType,
  ) => this(recommendationType: recommendationType);

  @override
  RecommendationDto baselineItemName(String? baselineItemName) =>
      this(baselineItemName: baselineItemName);

  @override
  RecommendationDto categoryId(String? categoryId) =>
      this(categoryId: categoryId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RecommendationDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RecommendationDto(...).copyWith(id: 12, name: "My name")
  /// ````
  RecommendationDto call({
    Object? items = const $CopyWithPlaceholder(),
    Object? recommendationType = const $CopyWithPlaceholder(),
    Object? baselineItemName = const $CopyWithPlaceholder(),
    Object? categoryId = const $CopyWithPlaceholder(),
  }) {
    return RecommendationDto(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<BaseItemDto>?,
      recommendationType: recommendationType == const $CopyWithPlaceholder()
          ? _value.recommendationType
          // ignore: cast_nullable_to_non_nullable
          : recommendationType as RecommendationType?,
      baselineItemName: baselineItemName == const $CopyWithPlaceholder()
          ? _value.baselineItemName
          // ignore: cast_nullable_to_non_nullable
          : baselineItemName as String?,
      categoryId: categoryId == const $CopyWithPlaceholder()
          ? _value.categoryId
          // ignore: cast_nullable_to_non_nullable
          : categoryId as String?,
    );
  }
}

extension $RecommendationDtoCopyWith on RecommendationDto {
  /// Returns a callable class that can be used as follows: `instanceOfRecommendationDto.copyWith(...)` or like so:`instanceOfRecommendationDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RecommendationDtoCWProxy get copyWith =>
      _$RecommendationDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendationDto _$RecommendationDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RecommendationDto',
      json,
      ($checkedConvert) {
        final val = RecommendationDto(
          items: $checkedConvert(
            'Items',
            (v) => (v as List<dynamic>?)
                ?.map((e) => BaseItemDto.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          recommendationType: $checkedConvert(
            'RecommendationType',
            (v) => $enumDecodeNullable(_$RecommendationTypeEnumMap, v),
          ),
          baselineItemName: $checkedConvert(
            'BaselineItemName',
            (v) => v as String?,
          ),
          categoryId: $checkedConvert('CategoryId', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'items': 'Items',
        'recommendationType': 'RecommendationType',
        'baselineItemName': 'BaselineItemName',
        'categoryId': 'CategoryId',
      },
    );

Map<String, dynamic> _$RecommendationDtoToJson(RecommendationDto instance) =>
    <String, dynamic>{
      'Items': ?instance.items?.map((e) => e.toJson()).toList(),
      'RecommendationType':
          ?_$RecommendationTypeEnumMap[instance.recommendationType],
      'BaselineItemName': ?instance.baselineItemName,
      'CategoryId': ?instance.categoryId,
    };

const _$RecommendationTypeEnumMap = {
  RecommendationType.similarToRecentlyPlayed: 'SimilarToRecentlyPlayed',
  RecommendationType.similarToLikedItem: 'SimilarToLikedItem',
  RecommendationType.hasDirectorFromRecentlyPlayed:
      'HasDirectorFromRecentlyPlayed',
  RecommendationType.hasActorFromRecentlyPlayed: 'HasActorFromRecentlyPlayed',
  RecommendationType.hasLikedDirector: 'HasLikedDirector',
  RecommendationType.hasLikedActor: 'HasLikedActor',
};
