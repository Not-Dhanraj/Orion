// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_item_data_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserItemDataDtoCWProxy {
  UserItemDataDto rating(double? rating);

  UserItemDataDto playedPercentage(double? playedPercentage);

  UserItemDataDto unplayedItemCount(int? unplayedItemCount);

  UserItemDataDto playbackPositionTicks(int? playbackPositionTicks);

  UserItemDataDto playCount(int? playCount);

  UserItemDataDto isFavorite(bool? isFavorite);

  UserItemDataDto likes(bool? likes);

  UserItemDataDto lastPlayedDate(DateTime? lastPlayedDate);

  UserItemDataDto played(bool? played);

  UserItemDataDto key(String? key);

  UserItemDataDto itemId(String? itemId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserItemDataDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserItemDataDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UserItemDataDto call({
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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserItemDataDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserItemDataDto.copyWith.fieldName(...)`
class _$UserItemDataDtoCWProxyImpl implements _$UserItemDataDtoCWProxy {
  const _$UserItemDataDtoCWProxyImpl(this._value);

  final UserItemDataDto _value;

  @override
  UserItemDataDto rating(double? rating) => this(rating: rating);

  @override
  UserItemDataDto playedPercentage(double? playedPercentage) =>
      this(playedPercentage: playedPercentage);

  @override
  UserItemDataDto unplayedItemCount(int? unplayedItemCount) =>
      this(unplayedItemCount: unplayedItemCount);

  @override
  UserItemDataDto playbackPositionTicks(int? playbackPositionTicks) =>
      this(playbackPositionTicks: playbackPositionTicks);

  @override
  UserItemDataDto playCount(int? playCount) => this(playCount: playCount);

  @override
  UserItemDataDto isFavorite(bool? isFavorite) => this(isFavorite: isFavorite);

  @override
  UserItemDataDto likes(bool? likes) => this(likes: likes);

  @override
  UserItemDataDto lastPlayedDate(DateTime? lastPlayedDate) =>
      this(lastPlayedDate: lastPlayedDate);

  @override
  UserItemDataDto played(bool? played) => this(played: played);

  @override
  UserItemDataDto key(String? key) => this(key: key);

  @override
  UserItemDataDto itemId(String? itemId) => this(itemId: itemId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserItemDataDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserItemDataDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UserItemDataDto call({
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
    return UserItemDataDto(
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

extension $UserItemDataDtoCopyWith on UserItemDataDto {
  /// Returns a callable class that can be used as follows: `instanceOfUserItemDataDto.copyWith(...)` or like so:`instanceOfUserItemDataDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserItemDataDtoCWProxy get copyWith => _$UserItemDataDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserItemDataDto _$UserItemDataDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserItemDataDto',
      json,
      ($checkedConvert) {
        final val = UserItemDataDto(
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

Map<String, dynamic> _$UserItemDataDtoToJson(UserItemDataDto instance) =>
    <String, dynamic>{
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
