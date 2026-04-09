// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_title_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SeriesTitleInfoCWProxy {
  SeriesTitleInfo title(String? title);

  SeriesTitleInfo titleWithoutYear(String? titleWithoutYear);

  SeriesTitleInfo year(int? year);

  SeriesTitleInfo allTitles(List<String>? allTitles);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeriesTitleInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeriesTitleInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  SeriesTitleInfo call({
    String? title,
    String? titleWithoutYear,
    int? year,
    List<String>? allTitles,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSeriesTitleInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSeriesTitleInfo.copyWith.fieldName(...)`
class _$SeriesTitleInfoCWProxyImpl implements _$SeriesTitleInfoCWProxy {
  const _$SeriesTitleInfoCWProxyImpl(this._value);

  final SeriesTitleInfo _value;

  @override
  SeriesTitleInfo title(String? title) => this(title: title);

  @override
  SeriesTitleInfo titleWithoutYear(String? titleWithoutYear) =>
      this(titleWithoutYear: titleWithoutYear);

  @override
  SeriesTitleInfo year(int? year) => this(year: year);

  @override
  SeriesTitleInfo allTitles(List<String>? allTitles) =>
      this(allTitles: allTitles);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SeriesTitleInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SeriesTitleInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  SeriesTitleInfo call({
    Object? title = const $CopyWithPlaceholder(),
    Object? titleWithoutYear = const $CopyWithPlaceholder(),
    Object? year = const $CopyWithPlaceholder(),
    Object? allTitles = const $CopyWithPlaceholder(),
  }) {
    return SeriesTitleInfo(
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      titleWithoutYear: titleWithoutYear == const $CopyWithPlaceholder()
          ? _value.titleWithoutYear
          // ignore: cast_nullable_to_non_nullable
          : titleWithoutYear as String?,
      year: year == const $CopyWithPlaceholder()
          ? _value.year
          // ignore: cast_nullable_to_non_nullable
          : year as int?,
      allTitles: allTitles == const $CopyWithPlaceholder()
          ? _value.allTitles
          // ignore: cast_nullable_to_non_nullable
          : allTitles as List<String>?,
    );
  }
}

extension $SeriesTitleInfoCopyWith on SeriesTitleInfo {
  /// Returns a callable class that can be used as follows: `instanceOfSeriesTitleInfo.copyWith(...)` or like so:`instanceOfSeriesTitleInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SeriesTitleInfoCWProxy get copyWith => _$SeriesTitleInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesTitleInfo _$SeriesTitleInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SeriesTitleInfo', json, ($checkedConvert) {
      final val = SeriesTitleInfo(
        title: $checkedConvert('title', (v) => v as String?),
        titleWithoutYear: $checkedConvert(
          'titleWithoutYear',
          (v) => v as String?,
        ),
        year: $checkedConvert('year', (v) => (v as num?)?.toInt()),
        allTitles: $checkedConvert(
          'allTitles',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SeriesTitleInfoToJson(SeriesTitleInfo instance) =>
    <String, dynamic>{
      'title': ?instance.title,
      'titleWithoutYear': ?instance.titleWithoutYear,
      'year': ?instance.year,
      'allTitles': ?instance.allTitles,
    };
