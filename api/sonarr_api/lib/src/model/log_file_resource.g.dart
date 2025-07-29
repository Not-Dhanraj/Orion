// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_file_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LogFileResource extends LogFileResource {
  @override
  final int? id;
  @override
  final String? filename;
  @override
  final DateTime? lastWriteTime;
  @override
  final String? contentsUrl;
  @override
  final String? downloadUrl;

  factory _$LogFileResource([void Function(LogFileResourceBuilder)? updates]) =>
      (LogFileResourceBuilder()..update(updates))._build();

  _$LogFileResource._(
      {this.id,
      this.filename,
      this.lastWriteTime,
      this.contentsUrl,
      this.downloadUrl})
      : super._();
  @override
  LogFileResource rebuild(void Function(LogFileResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogFileResourceBuilder toBuilder() => LogFileResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogFileResource &&
        id == other.id &&
        filename == other.filename &&
        lastWriteTime == other.lastWriteTime &&
        contentsUrl == other.contentsUrl &&
        downloadUrl == other.downloadUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jc(_$hash, lastWriteTime.hashCode);
    _$hash = $jc(_$hash, contentsUrl.hashCode);
    _$hash = $jc(_$hash, downloadUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogFileResource')
          ..add('id', id)
          ..add('filename', filename)
          ..add('lastWriteTime', lastWriteTime)
          ..add('contentsUrl', contentsUrl)
          ..add('downloadUrl', downloadUrl))
        .toString();
  }
}

class LogFileResourceBuilder
    implements Builder<LogFileResource, LogFileResourceBuilder> {
  _$LogFileResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  DateTime? _lastWriteTime;
  DateTime? get lastWriteTime => _$this._lastWriteTime;
  set lastWriteTime(DateTime? lastWriteTime) =>
      _$this._lastWriteTime = lastWriteTime;

  String? _contentsUrl;
  String? get contentsUrl => _$this._contentsUrl;
  set contentsUrl(String? contentsUrl) => _$this._contentsUrl = contentsUrl;

  String? _downloadUrl;
  String? get downloadUrl => _$this._downloadUrl;
  set downloadUrl(String? downloadUrl) => _$this._downloadUrl = downloadUrl;

  LogFileResourceBuilder() {
    LogFileResource._defaults(this);
  }

  LogFileResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _filename = $v.filename;
      _lastWriteTime = $v.lastWriteTime;
      _contentsUrl = $v.contentsUrl;
      _downloadUrl = $v.downloadUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogFileResource other) {
    _$v = other as _$LogFileResource;
  }

  @override
  void update(void Function(LogFileResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogFileResource build() => _build();

  _$LogFileResource _build() {
    final _$result = _$v ??
        _$LogFileResource._(
          id: id,
          filename: filename,
          lastWriteTime: lastWriteTime,
          contentsUrl: contentsUrl,
          downloadUrl: downloadUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
