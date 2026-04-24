// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_library_options_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateLibraryOptionsDtoCWProxy {
  UpdateLibraryOptionsDto id(String? id);

  UpdateLibraryOptionsDto libraryOptions(LibraryOptions? libraryOptions);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateLibraryOptionsDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateLibraryOptionsDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateLibraryOptionsDto call({String? id, LibraryOptions? libraryOptions});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateLibraryOptionsDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateLibraryOptionsDto.copyWith.fieldName(...)`
class _$UpdateLibraryOptionsDtoCWProxyImpl
    implements _$UpdateLibraryOptionsDtoCWProxy {
  const _$UpdateLibraryOptionsDtoCWProxyImpl(this._value);

  final UpdateLibraryOptionsDto _value;

  @override
  UpdateLibraryOptionsDto id(String? id) => this(id: id);

  @override
  UpdateLibraryOptionsDto libraryOptions(LibraryOptions? libraryOptions) =>
      this(libraryOptions: libraryOptions);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateLibraryOptionsDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateLibraryOptionsDto(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateLibraryOptionsDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? libraryOptions = const $CopyWithPlaceholder(),
  }) {
    return UpdateLibraryOptionsDto(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      libraryOptions: libraryOptions == const $CopyWithPlaceholder()
          ? _value.libraryOptions
          // ignore: cast_nullable_to_non_nullable
          : libraryOptions as LibraryOptions?,
    );
  }
}

extension $UpdateLibraryOptionsDtoCopyWith on UpdateLibraryOptionsDto {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateLibraryOptionsDto.copyWith(...)` or like so:`instanceOfUpdateLibraryOptionsDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateLibraryOptionsDtoCWProxy get copyWith =>
      _$UpdateLibraryOptionsDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateLibraryOptionsDto _$UpdateLibraryOptionsDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UpdateLibraryOptionsDto',
  json,
  ($checkedConvert) {
    final val = UpdateLibraryOptionsDto(
      id: $checkedConvert('Id', (v) => v as String?),
      libraryOptions: $checkedConvert(
        'LibraryOptions',
        (v) => v == null
            ? null
            : LibraryOptions.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'id': 'Id', 'libraryOptions': 'LibraryOptions'},
);

Map<String, dynamic> _$UpdateLibraryOptionsDtoToJson(
  UpdateLibraryOptionsDto instance,
) => <String, dynamic>{
  'Id': ?instance.id,
  'LibraryOptions': ?instance.libraryOptions?.toJson(),
};
