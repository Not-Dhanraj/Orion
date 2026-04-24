// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyric_line_cue.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LyricLineCueCWProxy {
  LyricLineCue position(int? position);

  LyricLineCue endPosition(int? endPosition);

  LyricLineCue start(int? start);

  LyricLineCue end(int? end);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LyricLineCue(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LyricLineCue(...).copyWith(id: 12, name: "My name")
  /// ````
  LyricLineCue call({int? position, int? endPosition, int? start, int? end});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLyricLineCue.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLyricLineCue.copyWith.fieldName(...)`
class _$LyricLineCueCWProxyImpl implements _$LyricLineCueCWProxy {
  const _$LyricLineCueCWProxyImpl(this._value);

  final LyricLineCue _value;

  @override
  LyricLineCue position(int? position) => this(position: position);

  @override
  LyricLineCue endPosition(int? endPosition) => this(endPosition: endPosition);

  @override
  LyricLineCue start(int? start) => this(start: start);

  @override
  LyricLineCue end(int? end) => this(end: end);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LyricLineCue(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LyricLineCue(...).copyWith(id: 12, name: "My name")
  /// ````
  LyricLineCue call({
    Object? position = const $CopyWithPlaceholder(),
    Object? endPosition = const $CopyWithPlaceholder(),
    Object? start = const $CopyWithPlaceholder(),
    Object? end = const $CopyWithPlaceholder(),
  }) {
    return LyricLineCue(
      position: position == const $CopyWithPlaceholder()
          ? _value.position
          // ignore: cast_nullable_to_non_nullable
          : position as int?,
      endPosition: endPosition == const $CopyWithPlaceholder()
          ? _value.endPosition
          // ignore: cast_nullable_to_non_nullable
          : endPosition as int?,
      start: start == const $CopyWithPlaceholder()
          ? _value.start
          // ignore: cast_nullable_to_non_nullable
          : start as int?,
      end: end == const $CopyWithPlaceholder()
          ? _value.end
          // ignore: cast_nullable_to_non_nullable
          : end as int?,
    );
  }
}

extension $LyricLineCueCopyWith on LyricLineCue {
  /// Returns a callable class that can be used as follows: `instanceOfLyricLineCue.copyWith(...)` or like so:`instanceOfLyricLineCue.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LyricLineCueCWProxy get copyWith => _$LyricLineCueCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LyricLineCue _$LyricLineCueFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LyricLineCue',
      json,
      ($checkedConvert) {
        final val = LyricLineCue(
          position: $checkedConvert('Position', (v) => (v as num?)?.toInt()),
          endPosition: $checkedConvert(
            'EndPosition',
            (v) => (v as num?)?.toInt(),
          ),
          start: $checkedConvert('Start', (v) => (v as num?)?.toInt()),
          end: $checkedConvert('End', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'position': 'Position',
        'endPosition': 'EndPosition',
        'start': 'Start',
        'end': 'End',
      },
    );

Map<String, dynamic> _$LyricLineCueToJson(LyricLineCue instance) =>
    <String, dynamic>{
      'Position': ?instance.position,
      'EndPosition': ?instance.endPosition,
      'Start': ?instance.start,
      'End': ?instance.end,
    };
