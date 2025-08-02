// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocklist_bulk_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlocklistBulkResource extends BlocklistBulkResource {
  @override
  final BuiltList<int>? ids;

  factory _$BlocklistBulkResource(
          [void Function(BlocklistBulkResourceBuilder)? updates]) =>
      (BlocklistBulkResourceBuilder()..update(updates))._build();

  _$BlocklistBulkResource._({this.ids}) : super._();
  @override
  BlocklistBulkResource rebuild(
          void Function(BlocklistBulkResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlocklistBulkResourceBuilder toBuilder() =>
      BlocklistBulkResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlocklistBulkResource && ids == other.ids;
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
    return (newBuiltValueToStringHelper(r'BlocklistBulkResource')
          ..add('ids', ids))
        .toString();
  }
}

class BlocklistBulkResourceBuilder
    implements Builder<BlocklistBulkResource, BlocklistBulkResourceBuilder> {
  _$BlocklistBulkResource? _$v;

  ListBuilder<int>? _ids;
  ListBuilder<int> get ids => _$this._ids ??= ListBuilder<int>();
  set ids(ListBuilder<int>? ids) => _$this._ids = ids;

  BlocklistBulkResourceBuilder() {
    BlocklistBulkResource._defaults(this);
  }

  BlocklistBulkResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlocklistBulkResource other) {
    _$v = other as _$BlocklistBulkResource;
  }

  @override
  void update(void Function(BlocklistBulkResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlocklistBulkResource build() => _build();

  _$BlocklistBulkResource _build() {
    _$BlocklistBulkResource _$result;
    try {
      _$result = _$v ??
          _$BlocklistBulkResource._(
            ids: _ids?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        _ids?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BlocklistBulkResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
