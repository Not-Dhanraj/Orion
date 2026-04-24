// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_group_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NewGroupRequestDtoCWProxy {
  NewGroupRequestDto groupName(String? groupName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NewGroupRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NewGroupRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  NewGroupRequestDto call({String? groupName});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNewGroupRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNewGroupRequestDto.copyWith.fieldName(...)`
class _$NewGroupRequestDtoCWProxyImpl implements _$NewGroupRequestDtoCWProxy {
  const _$NewGroupRequestDtoCWProxyImpl(this._value);

  final NewGroupRequestDto _value;

  @override
  NewGroupRequestDto groupName(String? groupName) => this(groupName: groupName);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NewGroupRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NewGroupRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  NewGroupRequestDto call({Object? groupName = const $CopyWithPlaceholder()}) {
    return NewGroupRequestDto(
      groupName: groupName == const $CopyWithPlaceholder()
          ? _value.groupName
          // ignore: cast_nullable_to_non_nullable
          : groupName as String?,
    );
  }
}

extension $NewGroupRequestDtoCopyWith on NewGroupRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfNewGroupRequestDto.copyWith(...)` or like so:`instanceOfNewGroupRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NewGroupRequestDtoCWProxy get copyWith =>
      _$NewGroupRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewGroupRequestDto _$NewGroupRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('NewGroupRequestDto', json, ($checkedConvert) {
      final val = NewGroupRequestDto(
        groupName: $checkedConvert('GroupName', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'groupName': 'GroupName'});

Map<String, dynamic> _$NewGroupRequestDtoToJson(NewGroupRequestDto instance) =>
    <String, dynamic>{'GroupName': ?instance.groupName};
