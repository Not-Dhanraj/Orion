// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_info_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaInfoResource extends MediaInfoResource {
  @override
  final int? id;
  @override
  final int? audioBitrate;
  @override
  final double? audioChannels;
  @override
  final String? audioCodec;
  @override
  final String? audioLanguages;
  @override
  final int? audioStreamCount;
  @override
  final int? videoBitDepth;
  @override
  final int? videoBitrate;
  @override
  final String? videoCodec;
  @override
  final double? videoFps;
  @override
  final String? videoDynamicRange;
  @override
  final String? videoDynamicRangeType;
  @override
  final String? resolution;
  @override
  final String? runTime;
  @override
  final String? scanType;
  @override
  final String? subtitles;

  factory _$MediaInfoResource(
          [void Function(MediaInfoResourceBuilder)? updates]) =>
      (MediaInfoResourceBuilder()..update(updates))._build();

  _$MediaInfoResource._(
      {this.id,
      this.audioBitrate,
      this.audioChannels,
      this.audioCodec,
      this.audioLanguages,
      this.audioStreamCount,
      this.videoBitDepth,
      this.videoBitrate,
      this.videoCodec,
      this.videoFps,
      this.videoDynamicRange,
      this.videoDynamicRangeType,
      this.resolution,
      this.runTime,
      this.scanType,
      this.subtitles})
      : super._();
  @override
  MediaInfoResource rebuild(void Function(MediaInfoResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaInfoResourceBuilder toBuilder() =>
      MediaInfoResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaInfoResource &&
        id == other.id &&
        audioBitrate == other.audioBitrate &&
        audioChannels == other.audioChannels &&
        audioCodec == other.audioCodec &&
        audioLanguages == other.audioLanguages &&
        audioStreamCount == other.audioStreamCount &&
        videoBitDepth == other.videoBitDepth &&
        videoBitrate == other.videoBitrate &&
        videoCodec == other.videoCodec &&
        videoFps == other.videoFps &&
        videoDynamicRange == other.videoDynamicRange &&
        videoDynamicRangeType == other.videoDynamicRangeType &&
        resolution == other.resolution &&
        runTime == other.runTime &&
        scanType == other.scanType &&
        subtitles == other.subtitles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, audioBitrate.hashCode);
    _$hash = $jc(_$hash, audioChannels.hashCode);
    _$hash = $jc(_$hash, audioCodec.hashCode);
    _$hash = $jc(_$hash, audioLanguages.hashCode);
    _$hash = $jc(_$hash, audioStreamCount.hashCode);
    _$hash = $jc(_$hash, videoBitDepth.hashCode);
    _$hash = $jc(_$hash, videoBitrate.hashCode);
    _$hash = $jc(_$hash, videoCodec.hashCode);
    _$hash = $jc(_$hash, videoFps.hashCode);
    _$hash = $jc(_$hash, videoDynamicRange.hashCode);
    _$hash = $jc(_$hash, videoDynamicRangeType.hashCode);
    _$hash = $jc(_$hash, resolution.hashCode);
    _$hash = $jc(_$hash, runTime.hashCode);
    _$hash = $jc(_$hash, scanType.hashCode);
    _$hash = $jc(_$hash, subtitles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaInfoResource')
          ..add('id', id)
          ..add('audioBitrate', audioBitrate)
          ..add('audioChannels', audioChannels)
          ..add('audioCodec', audioCodec)
          ..add('audioLanguages', audioLanguages)
          ..add('audioStreamCount', audioStreamCount)
          ..add('videoBitDepth', videoBitDepth)
          ..add('videoBitrate', videoBitrate)
          ..add('videoCodec', videoCodec)
          ..add('videoFps', videoFps)
          ..add('videoDynamicRange', videoDynamicRange)
          ..add('videoDynamicRangeType', videoDynamicRangeType)
          ..add('resolution', resolution)
          ..add('runTime', runTime)
          ..add('scanType', scanType)
          ..add('subtitles', subtitles))
        .toString();
  }
}

class MediaInfoResourceBuilder
    implements Builder<MediaInfoResource, MediaInfoResourceBuilder> {
  _$MediaInfoResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _audioBitrate;
  int? get audioBitrate => _$this._audioBitrate;
  set audioBitrate(int? audioBitrate) => _$this._audioBitrate = audioBitrate;

  double? _audioChannels;
  double? get audioChannels => _$this._audioChannels;
  set audioChannels(double? audioChannels) =>
      _$this._audioChannels = audioChannels;

  String? _audioCodec;
  String? get audioCodec => _$this._audioCodec;
  set audioCodec(String? audioCodec) => _$this._audioCodec = audioCodec;

  String? _audioLanguages;
  String? get audioLanguages => _$this._audioLanguages;
  set audioLanguages(String? audioLanguages) =>
      _$this._audioLanguages = audioLanguages;

  int? _audioStreamCount;
  int? get audioStreamCount => _$this._audioStreamCount;
  set audioStreamCount(int? audioStreamCount) =>
      _$this._audioStreamCount = audioStreamCount;

  int? _videoBitDepth;
  int? get videoBitDepth => _$this._videoBitDepth;
  set videoBitDepth(int? videoBitDepth) =>
      _$this._videoBitDepth = videoBitDepth;

  int? _videoBitrate;
  int? get videoBitrate => _$this._videoBitrate;
  set videoBitrate(int? videoBitrate) => _$this._videoBitrate = videoBitrate;

  String? _videoCodec;
  String? get videoCodec => _$this._videoCodec;
  set videoCodec(String? videoCodec) => _$this._videoCodec = videoCodec;

  double? _videoFps;
  double? get videoFps => _$this._videoFps;
  set videoFps(double? videoFps) => _$this._videoFps = videoFps;

  String? _videoDynamicRange;
  String? get videoDynamicRange => _$this._videoDynamicRange;
  set videoDynamicRange(String? videoDynamicRange) =>
      _$this._videoDynamicRange = videoDynamicRange;

  String? _videoDynamicRangeType;
  String? get videoDynamicRangeType => _$this._videoDynamicRangeType;
  set videoDynamicRangeType(String? videoDynamicRangeType) =>
      _$this._videoDynamicRangeType = videoDynamicRangeType;

  String? _resolution;
  String? get resolution => _$this._resolution;
  set resolution(String? resolution) => _$this._resolution = resolution;

  String? _runTime;
  String? get runTime => _$this._runTime;
  set runTime(String? runTime) => _$this._runTime = runTime;

  String? _scanType;
  String? get scanType => _$this._scanType;
  set scanType(String? scanType) => _$this._scanType = scanType;

  String? _subtitles;
  String? get subtitles => _$this._subtitles;
  set subtitles(String? subtitles) => _$this._subtitles = subtitles;

  MediaInfoResourceBuilder() {
    MediaInfoResource._defaults(this);
  }

  MediaInfoResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _audioBitrate = $v.audioBitrate;
      _audioChannels = $v.audioChannels;
      _audioCodec = $v.audioCodec;
      _audioLanguages = $v.audioLanguages;
      _audioStreamCount = $v.audioStreamCount;
      _videoBitDepth = $v.videoBitDepth;
      _videoBitrate = $v.videoBitrate;
      _videoCodec = $v.videoCodec;
      _videoFps = $v.videoFps;
      _videoDynamicRange = $v.videoDynamicRange;
      _videoDynamicRangeType = $v.videoDynamicRangeType;
      _resolution = $v.resolution;
      _runTime = $v.runTime;
      _scanType = $v.scanType;
      _subtitles = $v.subtitles;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaInfoResource other) {
    _$v = other as _$MediaInfoResource;
  }

  @override
  void update(void Function(MediaInfoResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaInfoResource build() => _build();

  _$MediaInfoResource _build() {
    final _$result = _$v ??
        _$MediaInfoResource._(
          id: id,
          audioBitrate: audioBitrate,
          audioChannels: audioChannels,
          audioCodec: audioCodec,
          audioLanguages: audioLanguages,
          audioStreamCount: audioStreamCount,
          videoBitDepth: videoBitDepth,
          videoBitrate: videoBitrate,
          videoCodec: videoCodec,
          videoFps: videoFps,
          videoDynamicRange: videoDynamicRange,
          videoDynamicRangeType: videoDynamicRangeType,
          resolution: resolution,
          runTime: runTime,
          scanType: scanType,
          subtitles: subtitles,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
