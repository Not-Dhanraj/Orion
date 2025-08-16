// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternate_title_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlternateTitleResource extends AlternateTitleResource {
  @override
  final String? title;
  @override
  final int? seasonNumber;
  @override
  final int? sceneSeasonNumber;
  @override
  final String? sceneOrigin;
  @override
  final String? comment;

  factory _$AlternateTitleResource(
          [void Function(AlternateTitleResourceBuilder)? updates]) =>
      (AlternateTitleResourceBuilder()..update(updates))._build();

  _$AlternateTitleResource._(
      {this.title,
      this.seasonNumber,
      this.sceneSeasonNumber,
      this.sceneOrigin,
      this.comment})
      : super._();
  @override
  AlternateTitleResource rebuild(
          void Function(AlternateTitleResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternateTitleResourceBuilder toBuilder() =>
      AlternateTitleResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlternateTitleResource &&
        title == other.title &&
        seasonNumber == other.seasonNumber &&
        sceneSeasonNumber == other.sceneSeasonNumber &&
        sceneOrigin == other.sceneOrigin &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, seasonNumber.hashCode);
    _$hash = $jc(_$hash, sceneSeasonNumber.hashCode);
    _$hash = $jc(_$hash, sceneOrigin.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlternateTitleResource')
          ..add('title', title)
          ..add('seasonNumber', seasonNumber)
          ..add('sceneSeasonNumber', sceneSeasonNumber)
          ..add('sceneOrigin', sceneOrigin)
          ..add('comment', comment))
        .toString();
  }
}

class AlternateTitleResourceBuilder
    implements Builder<AlternateTitleResource, AlternateTitleResourceBuilder> {
  _$AlternateTitleResource? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _seasonNumber;
  int? get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int? seasonNumber) => _$this._seasonNumber = seasonNumber;

  int? _sceneSeasonNumber;
  int? get sceneSeasonNumber => _$this._sceneSeasonNumber;
  set sceneSeasonNumber(int? sceneSeasonNumber) =>
      _$this._sceneSeasonNumber = sceneSeasonNumber;

  String? _sceneOrigin;
  String? get sceneOrigin => _$this._sceneOrigin;
  set sceneOrigin(String? sceneOrigin) => _$this._sceneOrigin = sceneOrigin;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  AlternateTitleResourceBuilder() {
    AlternateTitleResource._defaults(this);
  }

  AlternateTitleResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _seasonNumber = $v.seasonNumber;
      _sceneSeasonNumber = $v.sceneSeasonNumber;
      _sceneOrigin = $v.sceneOrigin;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlternateTitleResource other) {
    _$v = other as _$AlternateTitleResource;
  }

  @override
  void update(void Function(AlternateTitleResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlternateTitleResource build() => _build();

  _$AlternateTitleResource _build() {
    final _$result = _$v ??
        _$AlternateTitleResource._(
          title: title,
          seasonNumber: seasonNumber,
          sceneSeasonNumber: sceneSeasonNumber,
          sceneOrigin: sceneOrigin,
          comment: comment,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
