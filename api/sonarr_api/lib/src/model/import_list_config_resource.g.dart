// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_config_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportListConfigResource extends ImportListConfigResource {
  @override
  final int? id;
  @override
  final ListSyncLevelType? listSyncLevel;
  @override
  final int? listSyncTag;

  factory _$ImportListConfigResource(
          [void Function(ImportListConfigResourceBuilder)? updates]) =>
      (ImportListConfigResourceBuilder()..update(updates))._build();

  _$ImportListConfigResource._({this.id, this.listSyncLevel, this.listSyncTag})
      : super._();
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
        listSyncLevel == other.listSyncLevel &&
        listSyncTag == other.listSyncTag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, listSyncLevel.hashCode);
    _$hash = $jc(_$hash, listSyncTag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportListConfigResource')
          ..add('id', id)
          ..add('listSyncLevel', listSyncLevel)
          ..add('listSyncTag', listSyncTag))
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

  ListSyncLevelType? _listSyncLevel;
  ListSyncLevelType? get listSyncLevel => _$this._listSyncLevel;
  set listSyncLevel(ListSyncLevelType? listSyncLevel) =>
      _$this._listSyncLevel = listSyncLevel;

  int? _listSyncTag;
  int? get listSyncTag => _$this._listSyncTag;
  set listSyncTag(int? listSyncTag) => _$this._listSyncTag = listSyncTag;

  ImportListConfigResourceBuilder() {
    ImportListConfigResource._defaults(this);
  }

  ImportListConfigResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _listSyncLevel = $v.listSyncLevel;
      _listSyncTag = $v.listSyncTag;
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
          listSyncTag: listSyncTag,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
