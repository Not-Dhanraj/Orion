// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_change_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserDataChangeInfoCWProxy {
  UserDataChangeInfo userId(String? userId);

  UserDataChangeInfo userDataList(List<UserItemDataDto>? userDataList);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserDataChangeInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserDataChangeInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  UserDataChangeInfo call({
    String? userId,
    List<UserItemDataDto>? userDataList,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserDataChangeInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserDataChangeInfo.copyWith.fieldName(...)`
class _$UserDataChangeInfoCWProxyImpl implements _$UserDataChangeInfoCWProxy {
  const _$UserDataChangeInfoCWProxyImpl(this._value);

  final UserDataChangeInfo _value;

  @override
  UserDataChangeInfo userId(String? userId) => this(userId: userId);

  @override
  UserDataChangeInfo userDataList(List<UserItemDataDto>? userDataList) =>
      this(userDataList: userDataList);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserDataChangeInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserDataChangeInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  UserDataChangeInfo call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? userDataList = const $CopyWithPlaceholder(),
  }) {
    return UserDataChangeInfo(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      userDataList: userDataList == const $CopyWithPlaceholder()
          ? _value.userDataList
          // ignore: cast_nullable_to_non_nullable
          : userDataList as List<UserItemDataDto>?,
    );
  }
}

extension $UserDataChangeInfoCopyWith on UserDataChangeInfo {
  /// Returns a callable class that can be used as follows: `instanceOfUserDataChangeInfo.copyWith(...)` or like so:`instanceOfUserDataChangeInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserDataChangeInfoCWProxy get copyWith =>
      _$UserDataChangeInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataChangeInfo _$UserDataChangeInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserDataChangeInfo',
      json,
      ($checkedConvert) {
        final val = UserDataChangeInfo(
          userId: $checkedConvert('UserId', (v) => v as String?),
          userDataList: $checkedConvert(
            'UserDataList',
            (v) => (v as List<dynamic>?)
                ?.map(
                  (e) => UserItemDataDto.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'userId': 'UserId', 'userDataList': 'UserDataList'},
    );

Map<String, dynamic> _$UserDataChangeInfoToJson(UserDataChangeInfo instance) =>
    <String, dynamic>{
      'UserId': ?instance.userId,
      'UserDataList': ?instance.userDataList?.map((e) => e.toJson()).toList(),
    };
