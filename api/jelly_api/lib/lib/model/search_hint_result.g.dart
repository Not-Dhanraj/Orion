// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_hint_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SearchHintResultCWProxy {
  SearchHintResult searchHints(List<SearchHint>? searchHints);

  SearchHintResult totalRecordCount(int? totalRecordCount);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SearchHintResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SearchHintResult(...).copyWith(id: 12, name: "My name")
  /// ````
  SearchHintResult call({List<SearchHint>? searchHints, int? totalRecordCount});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSearchHintResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSearchHintResult.copyWith.fieldName(...)`
class _$SearchHintResultCWProxyImpl implements _$SearchHintResultCWProxy {
  const _$SearchHintResultCWProxyImpl(this._value);

  final SearchHintResult _value;

  @override
  SearchHintResult searchHints(List<SearchHint>? searchHints) =>
      this(searchHints: searchHints);

  @override
  SearchHintResult totalRecordCount(int? totalRecordCount) =>
      this(totalRecordCount: totalRecordCount);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SearchHintResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SearchHintResult(...).copyWith(id: 12, name: "My name")
  /// ````
  SearchHintResult call({
    Object? searchHints = const $CopyWithPlaceholder(),
    Object? totalRecordCount = const $CopyWithPlaceholder(),
  }) {
    return SearchHintResult(
      searchHints: searchHints == const $CopyWithPlaceholder()
          ? _value.searchHints
          // ignore: cast_nullable_to_non_nullable
          : searchHints as List<SearchHint>?,
      totalRecordCount: totalRecordCount == const $CopyWithPlaceholder()
          ? _value.totalRecordCount
          // ignore: cast_nullable_to_non_nullable
          : totalRecordCount as int?,
    );
  }
}

extension $SearchHintResultCopyWith on SearchHintResult {
  /// Returns a callable class that can be used as follows: `instanceOfSearchHintResult.copyWith(...)` or like so:`instanceOfSearchHintResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SearchHintResultCWProxy get copyWith => _$SearchHintResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchHintResult _$SearchHintResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SearchHintResult',
      json,
      ($checkedConvert) {
        final val = SearchHintResult(
          searchHints: $checkedConvert(
            'SearchHints',
            (v) => (v as List<dynamic>?)
                ?.map((e) => SearchHint.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
          totalRecordCount: $checkedConvert(
            'TotalRecordCount',
            (v) => (v as num?)?.toInt(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'searchHints': 'SearchHints',
        'totalRecordCount': 'TotalRecordCount',
      },
    );

Map<String, dynamic> _$SearchHintResultToJson(SearchHintResult instance) =>
    <String, dynamic>{
      'SearchHints': ?instance.searchHints?.map((e) => e.toJson()).toList(),
      'TotalRecordCount': ?instance.totalRecordCount,
    };
