// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_theme_media_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AllThemeMediaResultCWProxy {
  AllThemeMediaResult themeVideosResult(ThemeMediaResult? themeVideosResult);

  AllThemeMediaResult themeSongsResult(ThemeMediaResult? themeSongsResult);

  AllThemeMediaResult soundtrackSongsResult(
    ThemeMediaResult? soundtrackSongsResult,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AllThemeMediaResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AllThemeMediaResult(...).copyWith(id: 12, name: "My name")
  /// ````
  AllThemeMediaResult call({
    ThemeMediaResult? themeVideosResult,
    ThemeMediaResult? themeSongsResult,
    ThemeMediaResult? soundtrackSongsResult,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAllThemeMediaResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAllThemeMediaResult.copyWith.fieldName(...)`
class _$AllThemeMediaResultCWProxyImpl implements _$AllThemeMediaResultCWProxy {
  const _$AllThemeMediaResultCWProxyImpl(this._value);

  final AllThemeMediaResult _value;

  @override
  AllThemeMediaResult themeVideosResult(ThemeMediaResult? themeVideosResult) =>
      this(themeVideosResult: themeVideosResult);

  @override
  AllThemeMediaResult themeSongsResult(ThemeMediaResult? themeSongsResult) =>
      this(themeSongsResult: themeSongsResult);

  @override
  AllThemeMediaResult soundtrackSongsResult(
    ThemeMediaResult? soundtrackSongsResult,
  ) => this(soundtrackSongsResult: soundtrackSongsResult);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AllThemeMediaResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AllThemeMediaResult(...).copyWith(id: 12, name: "My name")
  /// ````
  AllThemeMediaResult call({
    Object? themeVideosResult = const $CopyWithPlaceholder(),
    Object? themeSongsResult = const $CopyWithPlaceholder(),
    Object? soundtrackSongsResult = const $CopyWithPlaceholder(),
  }) {
    return AllThemeMediaResult(
      themeVideosResult: themeVideosResult == const $CopyWithPlaceholder()
          ? _value.themeVideosResult
          // ignore: cast_nullable_to_non_nullable
          : themeVideosResult as ThemeMediaResult?,
      themeSongsResult: themeSongsResult == const $CopyWithPlaceholder()
          ? _value.themeSongsResult
          // ignore: cast_nullable_to_non_nullable
          : themeSongsResult as ThemeMediaResult?,
      soundtrackSongsResult:
          soundtrackSongsResult == const $CopyWithPlaceholder()
          ? _value.soundtrackSongsResult
          // ignore: cast_nullable_to_non_nullable
          : soundtrackSongsResult as ThemeMediaResult?,
    );
  }
}

extension $AllThemeMediaResultCopyWith on AllThemeMediaResult {
  /// Returns a callable class that can be used as follows: `instanceOfAllThemeMediaResult.copyWith(...)` or like so:`instanceOfAllThemeMediaResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AllThemeMediaResultCWProxy get copyWith =>
      _$AllThemeMediaResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllThemeMediaResult _$AllThemeMediaResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AllThemeMediaResult',
      json,
      ($checkedConvert) {
        final val = AllThemeMediaResult(
          themeVideosResult: $checkedConvert(
            'ThemeVideosResult',
            (v) => v == null
                ? null
                : ThemeMediaResult.fromJson(v as Map<String, dynamic>),
          ),
          themeSongsResult: $checkedConvert(
            'ThemeSongsResult',
            (v) => v == null
                ? null
                : ThemeMediaResult.fromJson(v as Map<String, dynamic>),
          ),
          soundtrackSongsResult: $checkedConvert(
            'SoundtrackSongsResult',
            (v) => v == null
                ? null
                : ThemeMediaResult.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'themeVideosResult': 'ThemeVideosResult',
        'themeSongsResult': 'ThemeSongsResult',
        'soundtrackSongsResult': 'SoundtrackSongsResult',
      },
    );

Map<String, dynamic> _$AllThemeMediaResultToJson(
  AllThemeMediaResult instance,
) => <String, dynamic>{
  'ThemeVideosResult': ?instance.themeVideosResult?.toJson(),
  'ThemeSongsResult': ?instance.themeSongsResult?.toJson(),
  'SoundtrackSongsResult': ?instance.soundtrackSongsResult?.toJson(),
};
