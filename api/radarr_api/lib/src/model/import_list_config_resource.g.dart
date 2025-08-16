// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_config_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportListConfigResource extends ImportListConfigResource {
  @override
  final int? id;
  @override
  final String? listSyncLevel;

  factory _$ImportListConfigResource(
          [void Function(ImportListConfigResourceBuilder)? updates]) =>
      (ImportListConfigResourceBuilder()..update(updates))._build();

  _$ImportListConfigResource._({this.id, this.listSyncLevel}) : super._();
  @override
  ImportListConfigResource rebuild(
          void Function(ImportListConfigResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportListConfigResourceBuilder toBuilder() =>
      ImportListConfigResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportListConfigResource &&
        id == other.id &&
        listSyncLevel == other.listSyncLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, listSyncLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportListConfigResource')
          ..add('id', id)
          ..add('listSyncLevel', listSyncLevel))
        .toString();
  }
}

class ImportListConfigResourceBuilder
    implements
        Builder<ImportListConfigResource, ImportListConfigResourceBuilder> {
  _$ImportListConfigResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _listSyncLevel;
  String? get listSyncLevel => _$this._listSyncLevel;
  set listSyncLevel(String? listSyncLevel) =>
      _$this._listSyncLevel = listSyncLevel;

  ImportListConfigResourceBuilder() {
    ImportListConfigResource._defaults(this);
  }

  ImportListConfigResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _listSyncLevel = $v.listSyncLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportListConfigResource other) {
    _$v = other as _$ImportListConfigResource;
  }

  @override
  void update(void Function(ImportListConfigResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportListConfigResource build() => _build();

  _$ImportListConfigResource _build() {
    final _$result = _$v ??
        _$ImportListConfigResource._(
          id: id,
          listSyncLevel: listSyncLevel,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
