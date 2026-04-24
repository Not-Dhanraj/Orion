// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_log_entry.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ActivityLogEntryCWProxy {
  ActivityLogEntry id(int? id);

  ActivityLogEntry name(String? name);

  ActivityLogEntry overview(String? overview);

  ActivityLogEntry shortOverview(String? shortOverview);

  ActivityLogEntry type(String? type);

  ActivityLogEntry itemId(String? itemId);

  ActivityLogEntry date(DateTime? date);

  ActivityLogEntry userId(String? userId);

  ActivityLogEntry userPrimaryImageTag(String? userPrimaryImageTag);

  ActivityLogEntry severity(LogLevel? severity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ActivityLogEntry(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ActivityLogEntry(...).copyWith(id: 12, name: "My name")
  /// ````
  ActivityLogEntry call({
    int? id,
    String? name,
    String? overview,
    String? shortOverview,
    String? type,
    String? itemId,
    DateTime? date,
    String? userId,
    String? userPrimaryImageTag,
    LogLevel? severity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfActivityLogEntry.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfActivityLogEntry.copyWith.fieldName(...)`
class _$ActivityLogEntryCWProxyImpl implements _$ActivityLogEntryCWProxy {
  const _$ActivityLogEntryCWProxyImpl(this._value);

  final ActivityLogEntry _value;

  @override
  ActivityLogEntry id(int? id) => this(id: id);

  @override
  ActivityLogEntry name(String? name) => this(name: name);

  @override
  ActivityLogEntry overview(String? overview) => this(overview: overview);

  @override
  ActivityLogEntry shortOverview(String? shortOverview) =>
      this(shortOverview: shortOverview);

  @override
  ActivityLogEntry type(String? type) => this(type: type);

  @override
  ActivityLogEntry itemId(String? itemId) => this(itemId: itemId);

  @override
  ActivityLogEntry date(DateTime? date) => this(date: date);

  @override
  ActivityLogEntry userId(String? userId) => this(userId: userId);

  @override
  ActivityLogEntry userPrimaryImageTag(String? userPrimaryImageTag) =>
      this(userPrimaryImageTag: userPrimaryImageTag);

  @override
  ActivityLogEntry severity(LogLevel? severity) => this(severity: severity);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ActivityLogEntry(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ActivityLogEntry(...).copyWith(id: 12, name: "My name")
  /// ````
  ActivityLogEntry call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? overview = const $CopyWithPlaceholder(),
    Object? shortOverview = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? date = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? userPrimaryImageTag = const $CopyWithPlaceholder(),
    Object? severity = const $CopyWithPlaceholder(),
  }) {
    return ActivityLogEntry(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      overview: overview == const $CopyWithPlaceholder()
          ? _value.overview
          // ignore: cast_nullable_to_non_nullable
          : overview as String?,
      shortOverview: shortOverview == const $CopyWithPlaceholder()
          ? _value.shortOverview
          // ignore: cast_nullable_to_non_nullable
          : shortOverview as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String?,
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      userPrimaryImageTag: userPrimaryImageTag == const $CopyWithPlaceholder()
          ? _value.userPrimaryImageTag
          // ignore: cast_nullable_to_non_nullable
          : userPrimaryImageTag as String?,
      severity: severity == const $CopyWithPlaceholder()
          ? _value.severity
          // ignore: cast_nullable_to_non_nullable
          : severity as LogLevel?,
    );
  }
}

extension $ActivityLogEntryCopyWith on ActivityLogEntry {
  /// Returns a callable class that can be used as follows: `instanceOfActivityLogEntry.copyWith(...)` or like so:`instanceOfActivityLogEntry.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ActivityLogEntryCWProxy get copyWith => _$ActivityLogEntryCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityLogEntry _$ActivityLogEntryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ActivityLogEntry',
      json,
      ($checkedConvert) {
        final val = ActivityLogEntry(
          id: $checkedConvert('Id', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('Name', (v) => v as String?),
          overview: $checkedConvert('Overview', (v) => v as String?),
          shortOverview: $checkedConvert('ShortOverview', (v) => v as String?),
          type: $checkedConvert('Type', (v) => v as String?),
          itemId: $checkedConvert('ItemId', (v) => v as String?),
          date: $checkedConvert(
            'Date',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          userId: $checkedConvert('UserId', (v) => v as String?),
          userPrimaryImageTag: $checkedConvert(
            'UserPrimaryImageTag',
            (v) => v as String?,
          ),
          severity: $checkedConvert(
            'Severity',
            (v) => $enumDecodeNullable(_$LogLevelEnumMap, v),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'name': 'Name',
        'overview': 'Overview',
        'shortOverview': 'ShortOverview',
        'type': 'Type',
        'itemId': 'ItemId',
        'date': 'Date',
        'userId': 'UserId',
        'userPrimaryImageTag': 'UserPrimaryImageTag',
        'severity': 'Severity',
      },
    );

Map<String, dynamic> _$ActivityLogEntryToJson(ActivityLogEntry instance) =>
    <String, dynamic>{
      'Id': ?instance.id,
      'Name': ?instance.name,
      'Overview': ?instance.overview,
      'ShortOverview': ?instance.shortOverview,
      'Type': ?instance.type,
      'ItemId': ?instance.itemId,
      'Date': ?instance.date?.toIso8601String(),
      'UserId': ?instance.userId,
      'UserPrimaryImageTag': ?instance.userPrimaryImageTag,
      'Severity': ?_$LogLevelEnumMap[instance.severity],
    };

const _$LogLevelEnumMap = {
  LogLevel.trace: 'Trace',
  LogLevel.debug: 'Debug',
  LogLevel.information: 'Information',
  LogLevel.warning: 'Warning',
  LogLevel.error: 'Error',
  LogLevel.critical: 'Critical',
  LogLevel.none: 'None',
};
