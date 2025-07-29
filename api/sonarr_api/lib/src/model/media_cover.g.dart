// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_cover.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaCover extends MediaCover {
  @override
  final MediaCoverTypes? coverType;
  @override
  final String? url;
  @override
  final String? remoteUrl;

  factory _$MediaCover([void Function(MediaCoverBuilder)? updates]) =>
      (MediaCoverBuilder()..update(updates))._build();

  _$MediaCover._({this.coverType, this.url, this.remoteUrl}) : super._();
  @override
  MediaCover rebuild(void Function(MediaCoverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaCoverBuilder toBuilder() => MediaCoverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaCover &&
        coverType == other.coverType &&
        url == other.url &&
        remoteUrl == other.remoteUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coverType.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, remoteUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaCover')
          ..add('coverType', coverType)
          ..add('url', url)
          ..add('remoteUrl', remoteUrl))
        .toString();
  }
}

class MediaCoverBuilder implements Builder<MediaCover, MediaCoverBuilder> {
  _$MediaCover? _$v;

  MediaCoverTypes? _coverType;
  MediaCoverTypes? get coverType => _$this._coverType;
  set coverType(MediaCoverTypes? coverType) => _$this._coverType = coverType;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _remoteUrl;
  String? get remoteUrl => _$this._remoteUrl;
  set remoteUrl(String? remoteUrl) => _$this._remoteUrl = remoteUrl;

  MediaCoverBuilder() {
    MediaCover._defaults(this);
  }

  MediaCoverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coverType = $v.coverType;
      _url = $v.url;
      _remoteUrl = $v.remoteUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaCover other) {
    _$v = other as _$MediaCover;
  }

  @override
  void update(void Function(MediaCoverBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaCover build() => _build();

  _$MediaCover _build() {
    final _$result = _$v ??
        _$MediaCover._(
          coverType: coverType,
          url: url,
          remoteUrl: remoteUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
