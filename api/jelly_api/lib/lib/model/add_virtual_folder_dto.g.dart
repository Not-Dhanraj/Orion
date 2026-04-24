// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_virtual_folder_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddVirtualFolderDtoCWProxy {
  AddVirtualFolderDto libraryOptions(LibraryOptions? libraryOptions);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddVirtualFolderDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddVirtualFolderDto(...).copyWith(id: 12, name: "My name")
  /// ````
  AddVirtualFolderDto call({LibraryOptions? libraryOptions});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAddVirtualFolderDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAddVirtualFolderDto.copyWith.fieldName(...)`
class _$AddVirtualFolderDtoCWProxyImpl implements _$AddVirtualFolderDtoCWProxy {
  const _$AddVirtualFolderDtoCWProxyImpl(this._value);

  final AddVirtualFolderDto _value;

  @override
  AddVirtualFolderDto libraryOptions(LibraryOptions? libraryOptions) =>
      this(libraryOptions: libraryOptions);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddVirtualFolderDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddVirtualFolderDto(...).copyWith(id: 12, name: "My name")
  /// ````
  AddVirtualFolderDto call({
    Object? libraryOptions = const $CopyWithPlaceholder(),
  }) {
    return AddVirtualFolderDto(
      libraryOptions: libraryOptions == const $CopyWithPlaceholder()
          ? _value.libraryOptions
          // ignore: cast_nullable_to_non_nullable
          : libraryOptions as LibraryOptions?,
    );
  }
}

extension $AddVirtualFolderDtoCopyWith on AddVirtualFolderDto {
  /// Returns a callable class that can be used as follows: `instanceOfAddVirtualFolderDto.copyWith(...)` or like so:`instanceOfAddVirtualFolderDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddVirtualFolderDtoCWProxy get copyWith =>
      _$AddVirtualFolderDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddVirtualFolderDto _$AddVirtualFolderDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AddVirtualFolderDto',
      json,
      ($checkedConvert) {
        final val = AddVirtualFolderDto(
          libraryOptions: $checkedConvert(
            'LibraryOptions',
            (v) => v == null
                ? null
                : LibraryOptions.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'libraryOptions': 'LibraryOptions'},
    );

Map<String, dynamic> _$AddVirtualFolderDtoToJson(
  AddVirtualFolderDto instance,
) => <String, dynamic>{'LibraryOptions': ?instance.libraryOptions?.toJson()};
