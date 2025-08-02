// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LogResource extends LogResource {
  @override
  final int? id;
  @override
  final DateTime? time;
  @override
  final String? exception;
  @override
  final String? exceptionType;
  @override
  final String? level;
  @override
  final String? logger;
  @override
  final String? message;
  @override
  final String? method;

  factory _$LogResource([void Function(LogResourceBuilder)? updates]) =>
      (LogResourceBuilder()..update(updates))._build();

  _$LogResource._(
      {this.id,
      this.time,
      this.exception,
      this.exceptionType,
      this.level,
      this.logger,
      this.message,
      this.method})
      : super._();
  @override
  LogResource rebuild(void Function(LogResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogResourceBuilder toBuilder() => LogResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogResource &&
        id == other.id &&
        time == other.time &&
        exception == other.exception &&
        exceptionType == other.exceptionType &&
        level == other.level &&
        logger == other.logger &&
        message == other.message &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, exception.hashCode);
    _$hash = $jc(_$hash, exceptionType.hashCode);
    _$hash = $jc(_$hash, level.hashCode);
    _$hash = $jc(_$hash, logger.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogResource')
          ..add('id', id)
          ..add('time', time)
          ..add('exception', exception)
          ..add('exceptionType', exceptionType)
          ..add('level', level)
          ..add('logger', logger)
          ..add('message', message)
          ..add('method', method))
        .toString();
  }
}

class LogResourceBuilder implements Builder<LogResource, LogResourceBuilder> {
  _$LogResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _exception;
  String? get exception => _$this._exception;
  set exception(String? exception) => _$this._exception = exception;

  String? _exceptionType;
  String? get exceptionType => _$this._exceptionType;
  set exceptionType(String? exceptionType) =>
      _$this._exceptionType = exceptionType;

  String? _level;
  String? get level => _$this._level;
  set level(String? level) => _$this._level = level;

  String? _logger;
  String? get logger => _$this._logger;
  set logger(String? logger) => _$this._logger = logger;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  LogResourceBuilder() {
    LogResource._defaults(this);
  }

  LogResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _time = $v.time;
      _exception = $v.exception;
      _exceptionType = $v.exceptionType;
      _level = $v.level;
      _logger = $v.logger;
      _message = $v.message;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogResource other) {
    _$v = other as _$LogResource;
  }

  @override
  void update(void Function(LogResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogResource build() => _build();

  _$LogResource _build() {
    final _$result = _$v ??
        _$LogResource._(
          id: id,
          time: time,
          exception: exception,
          exceptionType: exceptionType,
          level: level,
          logger: logger,
          message: message,
          method: method,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
