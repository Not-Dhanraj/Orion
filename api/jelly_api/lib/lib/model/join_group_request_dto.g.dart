// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_group_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$JoinGroupRequestDtoCWProxy {
  JoinGroupRequestDto groupId(String? groupId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JoinGroupRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JoinGroupRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  JoinGroupRequestDto call({String? groupId});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfJoinGroupRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfJoinGroupRequestDto.copyWith.fieldName(...)`
class _$JoinGroupRequestDtoCWProxyImpl implements _$JoinGroupRequestDtoCWProxy {
  const _$JoinGroupRequestDtoCWProxyImpl(this._value);

  final JoinGroupRequestDto _value;

  @override
  JoinGroupRequestDto groupId(String? groupId) => this(groupId: groupId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JoinGroupRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JoinGroupRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  JoinGroupRequestDto call({Object? groupId = const $CopyWithPlaceholder()}) {
    return JoinGroupRequestDto(
      groupId: groupId == const $CopyWithPlaceholder()
          ? _value.groupId
          // ignore: cast_nullable_to_non_nullable
          : groupId as String?,
    );
  }
}

extension $JoinGroupRequestDtoCopyWith on JoinGroupRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfJoinGroupRequestDto.copyWith(...)` or like so:`instanceOfJoinGroupRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$JoinGroupRequestDtoCWProxy get copyWith =>
      _$JoinGroupRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JoinGroupRequestDto _$JoinGroupRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('JoinGroupRequestDto', json, ($checkedConvert) {
      final val = JoinGroupRequestDto(
        groupId: $checkedConvert('GroupId', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'groupId': 'GroupId'});

Map<String, dynamic> _$JoinGroupRequestDtoToJson(
  JoinGroupRequestDto instance,
) => <String, dynamic>{'GroupId': ?instance.groupId};
