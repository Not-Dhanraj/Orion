// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_status_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueueStatusResource extends QueueStatusResource {
  @override
  final int? id;
  @override
  final int? totalCount;
  @override
  final int? count;
  @override
  final int? unknownCount;
  @override
  final bool? errors;
  @override
  final bool? warnings;
  @override
  final bool? unknownErrors;
  @override
  final bool? unknownWarnings;

  factory _$QueueStatusResource(
          [void Function(QueueStatusResourceBuilder)? updates]) =>
      (QueueStatusResourceBuilder()..update(updates))._build();

  _$QueueStatusResource._(
      {this.id,
      this.totalCount,
      this.count,
      this.unknownCount,
      this.errors,
      this.warnings,
      this.unknownErrors,
      this.unknownWarnings})
      : super._();
  @override
  QueueStatusResource rebuild(
          void Function(QueueStatusResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueueStatusResourceBuilder toBuilder() =>
      QueueStatusResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueueStatusResource &&
        id == other.id &&
        totalCount == other.totalCount &&
        count == other.count &&
        unknownCount == other.unknownCount &&
        errors == other.errors &&
        warnings == other.warnings &&
        unknownErrors == other.unknownErrors &&
        unknownWarnings == other.unknownWarnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, unknownCount.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, unknownErrors.hashCode);
    _$hash = $jc(_$hash, unknownWarnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QueueStatusResource')
          ..add('id', id)
          ..add('totalCount', totalCount)
          ..add('count', count)
          ..add('unknownCount', unknownCount)
          ..add('errors', errors)
          ..add('warnings', warnings)
          ..add('unknownErrors', unknownErrors)
          ..add('unknownWarnings', unknownWarnings))
        .toString();
  }
}

class QueueStatusResourceBuilder
    implements Builder<QueueStatusResource, QueueStatusResourceBuilder> {
  _$QueueStatusResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _unknownCount;
  int? get unknownCount => _$this._unknownCount;
  set unknownCount(int? unknownCount) => _$this._unknownCount = unknownCount;

  bool? _errors;
  bool? get errors => _$this._errors;
  set errors(bool? errors) => _$this._errors = errors;

  bool? _warnings;
  bool? get warnings => _$this._warnings;
  set warnings(bool? warnings) => _$this._warnings = warnings;

  bool? _unknownErrors;
  bool? get unknownErrors => _$this._unknownErrors;
  set unknownErrors(bool? unknownErrors) =>
      _$this._unknownErrors = unknownErrors;

  bool? _unknownWarnings;
  bool? get unknownWarnings => _$this._unknownWarnings;
  set unknownWarnings(bool? unknownWarnings) =>
      _$this._unknownWarnings = unknownWarnings;

  QueueStatusResourceBuilder() {
    QueueStatusResource._defaults(this);
  }

  QueueStatusResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _totalCount = $v.totalCount;
      _count = $v.count;
      _unknownCount = $v.unknownCount;
      _errors = $v.errors;
      _warnings = $v.warnings;
      _unknownErrors = $v.unknownErrors;
      _unknownWarnings = $v.unknownWarnings;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueueStatusResource other) {
    _$v = other as _$QueueStatusResource;
  }

  @override
  void update(void Function(QueueStatusResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueueStatusResource build() => _build();

  _$QueueStatusResource _build() {
    final _$result = _$v ??
        _$QueueStatusResource._(
          id: id,
          totalCount: totalCount,
          count: count,
          unknownCount: unknownCount,
          errors: errors,
          warnings: warnings,
          unknownErrors: unknownErrors,
          unknownWarnings: unknownWarnings,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
