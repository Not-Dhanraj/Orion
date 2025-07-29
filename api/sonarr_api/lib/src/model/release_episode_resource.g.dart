// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_episode_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReleaseEpisodeResource extends ReleaseEpisodeResource {
  @override
  final int? id;
  @override
  final int? seasonNumber;
  @override
  final int? episodeNumber;
  @override
  final int? absoluteEpisodeNumber;
  @override
  final String? title;

  factory _$ReleaseEpisodeResource(
          [void Function(ReleaseEpisodeResourceBuilder)? updates]) =>
      (ReleaseEpisodeResourceBuilder()..update(updates))._build();

  _$ReleaseEpisodeResource._(
      {this.id,
      this.seasonNumber,
      this.episodeNumber,
      this.absoluteEpisodeNumber,
      this.title})
      : super._();
  @override
  ReleaseEpisodeResource rebuild(
          void Function(ReleaseEpisodeResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseEpisodeResourceBuilder toBuilder() =>
      ReleaseEpisodeResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseEpisodeResource &&
        id == other.id &&
        seasonNumber == other.seasonNumber &&
        episodeNumber == other.episodeNumber &&
        absoluteEpisodeNumber == other.absoluteEpisodeNumber &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, seasonNumber.hashCode);
    _$hash = $jc(_$hash, episodeNumber.hashCode);
    _$hash = $jc(_$hash, absoluteEpisodeNumber.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReleaseEpisodeResource')
          ..add('id', id)
          ..add('seasonNumber', seasonNumber)
          ..add('episodeNumber', episodeNumber)
          ..add('absoluteEpisodeNumber', absoluteEpisodeNumber)
          ..add('title', title))
        .toString();
  }
}

class ReleaseEpisodeResourceBuilder
    implements Builder<ReleaseEpisodeResource, ReleaseEpisodeResourceBuilder> {
  _$ReleaseEpisodeResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _seasonNumber;
  int? get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int? seasonNumber) => _$this._seasonNumber = seasonNumber;

  int? _episodeNumber;
  int? get episodeNumber => _$this._episodeNumber;
  set episodeNumber(int? episodeNumber) =>
      _$this._episodeNumber = episodeNumber;

  int? _absoluteEpisodeNumber;
  int? get absoluteEpisodeNumber => _$this._absoluteEpisodeNumber;
  set absoluteEpisodeNumber(int? absoluteEpisodeNumber) =>
      _$this._absoluteEpisodeNumber = absoluteEpisodeNumber;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ReleaseEpisodeResourceBuilder() {
    ReleaseEpisodeResource._defaults(this);
  }

  ReleaseEpisodeResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _seasonNumber = $v.seasonNumber;
      _episodeNumber = $v.episodeNumber;
      _absoluteEpisodeNumber = $v.absoluteEpisodeNumber;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseEpisodeResource other) {
    _$v = other as _$ReleaseEpisodeResource;
  }

  @override
  void update(void Function(ReleaseEpisodeResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReleaseEpisodeResource build() => _build();

  _$ReleaseEpisodeResource _build() {
    final _$result = _$v ??
        _$ReleaseEpisodeResource._(
          id: id,
          seasonNumber: seasonNumber,
          episodeNumber: episodeNumber,
          absoluteEpisodeNumber: absoluteEpisodeNumber,
          title: title,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
