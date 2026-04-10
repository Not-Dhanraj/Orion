// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueueRequestDtoCWProxy {
  QueueRequestDto itemIds(List<String>? itemIds);

  QueueRequestDto mode(GroupQueueMode? mode);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueRequestDto call({List<String>? itemIds, GroupQueueMode? mode});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQueueRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQueueRequestDto.copyWith.fieldName(...)`
class _$QueueRequestDtoCWProxyImpl implements _$QueueRequestDtoCWProxy {
  const _$QueueRequestDtoCWProxyImpl(this._value);

  final QueueRequestDto _value;

  @override
  QueueRequestDto itemIds(List<String>? itemIds) => this(itemIds: itemIds);

  @override
  QueueRequestDto mode(GroupQueueMode? mode) => this(mode: mode);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QueueRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QueueRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  QueueRequestDto call({
    Object? itemIds = const $CopyWithPlaceholder(),
    Object? mode = const $CopyWithPlaceholder(),
  }) {
    return QueueRequestDto(
      itemIds: itemIds == const $CopyWithPlaceholder()
          ? _value.itemIds
          // ignore: cast_nullable_to_non_nullable
          : itemIds as List<String>?,
      mode: mode == const $CopyWithPlaceholder()
          ? _value.mode
          // ignore: cast_nullable_to_non_nullable
          : mode as GroupQueueMode?,
    );
  }
}

extension $QueueRequestDtoCopyWith on QueueRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfQueueRequestDto.copyWith(...)` or like so:`instanceOfQueueRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueueRequestDtoCWProxy get copyWith => _$QueueRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueueRequestDto _$QueueRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('QueueRequestDto', json, ($checkedConvert) {
      final val = QueueRequestDto(
        itemIds: $checkedConvert(
          'ItemIds',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        mode: $checkedConvert(
          'Mode',
          (v) => $enumDecodeNullable(_$GroupQueueModeEnumMap, v),
        ),
      );
      return val;
    }, fieldKeyMap: const {'itemIds': 'ItemIds', 'mode': 'Mode'});

Map<String, dynamic> _$QueueRequestDtoToJson(QueueRequestDto instance) =>
    <String, dynamic>{
      'ItemIds': ?instance.itemIds,
      'Mode': ?_$GroupQueueModeEnumMap[instance.mode],
    };

const _$GroupQueueModeEnumMap = {
  GroupQueueMode.queue: 'Queue',
  GroupQueueMode.queueNext: 'QueueNext',
};
