// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagResource extends TagResource {
  @override
  final int? id;
  @override
  final String? label;

  factory _$TagResource([void Function(TagResourceBuilder)? updates]) =>
      (TagResourceBuilder()..update(updates))._build();

  _$TagResource._({this.id, this.label}) : super._();
  @override
  TagResource rebuild(void Function(TagResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagResourceBuilder toBuilder() => TagResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagResource && id == other.id && label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagResource')
          ..add('id', id)
          ..add('label', label))
        .toString();
  }
}

class TagResourceBuilder implements Builder<TagResource, TagResourceBuilder> {
  _$TagResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  TagResourceBuilder() {
    TagResource._defaults(this);
  }

  TagResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagResource other) {
    _$v = other as _$TagResource;
  }

  @override
  void update(void Function(TagResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagResource build() => _build();

  _$TagResource _build() {
    final _$result = _$v ??
        _$TagResource._(
          id: id,
          label: label,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
