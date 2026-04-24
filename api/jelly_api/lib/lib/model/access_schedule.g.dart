// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_schedule.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AccessScheduleCWProxy {
  AccessSchedule id(int? id);

  AccessSchedule userId(String? userId);

  AccessSchedule dayOfWeek(DynamicDayOfWeek? dayOfWeek);

  AccessSchedule startHour(double? startHour);

  AccessSchedule endHour(double? endHour);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AccessSchedule(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AccessSchedule(...).copyWith(id: 12, name: "My name")
  /// ````
  AccessSchedule call({
    int? id,
    String? userId,
    DynamicDayOfWeek? dayOfWeek,
    double? startHour,
    double? endHour,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAccessSchedule.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAccessSchedule.copyWith.fieldName(...)`
class _$AccessScheduleCWProxyImpl implements _$AccessScheduleCWProxy {
  const _$AccessScheduleCWProxyImpl(this._value);

  final AccessSchedule _value;

  @override
  AccessSchedule id(int? id) => this(id: id);

  @override
  AccessSchedule userId(String? userId) => this(userId: userId);

  @override
  AccessSchedule dayOfWeek(DynamicDayOfWeek? dayOfWeek) =>
      this(dayOfWeek: dayOfWeek);

  @override
  AccessSchedule startHour(double? startHour) => this(startHour: startHour);

  @override
  AccessSchedule endHour(double? endHour) => this(endHour: endHour);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AccessSchedule(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AccessSchedule(...).copyWith(id: 12, name: "My name")
  /// ````
  AccessSchedule call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? dayOfWeek = const $CopyWithPlaceholder(),
    Object? startHour = const $CopyWithPlaceholder(),
    Object? endHour = const $CopyWithPlaceholder(),
  }) {
    return AccessSchedule(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      dayOfWeek: dayOfWeek == const $CopyWithPlaceholder()
          ? _value.dayOfWeek
          // ignore: cast_nullable_to_non_nullable
          : dayOfWeek as DynamicDayOfWeek?,
      startHour: startHour == const $CopyWithPlaceholder()
          ? _value.startHour
          // ignore: cast_nullable_to_non_nullable
          : startHour as double?,
      endHour: endHour == const $CopyWithPlaceholder()
          ? _value.endHour
          // ignore: cast_nullable_to_non_nullable
          : endHour as double?,
    );
  }
}

extension $AccessScheduleCopyWith on AccessSchedule {
  /// Returns a callable class that can be used as follows: `instanceOfAccessSchedule.copyWith(...)` or like so:`instanceOfAccessSchedule.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AccessScheduleCWProxy get copyWith => _$AccessScheduleCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessSchedule _$AccessScheduleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AccessSchedule',
      json,
      ($checkedConvert) {
        final val = AccessSchedule(
          id: $checkedConvert('Id', (v) => (v as num?)?.toInt()),
          userId: $checkedConvert('UserId', (v) => v as String?),
          dayOfWeek: $checkedConvert(
            'DayOfWeek',
            (v) => $enumDecodeNullable(_$DynamicDayOfWeekEnumMap, v),
          ),
          startHour: $checkedConvert(
            'StartHour',
            (v) => (v as num?)?.toDouble(),
          ),
          endHour: $checkedConvert('EndHour', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'userId': 'UserId',
        'dayOfWeek': 'DayOfWeek',
        'startHour': 'StartHour',
        'endHour': 'EndHour',
      },
    );

Map<String, dynamic> _$AccessScheduleToJson(AccessSchedule instance) =>
    <String, dynamic>{
      'Id': ?instance.id,
      'UserId': ?instance.userId,
      'DayOfWeek': ?_$DynamicDayOfWeekEnumMap[instance.dayOfWeek],
      'StartHour': ?instance.startHour,
      'EndHour': ?instance.endHour,
    };

const _$DynamicDayOfWeekEnumMap = {
  DynamicDayOfWeek.sunday: 'Sunday',
  DynamicDayOfWeek.monday: 'Monday',
  DynamicDayOfWeek.tuesday: 'Tuesday',
  DynamicDayOfWeek.wednesday: 'Wednesday',
  DynamicDayOfWeek.thursday: 'Thursday',
  DynamicDayOfWeek.friday: 'Friday',
  DynamicDayOfWeek.saturday: 'Saturday',
  DynamicDayOfWeek.everyday: 'Everyday',
  DynamicDayOfWeek.weekday: 'Weekday',
  DynamicDayOfWeek.weekend: 'Weekend',
};
