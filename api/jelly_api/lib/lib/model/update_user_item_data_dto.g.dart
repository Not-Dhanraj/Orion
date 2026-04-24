// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_item_data_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateUserItemDataDtoCWProxy {
  UpdateUserItemDataDto rating(double? rating);

  UpdateUserItemDataDto playedPercentage(double? playedPercentage);

  UpdateUserItemDataDto unplayedItemCount(int? unplayedItemCount);

  UpdateUserItemDataDto playbackPositionTicks(int? playbackPositionTicks);

  UpdateUserItemDataDto playCount(int? playCount);

  UpdateUserItemDataDto isFavorite(bool? isFavorite);

  UpdateUserItemDataDto likes(bool? likes);

  UpdateUserItemDataDto lastPlayedDate(DateTime? lastPlayedDate);

  UpdateUserItemDataDto played(bool? played);

  UpdateUserItemDataDto key(String? key);

  UpdateUserItemDataDto itemId(String? itemId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateUserItemDataDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateUserItemDataDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateUserItemDataDto call({
    double? rating,
    double? playedPercentage,
    int? unplayedItemCount,
    int? playbackPositionTicks,
    int? playCount,
    bool? isFavorite,
    bool? likes,
    DateTime? lastPlayedDate,
    bool? played,
    String? key,
    String? itemId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateUserItemDataDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateUserItemDataDto.copyWith.fieldName(...)`
class _$UpdateUserItemDataDtoCWProxyImpl
    implements _$UpdateUserItemDataDtoCWProxy {
  const _$UpdateUserItemDataDtoCWProxyImpl(this._value);

  final UpdateUserItemDataDto _value;

  @override
  UpdateUserItemDataDto rating(double? rating) => this(rating: rating);

  @override
  UpdateUserItemDataDto playedPercentage(double? playedPercentage) =>
      this(playedPercentage: playedPercentage);

  @override
  UpdateUserItemDataDto unplayedItemCount(int? unplayedItemCount) =>
      this(unplayedItemCount: unplayedItemCount);

  @override
  UpdateUserItemDataDto playbackPositionTicks(int? playbackPositionTicks) =>
      this(playbackPositionTicks: playbackPositionTicks);

  @override
  UpdateUserItemDataDto playCount(int? playCount) => this(playCount: playCount);

  @override
  UpdateUserItemDataDto isFavorite(bool? isFavorite) =>
      this(isFavorite: isFavorite);

  @override
  UpdateUserItemDataDto likes(bool? likes) => this(likes: likes);

  @override
  UpdateUserItemDataDto lastPlayedDate(DateTime? lastPlayedDate) =>
      this(lastPlayedDate: lastPlayedDate);

  @override
  UpdateUserItemDataDto played(bool? played) => this(played: played);

  @override
  UpdateUserItemDataDto key(String? key) => this(key: key);

  @override
  UpdateUserItemDataDto itemId(String? itemId) => this(itemId: itemId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateUserItemDataDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateUserItemDataDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateUserItemDataDto call({
    Object? rating = const $CopyWithPlaceholder(),
    Object? playedPercentage = const $CopyWithPlaceholder(),
    Object? unplayedItemCount = const $CopyWithPlaceholder(),
    Object? playbackPositionTicks = const $CopyWithPlaceholder(),
    Object? playCount = const $CopyWithPlaceholder(),
    Object? isFavorite = const $CopyWithPlaceholder(),
    Object? likes = const $CopyWithPlaceholder(),
    Object? lastPlayedDate = const $CopyWithPlaceholder(),
    Object? played = const $CopyWithPlaceholder(),
    Object? key = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
  }) {
    return UpdateUserItemDataDto(
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as double?,
      playedPercentage: playedPercentage == const $CopyWithPlaceholder()
          ? _value.playedPercentage
          // ignore: cast_nullable_to_non_nullable
          : playedPercentage as double?,
      unplayedItemCount: unplayedItemCount == const $CopyWithPlaceholder()
          ? _value.unplayedItemCount
          // ignore: cast_nullable_to_non_nullable
          : unplayedItemCount as int?,
      playbackPositionTicks:
          playbackPositionTicks == const $CopyWithPlaceholder()
          ? _value.playbackPositionTicks
          // ignore: cast_nullable_to_non_nullable
          : playbackPositionTicks as int?,
      playCount: playCount == const $CopyWithPlaceholder()
          ? _value.playCount
          // ignore: cast_nullable_to_non_nullable
          : playCount as int?,
      isFavorite: isFavorite == const $CopyWithPlaceholder()
          ? _value.isFavorite
          // ignore: cast_nullable_to_non_nullable
          : isFavorite as bool?,
      likes: likes == const $CopyWithPlaceholder()
          ? _value.likes
          // ignore: cast_nullable_to_non_nullable
          : likes as bool?,
      lastPlayedDate: lastPlayedDate == const $CopyWithPlaceholder()
          ? _value.lastPlayedDate
          // ignore: cast_nullable_to_non_nullable
          : lastPlayedDate as DateTime?,
      played: played == const $CopyWithPlaceholder()
          ? _value.played
          // ignore: cast_nullable_to_non_nullable
          : played as bool?,
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as String?,
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
    );
  }
}

extension $UpdateUserItemDataDtoCopyWith on UpdateUserItemDataDto {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateUserItemDataDto.copyWith(...)` or like so:`instanceOfUpdateUserItemDataDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateUserItemDataDtoCWProxy get copyWith =>
      _$UpdateUserItemDataDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserItemDataDto _$UpdateUserItemDataDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UpdateUserItemDataDto',
  json,
  ($checkedConvert) {
    final val = UpdateUserItemDataDto(
      rating: $checkedConvert('Rating', (v) => (v as num?)?.toDouble()),
      playedPercentage: $checkedConvert(
        'PlayedPercentage',
        (v) => (v as num?)?.toDouble(),
      ),
      unplayedItemCount: $checkedConvert(
        'UnplayedItemCount',
        (v) => (v as num?)?.toInt(),
      ),
      playbackPositionTicks: $checkedConvert(
        'PlaybackPositionTicks',
        (v) => (v as num?)?.toInt(),
      ),
      playCount: $checkedConvert('PlayCount', (v) => (v as num?)?.toInt()),
      isFavorite: $checkedConvert('IsFavorite', (v) => v as bool?),
      likes: $checkedConvert('Likes', (v) => v as bool?),
      lastPlayedDate: $checkedConvert(
        'LastPlayedDate',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      played: $checkedConvert('Played', (v) => v as bool?),
      key: $checkedConvert('Key', (v) => v as String?),
      itemId: $checkedConvert('ItemId', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'rating': 'Rating',
    'playedPercentage': 'PlayedPercentage',
    'unplayedItemCount': 'UnplayedItemCount',
    'playbackPositionTicks': 'PlaybackPositionTicks',
    'playCount': 'PlayCount',
    'isFavorite': 'IsFavorite',
    'likes': 'Likes',
    'lastPlayedDate': 'LastPlayedDate',
    'played': 'Played',
    'key': 'Key',
    'itemId': 'ItemId',
  },
);

Map<String, dynamic> _$UpdateUserItemDataDtoToJson(
  UpdateUserItemDataDto instance,
) => <String, dynamic>{
  'Rating': ?instance.rating,
  'PlayedPercentage': ?instance.playedPercentage,
  'UnplayedItemCount': ?instance.unplayedItemCount,
  'PlaybackPositionTicks': ?instance.playbackPositionTicks,
  'PlayCount': ?instance.playCount,
  'IsFavorite': ?instance.isFavorite,
  'Likes': ?instance.likes,
  'LastPlayedDate': ?instance.lastPlayedDate?.toIso8601String(),
  'Played': ?instance.played,
  'Key': ?instance.key,
  'ItemId': ?instance.itemId,
};
