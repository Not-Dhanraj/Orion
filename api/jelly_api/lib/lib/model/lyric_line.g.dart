// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyric_line.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LyricLineCWProxy {
  LyricLine text(String? text);

  LyricLine start(int? start);

  LyricLine cues(List<LyricLineCue>? cues);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LyricLine(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LyricLine(...).copyWith(id: 12, name: "My name")
  /// ````
  LyricLine call({String? text, int? start, List<LyricLineCue>? cues});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLyricLine.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLyricLine.copyWith.fieldName(...)`
class _$LyricLineCWProxyImpl implements _$LyricLineCWProxy {
  const _$LyricLineCWProxyImpl(this._value);

  final LyricLine _value;

  @override
  LyricLine text(String? text) => this(text: text);

  @override
  LyricLine start(int? start) => this(start: start);

  @override
  LyricLine cues(List<LyricLineCue>? cues) => this(cues: cues);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LyricLine(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LyricLine(...).copyWith(id: 12, name: "My name")
  /// ````
  LyricLine call({
    Object? text = const $CopyWithPlaceholder(),
    Object? start = const $CopyWithPlaceholder(),
    Object? cues = const $CopyWithPlaceholder(),
  }) {
    return LyricLine(
      text: text == const $CopyWithPlaceholder()
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as String?,
      start: start == const $CopyWithPlaceholder()
          ? _value.start
          // ignore: cast_nullable_to_non_nullable
          : start as int?,
      cues: cues == const $CopyWithPlaceholder()
          ? _value.cues
          // ignore: cast_nullable_to_non_nullable
          : cues as List<LyricLineCue>?,
    );
  }
}

extension $LyricLineCopyWith on LyricLine {
  /// Returns a callable class that can be used as follows: `instanceOfLyricLine.copyWith(...)` or like so:`instanceOfLyricLine.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LyricLineCWProxy get copyWith => _$LyricLineCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LyricLine _$LyricLineFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LyricLine', json, ($checkedConvert) {
      final val = LyricLine(
        text: $checkedConvert('Text', (v) => v as String?),
        start: $checkedConvert('Start', (v) => (v as num?)?.toInt()),
        cues: $checkedConvert(
          'Cues',
          (v) => (v as List<dynamic>?)
              ?.map((e) => LyricLineCue.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'text': 'Text', 'start': 'Start', 'cues': 'Cues'});

Map<String, dynamic> _$LyricLineToJson(LyricLine instance) => <String, dynamic>{
  'Text': ?instance.text,
  'Start': ?instance.start,
  'Cues': ?instance.cues?.map((e) => e.toJson()).toList(),
};
