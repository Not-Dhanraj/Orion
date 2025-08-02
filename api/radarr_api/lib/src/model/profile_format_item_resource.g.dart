// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_format_item_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProfileFormatItemResource extends ProfileFormatItemResource {
  @override
  final int? id;
  @override
  final int? format;
  @override
  final String? name;
  @override
  final int? score;

  factory _$ProfileFormatItemResource(
          [void Function(ProfileFormatItemResourceBuilder)? updates]) =>
      (ProfileFormatItemResourceBuilder()..update(updates))._build();

  _$ProfileFormatItemResource._({this.id, this.format, this.name, this.score})
      : super._();
  @override
  ProfileFormatItemResource rebuild(
          void Function(ProfileFormatItemResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileFormatItemResourceBuilder toBuilder() =>
      ProfileFormatItemResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileFormatItemResource &&
        id == other.id &&
        format == other.format &&
        name == other.name &&
        score == other.score;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProfileFormatItemResource')
          ..add('id', id)
          ..add('format', format)
          ..add('name', name)
          ..add('score', score))
        .toString();
  }
}

class ProfileFormatItemResourceBuilder
    implements
        Builder<ProfileFormatItemResource, ProfileFormatItemResourceBuilder> {
  _$ProfileFormatItemResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _format;
  int? get format => _$this._format;
  set format(int? format) => _$this._format = format;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  ProfileFormatItemResourceBuilder() {
    ProfileFormatItemResource._defaults(this);
  }

  ProfileFormatItemResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _format = $v.format;
      _name = $v.name;
      _score = $v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileFormatItemResource other) {
    _$v = other as _$ProfileFormatItemResource;
  }

  @override
  void update(void Function(ProfileFormatItemResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfileFormatItemResource build() => _build();

  _$ProfileFormatItemResource _build() {
    final _$result = _$v ??
        _$ProfileFormatItemResource._(
          id: id,
          format: format,
          name: name,
          score: score,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
