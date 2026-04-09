// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogResourceCWProxy {
  LogResource id(int? id);

  LogResource time(DateTime? time);

  LogResource exception(String? exception);

  LogResource exceptionType(String? exceptionType);

  LogResource level(String? level);

  LogResource logger(String? logger);

  LogResource message(String? message);

  LogResource method(String? method);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LogResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LogResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LogResource call({
    int? id,
    DateTime? time,
    String? exception,
    String? exceptionType,
    String? level,
    String? logger,
    String? message,
    String? method,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLogResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLogResource.copyWith.fieldName(...)`
class _$LogResourceCWProxyImpl implements _$LogResourceCWProxy {
  const _$LogResourceCWProxyImpl(this._value);

  final LogResource _value;

  @override
  LogResource id(int? id) => this(id: id);

  @override
  LogResource time(DateTime? time) => this(time: time);

  @override
  LogResource exception(String? exception) => this(exception: exception);

  @override
  LogResource exceptionType(String? exceptionType) =>
      this(exceptionType: exceptionType);

  @override
  LogResource level(String? level) => this(level: level);

  @override
  LogResource logger(String? logger) => this(logger: logger);

  @override
  LogResource message(String? message) => this(message: message);

  @override
  LogResource method(String? method) => this(method: method);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LogResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LogResource(...).copyWith(id: 12, name: "My name")
  /// ````
  LogResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? time = const $CopyWithPlaceholder(),
    Object? exception = const $CopyWithPlaceholder(),
    Object? exceptionType = const $CopyWithPlaceholder(),
    Object? level = const $CopyWithPlaceholder(),
    Object? logger = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? method = const $CopyWithPlaceholder(),
  }) {
    return LogResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      time: time == const $CopyWithPlaceholder()
          ? _value.time
          // ignore: cast_nullable_to_non_nullable
          : time as DateTime?,
      exception: exception == const $CopyWithPlaceholder()
          ? _value.exception
          // ignore: cast_nullable_to_non_nullable
          : exception as String?,
      exceptionType: exceptionType == const $CopyWithPlaceholder()
          ? _value.exceptionType
          // ignore: cast_nullable_to_non_nullable
          : exceptionType as String?,
      level: level == const $CopyWithPlaceholder()
          ? _value.level
          // ignore: cast_nullable_to_non_nullable
          : level as String?,
      logger: logger == const $CopyWithPlaceholder()
          ? _value.logger
          // ignore: cast_nullable_to_non_nullable
          : logger as String?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      method: method == const $CopyWithPlaceholder()
          ? _value.method
          // ignore: cast_nullable_to_non_nullable
          : method as String?,
    );
  }
}

extension $LogResourceCopyWith on LogResource {
  /// Returns a callable class that can be used as follows: `instanceOfLogResource.copyWith(...)` or like so:`instanceOfLogResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogResourceCWProxy get copyWith => _$LogResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogResource _$LogResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LogResource', json, ($checkedConvert) {
      final val = LogResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        time: $checkedConvert(
          'time',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        exception: $checkedConvert('exception', (v) => v as String?),
        exceptionType: $checkedConvert('exceptionType', (v) => v as String?),
        level: $checkedConvert('level', (v) => v as String?),
        logger: $checkedConvert('logger', (v) => v as String?),
        message: $checkedConvert('message', (v) => v as String?),
        method: $checkedConvert('method', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$LogResourceToJson(LogResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'time': ?instance.time?.toIso8601String(),
      'exception': ?instance.exception,
      'exceptionType': ?instance.exceptionType,
      'level': ?instance.level,
      'logger': ?instance.logger,
      'message': ?instance.message,
      'method': ?instance.method,
    };
