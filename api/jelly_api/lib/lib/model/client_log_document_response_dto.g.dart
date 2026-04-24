// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_log_document_response_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientLogDocumentResponseDtoCWProxy {
  ClientLogDocumentResponseDto fileName(String? fileName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientLogDocumentResponseDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientLogDocumentResponseDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientLogDocumentResponseDto call({String? fileName});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientLogDocumentResponseDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientLogDocumentResponseDto.copyWith.fieldName(...)`
class _$ClientLogDocumentResponseDtoCWProxyImpl
    implements _$ClientLogDocumentResponseDtoCWProxy {
  const _$ClientLogDocumentResponseDtoCWProxyImpl(this._value);

  final ClientLogDocumentResponseDto _value;

  @override
  ClientLogDocumentResponseDto fileName(String? fileName) =>
      this(fileName: fileName);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientLogDocumentResponseDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientLogDocumentResponseDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientLogDocumentResponseDto call({
    Object? fileName = const $CopyWithPlaceholder(),
  }) {
    return ClientLogDocumentResponseDto(
      fileName: fileName == const $CopyWithPlaceholder()
          ? _value.fileName
          // ignore: cast_nullable_to_non_nullable
          : fileName as String?,
    );
  }
}

extension $ClientLogDocumentResponseDtoCopyWith
    on ClientLogDocumentResponseDto {
  /// Returns a callable class that can be used as follows: `instanceOfClientLogDocumentResponseDto.copyWith(...)` or like so:`instanceOfClientLogDocumentResponseDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientLogDocumentResponseDtoCWProxy get copyWith =>
      _$ClientLogDocumentResponseDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientLogDocumentResponseDto _$ClientLogDocumentResponseDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ClientLogDocumentResponseDto', json, ($checkedConvert) {
  final val = ClientLogDocumentResponseDto(
    fileName: $checkedConvert('FileName', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'fileName': 'FileName'});

Map<String, dynamic> _$ClientLogDocumentResponseDtoToJson(
  ClientLogDocumentResponseDto instance,
) => <String, dynamic>{'FileName': ?instance.fileName};
