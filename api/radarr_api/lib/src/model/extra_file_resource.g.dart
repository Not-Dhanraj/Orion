// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra_file_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExtraFileResource extends ExtraFileResource {
  @override
  final int? id;
  @override
  final int? movieId;
  @override
  final int? movieFileId;
  @override
  final String? relativePath;
  @override
  final String? extension_;
  @override
  final BuiltList<String>? languageTags;
  @override
  final String? title;
  @override
  final ExtraFileType? type;

  factory _$ExtraFileResource(
          [void Function(ExtraFileResourceBuilder)? updates]) =>
      (ExtraFileResourceBuilder()..update(updates))._build();

  _$ExtraFileResource._(
      {this.id,
      this.movieId,
      this.movieFileId,
      this.relativePath,
      this.extension_,
      this.languageTags,
      this.title,
      this.type})
      : super._();
  @override
  ExtraFileResource rebuild(void Function(ExtraFileResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtraFileResourceBuilder toBuilder() =>
      ExtraFileResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtraFileResource &&
        id == other.id &&
        movieId == other.movieId &&
        movieFileId == other.movieFileId &&
        relativePath == other.relativePath &&
        extension_ == other.extension_ &&
        languageTags == other.languageTags &&
        title == other.title &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, movieId.hashCode);
    _$hash = $jc(_$hash, movieFileId.hashCode);
    _$hash = $jc(_$hash, relativePath.hashCode);
    _$hash = $jc(_$hash, extension_.hashCode);
    _$hash = $jc(_$hash, languageTags.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExtraFileResource')
          ..add('id', id)
          ..add('movieId', movieId)
          ..add('movieFileId', movieFileId)
          ..add('relativePath', relativePath)
          ..add('extension_', extension_)
          ..add('languageTags', languageTags)
          ..add('title', title)
          ..add('type', type))
        .toString();
  }
}

class ExtraFileResourceBuilder
    implements Builder<ExtraFileResource, ExtraFileResourceBuilder> {
  _$ExtraFileResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _movieId;
  int? get movieId => _$this._movieId;
  set movieId(int? movieId) => _$this._movieId = movieId;

  int? _movieFileId;
  int? get movieFileId => _$this._movieFileId;
  set movieFileId(int? movieFileId) => _$this._movieFileId = movieFileId;

  String? _relativePath;
  String? get relativePath => _$this._relativePath;
  set relativePath(String? relativePath) => _$this._relativePath = relativePath;

  String? _extension_;
  String? get extension_ => _$this._extension_;
  set extension_(String? extension_) => _$this._extension_ = extension_;

  ListBuilder<String>? _languageTags;
  ListBuilder<String> get languageTags =>
      _$this._languageTags ??= ListBuilder<String>();
  set languageTags(ListBuilder<String>? languageTags) =>
      _$this._languageTags = languageTags;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ExtraFileType? _type;
  ExtraFileType? get type => _$this._type;
  set type(ExtraFileType? type) => _$this._type = type;

  ExtraFileResourceBuilder() {
    ExtraFileResource._defaults(this);
  }

  ExtraFileResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _movieId = $v.movieId;
      _movieFileId = $v.movieFileId;
      _relativePath = $v.relativePath;
      _extension_ = $v.extension_;
      _languageTags = $v.languageTags?.toBuilder();
      _title = $v.title;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtraFileResource other) {
    _$v = other as _$ExtraFileResource;
  }

  @override
  void update(void Function(ExtraFileResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExtraFileResource build() => _build();

  _$ExtraFileResource _build() {
    _$ExtraFileResource _$result;
    try {
      _$result = _$v ??
          _$ExtraFileResource._(
            id: id,
            movieId: movieId,
            movieFileId: movieFileId,
            relativePath: relativePath,
            extension_: extension_,
            languageTags: _languageTags?.build(),
            title: title,
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languageTags';
        _languageTags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExtraFileResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
