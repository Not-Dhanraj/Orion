// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_info_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaybackInfoResponseCWProxy {
  PlaybackInfoResponse mediaSources(List<MediaSourceInfo>? mediaSources);

  PlaybackInfoResponse playSessionId(String? playSessionId);

  PlaybackInfoResponse errorCode(PlaybackErrorCode? errorCode);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaybackInfoResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaybackInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaybackInfoResponse call({
    List<MediaSourceInfo>? mediaSources,
    String? playSessionId,
    PlaybackErrorCode? errorCode,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlaybackInfoResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlaybackInfoResponse.copyWith.fieldName(...)`
class _$PlaybackInfoResponseCWProxyImpl
    implements _$PlaybackInfoResponseCWProxy {
  const _$PlaybackInfoResponseCWProxyImpl(this._value);

  final PlaybackInfoResponse _value;

  @override
  PlaybackInfoResponse mediaSources(List<MediaSourceInfo>? mediaSources) =>
      this(mediaSources: mediaSources);

  @override
  PlaybackInfoResponse playSessionId(String? playSessionId) =>
      this(playSessionId: playSessionId);

  @override
  PlaybackInfoResponse errorCode(PlaybackErrorCode? errorCode) =>
      this(errorCode: errorCode);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PlaybackInfoResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PlaybackInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PlaybackInfoResponse call({
    Object? mediaSources = const $CopyWithPlaceholder(),
    Object? playSessionId = const $CopyWithPlaceholder(),
    Object? errorCode = const $CopyWithPlaceholder(),
  }) {
    return PlaybackInfoResponse(
      mediaSources: mediaSources == const $CopyWithPlaceholder()
          ? _value.mediaSources
          // ignore: cast_nullable_to_non_nullable
          : mediaSources as List<MediaSourceInfo>?,
      playSessionId: playSessionId == const $CopyWithPlaceholder()
          ? _value.playSessionId
          // ignore: cast_nullable_to_non_nullable
          : playSessionId as String?,
      errorCode: errorCode == const $CopyWithPlaceholder()
          ? _value.errorCode
          // ignore: cast_nullable_to_non_nullable
          : errorCode as PlaybackErrorCode?,
    );
  }
}

extension $PlaybackInfoResponseCopyWith on PlaybackInfoResponse {
  /// Returns a callable class that can be used as follows: `instanceOfPlaybackInfoResponse.copyWith(...)` or like so:`instanceOfPlaybackInfoResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PlaybackInfoResponseCWProxy get copyWith =>
      _$PlaybackInfoResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaybackInfoResponse _$PlaybackInfoResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PlaybackInfoResponse',
  json,
  ($checkedConvert) {
    final val = PlaybackInfoResponse(
      mediaSources: $checkedConvert(
        'MediaSources',
        (v) => (v as List<dynamic>?)
            ?.map((e) => MediaSourceInfo.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      playSessionId: $checkedConvert('PlaySessionId', (v) => v as String?),
      errorCode: $checkedConvert(
        'ErrorCode',
        (v) => $enumDecodeNullable(_$PlaybackErrorCodeEnumMap, v),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'mediaSources': 'MediaSources',
    'playSessionId': 'PlaySessionId',
    'errorCode': 'ErrorCode',
  },
);

Map<String, dynamic> _$PlaybackInfoResponseToJson(
  PlaybackInfoResponse instance,
) => <String, dynamic>{
  'MediaSources': ?instance.mediaSources?.map((e) => e.toJson()).toList(),
  'PlaySessionId': ?instance.playSessionId,
  'ErrorCode': ?_$PlaybackErrorCodeEnumMap[instance.errorCode],
};

const _$PlaybackErrorCodeEnumMap = {
  PlaybackErrorCode.notAllowed: 'NotAllowed',
  PlaybackErrorCode.noCompatibleStream: 'NoCompatibleStream',
  PlaybackErrorCode.rateLimitExceeded: 'RateLimitExceeded',
};
