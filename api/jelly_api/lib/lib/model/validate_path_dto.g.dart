// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_path_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ValidatePathDtoCWProxy {
  ValidatePathDto validateWritable(bool? validateWritable);

  ValidatePathDto path(String? path);

  ValidatePathDto isFile(bool? isFile);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ValidatePathDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ValidatePathDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ValidatePathDto call({bool? validateWritable, String? path, bool? isFile});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfValidatePathDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfValidatePathDto.copyWith.fieldName(...)`
class _$ValidatePathDtoCWProxyImpl implements _$ValidatePathDtoCWProxy {
  const _$ValidatePathDtoCWProxyImpl(this._value);

  final ValidatePathDto _value;

  @override
  ValidatePathDto validateWritable(bool? validateWritable) =>
      this(validateWritable: validateWritable);

  @override
  ValidatePathDto path(String? path) => this(path: path);

  @override
  ValidatePathDto isFile(bool? isFile) => this(isFile: isFile);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ValidatePathDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ValidatePathDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ValidatePathDto call({
    Object? validateWritable = const $CopyWithPlaceholder(),
    Object? path = const $CopyWithPlaceholder(),
    Object? isFile = const $CopyWithPlaceholder(),
  }) {
    return ValidatePathDto(
      validateWritable: validateWritable == const $CopyWithPlaceholder()
          ? _value.validateWritable
          // ignore: cast_nullable_to_non_nullable
          : validateWritable as bool?,
      path: path == const $CopyWithPlaceholder()
          ? _value.path
          // ignore: cast_nullable_to_non_nullable
          : path as String?,
      isFile: isFile == const $CopyWithPlaceholder()
          ? _value.isFile
          // ignore: cast_nullable_to_non_nullable
          : isFile as bool?,
    );
  }
}

extension $ValidatePathDtoCopyWith on ValidatePathDto {
  /// Returns a callable class that can be used as follows: `instanceOfValidatePathDto.copyWith(...)` or like so:`instanceOfValidatePathDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ValidatePathDtoCWProxy get copyWith => _$ValidatePathDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidatePathDto _$ValidatePathDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ValidatePathDto',
      json,
      ($checkedConvert) {
        final val = ValidatePathDto(
          validateWritable: $checkedConvert(
            'ValidateWritable',
            (v) => v as bool?,
          ),
          path: $checkedConvert('Path', (v) => v as String?),
          isFile: $checkedConvert('IsFile', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'validateWritable': 'ValidateWritable',
        'path': 'Path',
        'isFile': 'IsFile',
      },
    );

Map<String, dynamic> _$ValidatePathDtoToJson(ValidatePathDto instance) =>
    <String, dynamic>{
      'ValidateWritable': ?instance.validateWritable,
      'Path': ?instance.path,
      'IsFile': ?instance.isFile,
    };
