// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_bulk_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueueBulkResource extends QueueBulkResource {
  @override
  final BuiltList<int>? ids;

  factory _$QueueBulkResource(
          [void Function(QueueBulkResourceBuilder)? updates]) =>
      (QueueBulkResourceBuilder()..update(updates))._build();

  _$QueueBulkResource._({this.ids}) : super._();
  @override
  QueueBulkResource rebuild(void Function(QueueBulkResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueueBulkResourceBuilder toBuilder() =>
      QueueBulkResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueueBulkResource && ids == other.ids;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ids.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QueueBulkResource')..add('ids', ids))
        .toString();
  }
}

class QueueBulkResourceBuilder
    implements Builder<QueueBulkResource, QueueBulkResourceBuilder> {
  _$QueueBulkResource? _$v;

  ListBuilder<int>? _ids;
  ListBuilder<int> get ids => _$this._ids ??= ListBuilder<int>();
  set ids(ListBuilder<int>? ids) => _$this._ids = ids;

  QueueBulkResourceBuilder() {
    QueueBulkResource._defaults(this);
  }

  QueueBulkResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueueBulkResource other) {
    _$v = other as _$QueueBulkResource;
  }

  @override
  void update(void Function(QueueBulkResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueueBulkResource build() => _build();

  _$QueueBulkResource _build() {
    _$QueueBulkResource _$result;
    try {
      _$result = _$v ??
          _$QueueBulkResource._(
            ids: _ids?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        _ids?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'QueueBulkResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
