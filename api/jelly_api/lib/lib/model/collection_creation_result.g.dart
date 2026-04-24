// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_creation_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CollectionCreationResultCWProxy {
  CollectionCreationResult id(String? id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CollectionCreationResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CollectionCreationResult(...).copyWith(id: 12, name: "My name")
  /// ````
  CollectionCreationResult call({String? id});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCollectionCreationResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCollectionCreationResult.copyWith.fieldName(...)`
class _$CollectionCreationResultCWProxyImpl
    implements _$CollectionCreationResultCWProxy {
  const _$CollectionCreationResultCWProxyImpl(this._value);

  final CollectionCreationResult _value;

  @override
  CollectionCreationResult id(String? id) => this(id: id);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CollectionCreationResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CollectionCreationResult(...).copyWith(id: 12, name: "My name")
  /// ````
  CollectionCreationResult call({Object? id = const $CopyWithPlaceholder()}) {
    return CollectionCreationResult(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
    );
  }
}

extension $CollectionCreationResultCopyWith on CollectionCreationResult {
  /// Returns a callable class that can be used as follows: `instanceOfCollectionCreationResult.copyWith(...)` or like so:`instanceOfCollectionCreationResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CollectionCreationResultCWProxy get copyWith =>
      _$CollectionCreationResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionCreationResult _$CollectionCreationResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CollectionCreationResult', json, ($checkedConvert) {
  final val = CollectionCreationResult(
    id: $checkedConvert('Id', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'id': 'Id'});

Map<String, dynamic> _$CollectionCreationResultToJson(
  CollectionCreationResult instance,
) => <String, dynamic>{'Id': ?instance.id};
