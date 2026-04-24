// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_event_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TimerEventInfoCWProxy {
  TimerEventInfo id(String? id);

  TimerEventInfo programId(String? programId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TimerEventInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TimerEventInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  TimerEventInfo call({String? id, String? programId});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTimerEventInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTimerEventInfo.copyWith.fieldName(...)`
class _$TimerEventInfoCWProxyImpl implements _$TimerEventInfoCWProxy {
  const _$TimerEventInfoCWProxyImpl(this._value);

  final TimerEventInfo _value;

  @override
  TimerEventInfo id(String? id) => this(id: id);

  @override
  TimerEventInfo programId(String? programId) => this(programId: programId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TimerEventInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TimerEventInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  TimerEventInfo call({
    Object? id = const $CopyWithPlaceholder(),
    Object? programId = const $CopyWithPlaceholder(),
  }) {
    return TimerEventInfo(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      programId: programId == const $CopyWithPlaceholder()
          ? _value.programId
          // ignore: cast_nullable_to_non_nullable
          : programId as String?,
    );
  }
}

extension $TimerEventInfoCopyWith on TimerEventInfo {
  /// Returns a callable class that can be used as follows: `instanceOfTimerEventInfo.copyWith(...)` or like so:`instanceOfTimerEventInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TimerEventInfoCWProxy get copyWith => _$TimerEventInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimerEventInfo _$TimerEventInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TimerEventInfo', json, ($checkedConvert) {
      final val = TimerEventInfo(
        id: $checkedConvert('Id', (v) => v as String?),
        programId: $checkedConvert('ProgramId', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'id': 'Id', 'programId': 'ProgramId'});

Map<String, dynamic> _$TimerEventInfoToJson(TimerEventInfo instance) =>
    <String, dynamic>{'Id': ?instance.id, 'ProgramId': ?instance.programId};
