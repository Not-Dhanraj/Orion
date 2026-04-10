// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_view_option_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SpecialViewOptionDtoCWProxy {
  SpecialViewOptionDto name(String? name);

  SpecialViewOptionDto id(String? id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SpecialViewOptionDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SpecialViewOptionDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SpecialViewOptionDto call({String? name, String? id});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSpecialViewOptionDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSpecialViewOptionDto.copyWith.fieldName(...)`
class _$SpecialViewOptionDtoCWProxyImpl
    implements _$SpecialViewOptionDtoCWProxy {
  const _$SpecialViewOptionDtoCWProxyImpl(this._value);

  final SpecialViewOptionDto _value;

  @override
  SpecialViewOptionDto name(String? name) => this(name: name);

  @override
  SpecialViewOptionDto id(String? id) => this(id: id);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SpecialViewOptionDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SpecialViewOptionDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SpecialViewOptionDto call({
    Object? name = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return SpecialViewOptionDto(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
    );
  }
}

extension $SpecialViewOptionDtoCopyWith on SpecialViewOptionDto {
  /// Returns a callable class that can be used as follows: `instanceOfSpecialViewOptionDto.copyWith(...)` or like so:`instanceOfSpecialViewOptionDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SpecialViewOptionDtoCWProxy get copyWith =>
      _$SpecialViewOptionDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialViewOptionDto _$SpecialViewOptionDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SpecialViewOptionDto', json, ($checkedConvert) {
  final val = SpecialViewOptionDto(
    name: $checkedConvert('Name', (v) => v as String?),
    id: $checkedConvert('Id', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'name': 'Name', 'id': 'Id'});

Map<String, dynamic> _$SpecialViewOptionDtoToJson(
  SpecialViewOptionDto instance,
) => <String, dynamic>{'Name': ?instance.name, 'Id': ?instance.id};
