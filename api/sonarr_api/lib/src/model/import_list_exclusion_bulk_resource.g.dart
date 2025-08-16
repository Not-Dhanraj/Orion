// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_exclusion_bulk_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportListExclusionBulkResource
    extends ImportListExclusionBulkResource {
  @override
  final BuiltSet<int>? ids;

  factory _$ImportListExclusionBulkResource(
          [void Function(ImportListExclusionBulkResourceBuilder)? updates]) =>
      (ImportListExclusionBulkResourceBuilder()..update(updates))._build();

  _$ImportListExclusionBulkResource._({this.ids}) : super._();
  @override
  ImportListExclusionBulkResource rebuild(
          void Function(ImportListExclusionBulkResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportListExclusionBulkResourceBuilder toBuilder() =>
      ImportListExclusionBulkResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportListExclusionBulkResource && ids == other.ids;
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
    return (newBuiltValueToStringHelper(r'ImportListExclusionBulkResource')
          ..add('ids', ids))
        .toString();
  }
}

class ImportListExclusionBulkResourceBuilder
    implements
        Builder<ImportListExclusionBulkResource,
            ImportListExclusionBulkResourceBuilder> {
  _$ImportListExclusionBulkResource? _$v;

  SetBuilder<int>? _ids;
  SetBuilder<int> get ids => _$this._ids ??= SetBuilder<int>();
  set ids(SetBuilder<int>? ids) => _$this._ids = ids;

  ImportListExclusionBulkResourceBuilder() {
    ImportListExclusionBulkResource._defaults(this);
  }

  ImportListExclusionBulkResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportListExclusionBulkResource other) {
    _$v = other as _$ImportListExclusionBulkResource;
  }

  @override
  void update(void Function(ImportListExclusionBulkResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportListExclusionBulkResource build() => _build();

  _$ImportListExclusionBulkResource _build() {
    _$ImportListExclusionBulkResource _$result;
    try {
      _$result = _$v ??
          _$ImportListExclusionBulkResource._(
            ids: _ids?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        _ids?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ImportListExclusionBulkResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
