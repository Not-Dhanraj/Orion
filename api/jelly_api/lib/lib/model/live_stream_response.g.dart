// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_stream_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LiveStreamResponseCWProxy {
  LiveStreamResponse mediaSource(MediaSourceInfo? mediaSource);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveStreamResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveStreamResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveStreamResponse call({MediaSourceInfo? mediaSource});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLiveStreamResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLiveStreamResponse.copyWith.fieldName(...)`
class _$LiveStreamResponseCWProxyImpl implements _$LiveStreamResponseCWProxy {
  const _$LiveStreamResponseCWProxyImpl(this._value);

  final LiveStreamResponse _value;

  @override
  LiveStreamResponse mediaSource(MediaSourceInfo? mediaSource) =>
      this(mediaSource: mediaSource);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LiveStreamResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LiveStreamResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  LiveStreamResponse call({
    Object? mediaSource = const $CopyWithPlaceholder(),
  }) {
    return LiveStreamResponse(
      mediaSource: mediaSource == const $CopyWithPlaceholder()
          ? _value.mediaSource
          // ignore: cast_nullable_to_non_nullable
          : mediaSource as MediaSourceInfo?,
    );
  }
}

extension $LiveStreamResponseCopyWith on LiveStreamResponse {
  /// Returns a callable class that can be used as follows: `instanceOfLiveStreamResponse.copyWith(...)` or like so:`instanceOfLiveStreamResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LiveStreamResponseCWProxy get copyWith =>
      _$LiveStreamResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveStreamResponse _$LiveStreamResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LiveStreamResponse', json, ($checkedConvert) {
      final val = LiveStreamResponse(
        mediaSource: $checkedConvert(
          'MediaSource',
          (v) => v == null
              ? null
              : MediaSourceInfo.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    }, fieldKeyMap: const {'mediaSource': 'MediaSource'});

Map<String, dynamic> _$LiveStreamResponseToJson(LiveStreamResponse instance) =>
    <String, dynamic>{'MediaSource': ?instance.mediaSource?.toJson()};
