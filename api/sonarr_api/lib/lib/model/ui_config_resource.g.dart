// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_config_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UiConfigResourceCWProxy {
  UiConfigResource id(int? id);

  UiConfigResource firstDayOfWeek(int? firstDayOfWeek);

  UiConfigResource calendarWeekColumnHeader(String? calendarWeekColumnHeader);

  UiConfigResource shortDateFormat(String? shortDateFormat);

  UiConfigResource longDateFormat(String? longDateFormat);

  UiConfigResource timeFormat(String? timeFormat);

  UiConfigResource showRelativeDates(bool? showRelativeDates);

  UiConfigResource enableColorImpairedMode(bool? enableColorImpairedMode);

  UiConfigResource theme(String? theme);

  UiConfigResource uiLanguage(int? uiLanguage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UiConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UiConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  UiConfigResource call({
    int? id,
    int? firstDayOfWeek,
    String? calendarWeekColumnHeader,
    String? shortDateFormat,
    String? longDateFormat,
    String? timeFormat,
    bool? showRelativeDates,
    bool? enableColorImpairedMode,
    String? theme,
    int? uiLanguage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUiConfigResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUiConfigResource.copyWith.fieldName(...)`
class _$UiConfigResourceCWProxyImpl implements _$UiConfigResourceCWProxy {
  const _$UiConfigResourceCWProxyImpl(this._value);

  final UiConfigResource _value;

  @override
  UiConfigResource id(int? id) => this(id: id);

  @override
  UiConfigResource firstDayOfWeek(int? firstDayOfWeek) =>
      this(firstDayOfWeek: firstDayOfWeek);

  @override
  UiConfigResource calendarWeekColumnHeader(String? calendarWeekColumnHeader) =>
      this(calendarWeekColumnHeader: calendarWeekColumnHeader);

  @override
  UiConfigResource shortDateFormat(String? shortDateFormat) =>
      this(shortDateFormat: shortDateFormat);

  @override
  UiConfigResource longDateFormat(String? longDateFormat) =>
      this(longDateFormat: longDateFormat);

  @override
  UiConfigResource timeFormat(String? timeFormat) =>
      this(timeFormat: timeFormat);

  @override
  UiConfigResource showRelativeDates(bool? showRelativeDates) =>
      this(showRelativeDates: showRelativeDates);

  @override
  UiConfigResource enableColorImpairedMode(bool? enableColorImpairedMode) =>
      this(enableColorImpairedMode: enableColorImpairedMode);

  @override
  UiConfigResource theme(String? theme) => this(theme: theme);

  @override
  UiConfigResource uiLanguage(int? uiLanguage) => this(uiLanguage: uiLanguage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UiConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UiConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  UiConfigResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? firstDayOfWeek = const $CopyWithPlaceholder(),
    Object? calendarWeekColumnHeader = const $CopyWithPlaceholder(),
    Object? shortDateFormat = const $CopyWithPlaceholder(),
    Object? longDateFormat = const $CopyWithPlaceholder(),
    Object? timeFormat = const $CopyWithPlaceholder(),
    Object? showRelativeDates = const $CopyWithPlaceholder(),
    Object? enableColorImpairedMode = const $CopyWithPlaceholder(),
    Object? theme = const $CopyWithPlaceholder(),
    Object? uiLanguage = const $CopyWithPlaceholder(),
  }) {
    return UiConfigResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      firstDayOfWeek: firstDayOfWeek == const $CopyWithPlaceholder()
          ? _value.firstDayOfWeek
          // ignore: cast_nullable_to_non_nullable
          : firstDayOfWeek as int?,
      calendarWeekColumnHeader:
          calendarWeekColumnHeader == const $CopyWithPlaceholder()
          ? _value.calendarWeekColumnHeader
          // ignore: cast_nullable_to_non_nullable
          : calendarWeekColumnHeader as String?,
      shortDateFormat: shortDateFormat == const $CopyWithPlaceholder()
          ? _value.shortDateFormat
          // ignore: cast_nullable_to_non_nullable
          : shortDateFormat as String?,
      longDateFormat: longDateFormat == const $CopyWithPlaceholder()
          ? _value.longDateFormat
          // ignore: cast_nullable_to_non_nullable
          : longDateFormat as String?,
      timeFormat: timeFormat == const $CopyWithPlaceholder()
          ? _value.timeFormat
          // ignore: cast_nullable_to_non_nullable
          : timeFormat as String?,
      showRelativeDates: showRelativeDates == const $CopyWithPlaceholder()
          ? _value.showRelativeDates
          // ignore: cast_nullable_to_non_nullable
          : showRelativeDates as bool?,
      enableColorImpairedMode:
          enableColorImpairedMode == const $CopyWithPlaceholder()
          ? _value.enableColorImpairedMode
          // ignore: cast_nullable_to_non_nullable
          : enableColorImpairedMode as bool?,
      theme: theme == const $CopyWithPlaceholder()
          ? _value.theme
          // ignore: cast_nullable_to_non_nullable
          : theme as String?,
      uiLanguage: uiLanguage == const $CopyWithPlaceholder()
          ? _value.uiLanguage
          // ignore: cast_nullable_to_non_nullable
          : uiLanguage as int?,
    );
  }
}

extension $UiConfigResourceCopyWith on UiConfigResource {
  /// Returns a callable class that can be used as follows: `instanceOfUiConfigResource.copyWith(...)` or like so:`instanceOfUiConfigResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UiConfigResourceCWProxy get copyWith => _$UiConfigResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UiConfigResource _$UiConfigResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UiConfigResource', json, ($checkedConvert) {
  final val = UiConfigResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    firstDayOfWeek: $checkedConvert(
      'firstDayOfWeek',
      (v) => (v as num?)?.toInt(),
    ),
    calendarWeekColumnHeader: $checkedConvert(
      'calendarWeekColumnHeader',
      (v) => v as String?,
    ),
    shortDateFormat: $checkedConvert('shortDateFormat', (v) => v as String?),
    longDateFormat: $checkedConvert('longDateFormat', (v) => v as String?),
    timeFormat: $checkedConvert('timeFormat', (v) => v as String?),
    showRelativeDates: $checkedConvert('showRelativeDates', (v) => v as bool?),
    enableColorImpairedMode: $checkedConvert(
      'enableColorImpairedMode',
      (v) => v as bool?,
    ),
    theme: $checkedConvert('theme', (v) => v as String?),
    uiLanguage: $checkedConvert('uiLanguage', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$UiConfigResourceToJson(UiConfigResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'firstDayOfWeek': ?instance.firstDayOfWeek,
      'calendarWeekColumnHeader': ?instance.calendarWeekColumnHeader,
      'shortDateFormat': ?instance.shortDateFormat,
      'longDateFormat': ?instance.longDateFormat,
      'timeFormat': ?instance.timeFormat,
      'showRelativeDates': ?instance.showRelativeDates,
      'enableColorImpairedMode': ?instance.enableColorImpairedMode,
      'theme': ?instance.theme,
      'uiLanguage': ?instance.uiLanguage,
    };
