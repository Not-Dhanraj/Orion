// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_rejection_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImportRejectionResourceCWProxy {
  ImportRejectionResource reason(String? reason);

  ImportRejectionResource type(RejectionType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportRejectionResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportRejectionResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportRejectionResource call({String? reason, RejectionType? type});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfImportRejectionResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfImportRejectionResource.copyWith.fieldName(...)`
class _$ImportRejectionResourceCWProxyImpl
    implements _$ImportRejectionResourceCWProxy {
  const _$ImportRejectionResourceCWProxyImpl(this._value);

  final ImportRejectionResource _value;

  @override
  ImportRejectionResource reason(String? reason) => this(reason: reason);

  @override
  ImportRejectionResource type(RejectionType? type) => this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportRejectionResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportRejectionResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportRejectionResource call({
    Object? reason = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return ImportRejectionResource(
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as RejectionType?,
    );
  }
}

extension $ImportRejectionResourceCopyWith on ImportRejectionResource {
  /// Returns a callable class that can be used as follows: `instanceOfImportRejectionResource.copyWith(...)` or like so:`instanceOfImportRejectionResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImportRejectionResourceCWProxy get copyWith =>
      _$ImportRejectionResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportRejectionResource _$ImportRejectionResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ImportRejectionResource', json, ($checkedConvert) {
  final val = ImportRejectionResource(
    reason: $checkedConvert('reason', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$RejectionTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$ImportRejectionResourceToJson(
  ImportRejectionResource instance,
) => <String, dynamic>{
  'reason': ?instance.reason,
  'type': ?_$RejectionTypeEnumMap[instance.type],
};

const _$RejectionTypeEnumMap = {
  RejectionType.permanent: 'permanent',
  RejectionType.temporary: 'temporary',
};
