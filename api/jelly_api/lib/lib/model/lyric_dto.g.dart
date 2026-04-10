// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyric_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LyricDtoCWProxy {
  LyricDto metadata(LyricMetadata? metadata);

  LyricDto lyrics(List<LyricLine>? lyrics);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LyricDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LyricDto(...).copyWith(id: 12, name: "My name")
  /// ````
  LyricDto call({LyricMetadata? metadata, List<LyricLine>? lyrics});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLyricDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLyricDto.copyWith.fieldName(...)`
class _$LyricDtoCWProxyImpl implements _$LyricDtoCWProxy {
  const _$LyricDtoCWProxyImpl(this._value);

  final LyricDto _value;

  @override
  LyricDto metadata(LyricMetadata? metadata) => this(metadata: metadata);

  @override
  LyricDto lyrics(List<LyricLine>? lyrics) => this(lyrics: lyrics);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LyricDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LyricDto(...).copyWith(id: 12, name: "My name")
  /// ````
  LyricDto call({
    Object? metadata = const $CopyWithPlaceholder(),
    Object? lyrics = const $CopyWithPlaceholder(),
  }) {
    return LyricDto(
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as LyricMetadata?,
      lyrics: lyrics == const $CopyWithPlaceholder()
          ? _value.lyrics
          // ignore: cast_nullable_to_non_nullable
          : lyrics as List<LyricLine>?,
    );
  }
}

extension $LyricDtoCopyWith on LyricDto {
  /// Returns a callable class that can be used as follows: `instanceOfLyricDto.copyWith(...)` or like so:`instanceOfLyricDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LyricDtoCWProxy get copyWith => _$LyricDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LyricDto _$LyricDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LyricDto', json, ($checkedConvert) {
      final val = LyricDto(
        metadata: $checkedConvert(
          'Metadata',
          (v) => v == null
              ? null
              : LyricMetadata.fromJson(v as Map<String, dynamic>),
        ),
        lyrics: $checkedConvert(
          'Lyrics',
          (v) => (v as List<dynamic>?)
              ?.map((e) => LyricLine.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'metadata': 'Metadata', 'lyrics': 'Lyrics'});

Map<String, dynamic> _$LyricDtoToJson(LyricDto instance) => <String, dynamic>{
  'Metadata': ?instance.metadata?.toJson(),
  'Lyrics': ?instance.lyrics?.map((e) => e.toJson()).toList(),
};
