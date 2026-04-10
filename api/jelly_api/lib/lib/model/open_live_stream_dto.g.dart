// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_live_stream_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OpenLiveStreamDtoCWProxy {
  OpenLiveStreamDto openToken(String? openToken);

  OpenLiveStreamDto userId(String? userId);

  OpenLiveStreamDto playSessionId(String? playSessionId);

  OpenLiveStreamDto maxStreamingBitrate(int? maxStreamingBitrate);

  OpenLiveStreamDto startTimeTicks(int? startTimeTicks);

  OpenLiveStreamDto audioStreamIndex(int? audioStreamIndex);

  OpenLiveStreamDto subtitleStreamIndex(int? subtitleStreamIndex);

  OpenLiveStreamDto maxAudioChannels(int? maxAudioChannels);

  OpenLiveStreamDto itemId(String? itemId);

  OpenLiveStreamDto enableDirectPlay(bool? enableDirectPlay);

  OpenLiveStreamDto enableDirectStream(bool? enableDirectStream);

  OpenLiveStreamDto alwaysBurnInSubtitleWhenTranscoding(
    bool? alwaysBurnInSubtitleWhenTranscoding,
  );

  OpenLiveStreamDto deviceProfile(DeviceProfile? deviceProfile);

  OpenLiveStreamDto directPlayProtocols(
    List<MediaProtocol>? directPlayProtocols,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OpenLiveStreamDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OpenLiveStreamDto(...).copyWith(id: 12, name: "My name")
  /// ````
  OpenLiveStreamDto call({
    String? openToken,
    String? userId,
    String? playSessionId,
    int? maxStreamingBitrate,
    int? startTimeTicks,
    int? audioStreamIndex,
    int? subtitleStreamIndex,
    int? maxAudioChannels,
    String? itemId,
    bool? enableDirectPlay,
    bool? enableDirectStream,
    bool? alwaysBurnInSubtitleWhenTranscoding,
    DeviceProfile? deviceProfile,
    List<MediaProtocol>? directPlayProtocols,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOpenLiveStreamDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOpenLiveStreamDto.copyWith.fieldName(...)`
class _$OpenLiveStreamDtoCWProxyImpl implements _$OpenLiveStreamDtoCWProxy {
  const _$OpenLiveStreamDtoCWProxyImpl(this._value);

  final OpenLiveStreamDto _value;

  @override
  OpenLiveStreamDto openToken(String? openToken) => this(openToken: openToken);

  @override
  OpenLiveStreamDto userId(String? userId) => this(userId: userId);

  @override
  OpenLiveStreamDto playSessionId(String? playSessionId) =>
      this(playSessionId: playSessionId);

  @override
  OpenLiveStreamDto maxStreamingBitrate(int? maxStreamingBitrate) =>
      this(maxStreamingBitrate: maxStreamingBitrate);

  @override
  OpenLiveStreamDto startTimeTicks(int? startTimeTicks) =>
      this(startTimeTicks: startTimeTicks);

  @override
  OpenLiveStreamDto audioStreamIndex(int? audioStreamIndex) =>
      this(audioStreamIndex: audioStreamIndex);

  @override
  OpenLiveStreamDto subtitleStreamIndex(int? subtitleStreamIndex) =>
      this(subtitleStreamIndex: subtitleStreamIndex);

  @override
  OpenLiveStreamDto maxAudioChannels(int? maxAudioChannels) =>
      this(maxAudioChannels: maxAudioChannels);

  @override
  OpenLiveStreamDto itemId(String? itemId) => this(itemId: itemId);

  @override
  OpenLiveStreamDto enableDirectPlay(bool? enableDirectPlay) =>
      this(enableDirectPlay: enableDirectPlay);

  @override
  OpenLiveStreamDto enableDirectStream(bool? enableDirectStream) =>
      this(enableDirectStream: enableDirectStream);

  @override
  OpenLiveStreamDto alwaysBurnInSubtitleWhenTranscoding(
    bool? alwaysBurnInSubtitleWhenTranscoding,
  ) => this(
    alwaysBurnInSubtitleWhenTranscoding: alwaysBurnInSubtitleWhenTranscoding,
  );

  @override
  OpenLiveStreamDto deviceProfile(DeviceProfile? deviceProfile) =>
      this(deviceProfile: deviceProfile);

  @override
  OpenLiveStreamDto directPlayProtocols(
    List<MediaProtocol>? directPlayProtocols,
  ) => this(directPlayProtocols: directPlayProtocols);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OpenLiveStreamDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OpenLiveStreamDto(...).copyWith(id: 12, name: "My name")
  /// ````
  OpenLiveStreamDto call({
    Object? openToken = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? playSessionId = const $CopyWithPlaceholder(),
    Object? maxStreamingBitrate = const $CopyWithPlaceholder(),
    Object? startTimeTicks = const $CopyWithPlaceholder(),
    Object? audioStreamIndex = const $CopyWithPlaceholder(),
    Object? subtitleStreamIndex = const $CopyWithPlaceholder(),
    Object? maxAudioChannels = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? enableDirectPlay = const $CopyWithPlaceholder(),
    Object? enableDirectStream = const $CopyWithPlaceholder(),
    Object? alwaysBurnInSubtitleWhenTranscoding = const $CopyWithPlaceholder(),
    Object? deviceProfile = const $CopyWithPlaceholder(),
    Object? directPlayProtocols = const $CopyWithPlaceholder(),
  }) {
    return OpenLiveStreamDto(
      openToken: openToken == const $CopyWithPlaceholder()
          ? _value.openToken
          // ignore: cast_nullable_to_non_nullable
          : openToken as String?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      playSessionId: playSessionId == const $CopyWithPlaceholder()
          ? _value.playSessionId
          // ignore: cast_nullable_to_non_nullable
          : playSessionId as String?,
      maxStreamingBitrate: maxStreamingBitrate == const $CopyWithPlaceholder()
          ? _value.maxStreamingBitrate
          // ignore: cast_nullable_to_non_nullable
          : maxStreamingBitrate as int?,
      startTimeTicks: startTimeTicks == const $CopyWithPlaceholder()
          ? _value.startTimeTicks
          // ignore: cast_nullable_to_non_nullable
          : startTimeTicks as int?,
      audioStreamIndex: audioStreamIndex == const $CopyWithPlaceholder()
          ? _value.audioStreamIndex
          // ignore: cast_nullable_to_non_nullable
          : audioStreamIndex as int?,
      subtitleStreamIndex: subtitleStreamIndex == const $CopyWithPlaceholder()
          ? _value.subtitleStreamIndex
          // ignore: cast_nullable_to_non_nullable
          : subtitleStreamIndex as int?,
      maxAudioChannels: maxAudioChannels == const $CopyWithPlaceholder()
          ? _value.maxAudioChannels
          // ignore: cast_nullable_to_non_nullable
          : maxAudioChannels as int?,
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
      enableDirectPlay: enableDirectPlay == const $CopyWithPlaceholder()
          ? _value.enableDirectPlay
          // ignore: cast_nullable_to_non_nullable
          : enableDirectPlay as bool?,
      enableDirectStream: enableDirectStream == const $CopyWithPlaceholder()
          ? _value.enableDirectStream
          // ignore: cast_nullable_to_non_nullable
          : enableDirectStream as bool?,
      alwaysBurnInSubtitleWhenTranscoding:
          alwaysBurnInSubtitleWhenTranscoding == const $CopyWithPlaceholder()
          ? _value.alwaysBurnInSubtitleWhenTranscoding
          // ignore: cast_nullable_to_non_nullable
          : alwaysBurnInSubtitleWhenTranscoding as bool?,
      deviceProfile: deviceProfile == const $CopyWithPlaceholder()
          ? _value.deviceProfile
          // ignore: cast_nullable_to_non_nullable
          : deviceProfile as DeviceProfile?,
      directPlayProtocols: directPlayProtocols == const $CopyWithPlaceholder()
          ? _value.directPlayProtocols
          // ignore: cast_nullable_to_non_nullable
          : directPlayProtocols as List<MediaProtocol>?,
    );
  }
}

extension $OpenLiveStreamDtoCopyWith on OpenLiveStreamDto {
  /// Returns a callable class that can be used as follows: `instanceOfOpenLiveStreamDto.copyWith(...)` or like so:`instanceOfOpenLiveStreamDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OpenLiveStreamDtoCWProxy get copyWith =>
      _$OpenLiveStreamDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenLiveStreamDto _$OpenLiveStreamDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OpenLiveStreamDto',
      json,
      ($checkedConvert) {
        final val = OpenLiveStreamDto(
          openToken: $checkedConvert('OpenToken', (v) => v as String?),
          userId: $checkedConvert('UserId', (v) => v as String?),
          playSessionId: $checkedConvert('PlaySessionId', (v) => v as String?),
          maxStreamingBitrate: $checkedConvert(
            'MaxStreamingBitrate',
            (v) => (v as num?)?.toInt(),
          ),
          startTimeTicks: $checkedConvert(
            'StartTimeTicks',
            (v) => (v as num?)?.toInt(),
          ),
          audioStreamIndex: $checkedConvert(
            'AudioStreamIndex',
            (v) => (v as num?)?.toInt(),
          ),
          subtitleStreamIndex: $checkedConvert(
            'SubtitleStreamIndex',
            (v) => (v as num?)?.toInt(),
          ),
          maxAudioChannels: $checkedConvert(
            'MaxAudioChannels',
            (v) => (v as num?)?.toInt(),
          ),
          itemId: $checkedConvert('ItemId', (v) => v as String?),
          enableDirectPlay: $checkedConvert(
            'EnableDirectPlay',
            (v) => v as bool?,
          ),
          enableDirectStream: $checkedConvert(
            'EnableDirectStream',
            (v) => v as bool?,
          ),
          alwaysBurnInSubtitleWhenTranscoding: $checkedConvert(
            'AlwaysBurnInSubtitleWhenTranscoding',
            (v) => v as bool?,
          ),
          deviceProfile: $checkedConvert(
            'DeviceProfile',
            (v) => v == null
                ? null
                : DeviceProfile.fromJson(v as Map<String, dynamic>),
          ),
          directPlayProtocols: $checkedConvert(
            'DirectPlayProtocols',
            (v) => (v as List<dynamic>?)
                ?.map((e) => $enumDecode(_$MediaProtocolEnumMap, e))
                .toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'openToken': 'OpenToken',
        'userId': 'UserId',
        'playSessionId': 'PlaySessionId',
        'maxStreamingBitrate': 'MaxStreamingBitrate',
        'startTimeTicks': 'StartTimeTicks',
        'audioStreamIndex': 'AudioStreamIndex',
        'subtitleStreamIndex': 'SubtitleStreamIndex',
        'maxAudioChannels': 'MaxAudioChannels',
        'itemId': 'ItemId',
        'enableDirectPlay': 'EnableDirectPlay',
        'enableDirectStream': 'EnableDirectStream',
        'alwaysBurnInSubtitleWhenTranscoding':
            'AlwaysBurnInSubtitleWhenTranscoding',
        'deviceProfile': 'DeviceProfile',
        'directPlayProtocols': 'DirectPlayProtocols',
      },
    );

Map<String, dynamic> _$OpenLiveStreamDtoToJson(OpenLiveStreamDto instance) =>
    <String, dynamic>{
      'OpenToken': ?instance.openToken,
      'UserId': ?instance.userId,
      'PlaySessionId': ?instance.playSessionId,
      'MaxStreamingBitrate': ?instance.maxStreamingBitrate,
      'StartTimeTicks': ?instance.startTimeTicks,
      'AudioStreamIndex': ?instance.audioStreamIndex,
      'SubtitleStreamIndex': ?instance.subtitleStreamIndex,
      'MaxAudioChannels': ?instance.maxAudioChannels,
      'ItemId': ?instance.itemId,
      'EnableDirectPlay': ?instance.enableDirectPlay,
      'EnableDirectStream': ?instance.enableDirectStream,
      'AlwaysBurnInSubtitleWhenTranscoding':
          ?instance.alwaysBurnInSubtitleWhenTranscoding,
      'DeviceProfile': ?instance.deviceProfile?.toJson(),
      'DirectPlayProtocols': ?instance.directPlayProtocols
          ?.map((e) => _$MediaProtocolEnumMap[e]!)
          .toList(),
    };

const _$MediaProtocolEnumMap = {
  MediaProtocol.file: 'File',
  MediaProtocol.http: 'Http',
  MediaProtocol.rtmp: 'Rtmp',
  MediaProtocol.rtsp: 'Rtsp',
  MediaProtocol.udp: 'Udp',
  MediaProtocol.rtp: 'Rtp',
  MediaProtocol.ftp: 'Ftp',
};
