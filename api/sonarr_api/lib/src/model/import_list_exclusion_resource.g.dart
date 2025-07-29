// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_list_exclusion_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportListExclusionResource extends ImportListExclusionResource {
  @override
  final int? id;
  @override
  final int? tvdbId;
  @override
  final String? title;

  factory _$ImportListExclusionResource(
          [void Function(ImportListExclusionResourceBuilder)? updates]) =>
      (ImportListExclusionResourceBuilder()..update(updates))._build();

  _$ImportListExclusionResource._({this.id, this.tvdbId, this.title})
      : super._();
  @override
  ImportListExclusionResource rebuild(
          void Function(ImportListExclusionResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportListExclusionResourceBuilder toBuilder() =>
      ImportListExclusionResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportListExclusionResource &&
        id == other.id &&
        tvdbId == other.tvdbId &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, tvdbId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportListExclusionResource')
          ..add('id', id)
          ..add('tvdbId', tvdbId)
          ..add('title', title))
        .toString();
  }
}

class ImportListExclusionResourceBuilder
    implements
        Builder<ImportListExclusionResource,
            ImportListExclusionResourceBuilder> {
  _$ImportListExclusionResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _tvdbId;
  int? get tvdbId => _$this._tvdbId;
  set tvdbId(int? tvdbId) => _$this._tvdbId = tvdbId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ImportListExclusionResourceBuilder() {
    ImportListExclusionResource._defaults(this);
  }

  ImportListExclusionResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tvdbId = $v.tvdbId;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportListExclusionResource other) {
    _$v = other as _$ImportListExclusionResource;
  }

  @override
  void update(void Function(ImportListExclusionResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportListExclusionResource build() => _build();

  _$ImportListExclusionResource _build() {
    final _$result = _$v ??
        _$ImportListExclusionResource._(
          id: id,
          tvdbId: tvdbId,
          title: title,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
