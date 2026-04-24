// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_receiver_application.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CastReceiverApplicationCWProxy {
  CastReceiverApplication id(String? id);

  CastReceiverApplication name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CastReceiverApplication(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CastReceiverApplication(...).copyWith(id: 12, name: "My name")
  /// ````
  CastReceiverApplication call({String? id, String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCastReceiverApplication.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCastReceiverApplication.copyWith.fieldName(...)`
class _$CastReceiverApplicationCWProxyImpl
    implements _$CastReceiverApplicationCWProxy {
  const _$CastReceiverApplicationCWProxyImpl(this._value);

  final CastReceiverApplication _value;

  @override
  CastReceiverApplication id(String? id) => this(id: id);

  @override
  CastReceiverApplication name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CastReceiverApplication(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CastReceiverApplication(...).copyWith(id: 12, name: "My name")
  /// ````
  CastReceiverApplication call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return CastReceiverApplication(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $CastReceiverApplicationCopyWith on CastReceiverApplication {
  /// Returns a callable class that can be used as follows: `instanceOfCastReceiverApplication.copyWith(...)` or like so:`instanceOfCastReceiverApplication.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CastReceiverApplicationCWProxy get copyWith =>
      _$CastReceiverApplicationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CastReceiverApplication _$CastReceiverApplicationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CastReceiverApplication', json, ($checkedConvert) {
  final val = CastReceiverApplication(
    id: $checkedConvert('Id', (v) => v as String?),
    name: $checkedConvert('Name', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'id': 'Id', 'name': 'Name'});

Map<String, dynamic> _$CastReceiverApplicationToJson(
  CastReceiverApplication instance,
) => <String, dynamic>{'Id': ?instance.id, 'Name': ?instance.name};
