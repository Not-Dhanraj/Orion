// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocklist_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlocklistResource extends BlocklistResource {
  @override
  final int? id;
  @override
  final int? movieId;
  @override
  final String? sourceTitle;
  @override
  final BuiltList<Language>? languages;
  @override
  final QualityModel? quality;
  @override
  final BuiltList<CustomFormatResource>? customFormats;
  @override
  final DateTime? date;
  @override
  final DownloadProtocol? protocol;
  @override
  final String? indexer;
  @override
  final String? message;
  @override
  final MovieResource? movie;

  factory _$BlocklistResource(
          [void Function(BlocklistResourceBuilder)? updates]) =>
      (BlocklistResourceBuilder()..update(updates))._build();

  _$BlocklistResource._(
      {this.id,
      this.movieId,
      this.sourceTitle,
      this.languages,
      this.quality,
      this.customFormats,
      this.date,
      this.protocol,
      this.indexer,
      this.message,
      this.movie})
      : super._();
  @override
  BlocklistResource rebuild(void Function(BlocklistResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlocklistResourceBuilder toBuilder() =>
      BlocklistResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlocklistResource &&
        id == other.id &&
        movieId == other.movieId &&
        sourceTitle == other.sourceTitle &&
        languages == other.languages &&
        quality == other.quality &&
        customFormats == other.customFormats &&
        date == other.date &&
        protocol == other.protocol &&
        indexer == other.indexer &&
        message == other.message &&
        movie == other.movie;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, movieId.hashCode);
    _$hash = $jc(_$hash, sourceTitle.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, customFormats.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, indexer.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, movie.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlocklistResource')
          ..add('id', id)
          ..add('movieId', movieId)
          ..add('sourceTitle', sourceTitle)
          ..add('languages', languages)
          ..add('quality', quality)
          ..add('customFormats', customFormats)
          ..add('date', date)
          ..add('protocol', protocol)
          ..add('indexer', indexer)
          ..add('message', message)
          ..add('movie', movie))
        .toString();
  }
}

class BlocklistResourceBuilder
    implements Builder<BlocklistResource, BlocklistResourceBuilder> {
  _$BlocklistResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _movieId;
  int? get movieId => _$this._movieId;
  set movieId(int? movieId) => _$this._movieId = movieId;

  String? _sourceTitle;
  String? get sourceTitle => _$this._sourceTitle;
  set sourceTitle(String? sourceTitle) => _$this._sourceTitle = sourceTitle;

  ListBuilder<Language>? _languages;
  ListBuilder<Language> get languages =>
      _$this._languages ??= ListBuilder<Language>();
  set languages(ListBuilder<Language>? languages) =>
      _$this._languages = languages;

  QualityModelBuilder? _quality;
  QualityModelBuilder get quality => _$this._quality ??= QualityModelBuilder();
  set quality(QualityModelBuilder? quality) => _$this._quality = quality;

  ListBuilder<CustomFormatResource>? _customFormats;
  ListBuilder<CustomFormatResource> get customFormats =>
      _$this._customFormats ??= ListBuilder<CustomFormatResource>();
  set customFormats(ListBuilder<CustomFormatResource>? customFormats) =>
      _$this._customFormats = customFormats;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DownloadProtocol? _protocol;
  DownloadProtocol? get protocol => _$this._protocol;
  set protocol(DownloadProtocol? protocol) => _$this._protocol = protocol;

  String? _indexer;
  String? get indexer => _$this._indexer;
  set indexer(String? indexer) => _$this._indexer = indexer;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  MovieResourceBuilder? _movie;
  MovieResourceBuilder get movie => _$this._movie ??= MovieResourceBuilder();
  set movie(MovieResourceBuilder? movie) => _$this._movie = movie;

  BlocklistResourceBuilder() {
    BlocklistResource._defaults(this);
  }

  BlocklistResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _movieId = $v.movieId;
      _sourceTitle = $v.sourceTitle;
      _languages = $v.languages?.toBuilder();
      _quality = $v.quality?.toBuilder();
      _customFormats = $v.customFormats?.toBuilder();
      _date = $v.date;
      _protocol = $v.protocol;
      _indexer = $v.indexer;
      _message = $v.message;
      _movie = $v.movie?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlocklistResource other) {
    _$v = other as _$BlocklistResource;
  }

  @override
  void update(void Function(BlocklistResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlocklistResource build() => _build();

  _$BlocklistResource _build() {
    _$BlocklistResource _$result;
    try {
      _$result = _$v ??
          _$BlocklistResource._(
            id: id,
            movieId: movieId,
            sourceTitle: sourceTitle,
            languages: _languages?.build(),
            quality: _quality?.build(),
            customFormats: _customFormats?.build(),
            date: date,
            protocol: protocol,
            indexer: indexer,
            message: message,
            movie: _movie?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();
        _$failedField = 'quality';
        _quality?.build();
        _$failedField = 'customFormats';
        _customFormats?.build();

        _$failedField = 'movie';
        _movie?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BlocklistResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
