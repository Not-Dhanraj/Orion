// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternative_title_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlternativeTitleResource extends AlternativeTitleResource {
  @override
  final int? id;
  @override
  final SourceType? sourceType;
  @override
  final int? movieMetadataId;
  @override
  final String? title;
  @override
  final String? cleanTitle;

  factory _$AlternativeTitleResource(
          [void Function(AlternativeTitleResourceBuilder)? updates]) =>
      (AlternativeTitleResourceBuilder()..update(updates))._build();

  _$AlternativeTitleResource._(
      {this.id,
      this.sourceType,
      this.movieMetadataId,
      this.title,
      this.cleanTitle})
      : super._();
  @override
  AlternativeTitleResource rebuild(
          void Function(AlternativeTitleResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternativeTitleResourceBuilder toBuilder() =>
      AlternativeTitleResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlternativeTitleResource &&
        id == other.id &&
        sourceType == other.sourceType &&
        movieMetadataId == other.movieMetadataId &&
        title == other.title &&
        cleanTitle == other.cleanTitle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, movieMetadataId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, cleanTitle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlternativeTitleResource')
          ..add('id', id)
          ..add('sourceType', sourceType)
          ..add('movieMetadataId', movieMetadataId)
          ..add('title', title)
          ..add('cleanTitle', cleanTitle))
        .toString();
  }
}

class AlternativeTitleResourceBuilder
    implements
        Builder<AlternativeTitleResource, AlternativeTitleResourceBuilder> {
  _$AlternativeTitleResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  SourceType? _sourceType;
  SourceType? get sourceType => _$this._sourceType;
  set sourceType(SourceType? sourceType) => _$this._sourceType = sourceType;

  int? _movieMetadataId;
  int? get movieMetadataId => _$this._movieMetadataId;
  set movieMetadataId(int? movieMetadataId) =>
      _$this._movieMetadataId = movieMetadataId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _cleanTitle;
  String? get cleanTitle => _$this._cleanTitle;
  set cleanTitle(String? cleanTitle) => _$this._cleanTitle = cleanTitle;

  AlternativeTitleResourceBuilder() {
    AlternativeTitleResource._defaults(this);
  }

  AlternativeTitleResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sourceType = $v.sourceType;
      _movieMetadataId = $v.movieMetadataId;
      _title = $v.title;
      _cleanTitle = $v.cleanTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlternativeTitleResource other) {
    _$v = other as _$AlternativeTitleResource;
  }

  @override
  void update(void Function(AlternativeTitleResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlternativeTitleResource build() => _build();

  _$AlternativeTitleResource _build() {
    final _$result = _$v ??
        _$AlternativeTitleResource._(
          id: id,
          sourceType: sourceType,
          movieMetadataId: movieMetadataId,
          title: title,
          cleanTitle: cleanTitle,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
