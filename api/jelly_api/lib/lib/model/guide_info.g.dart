// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GuideInfoCWProxy {
  GuideInfo startDate(DateTime? startDate);

  GuideInfo endDate(DateTime? endDate);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GuideInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GuideInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  GuideInfo call({DateTime? startDate, DateTime? endDate});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGuideInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGuideInfo.copyWith.fieldName(...)`
class _$GuideInfoCWProxyImpl implements _$GuideInfoCWProxy {
  const _$GuideInfoCWProxyImpl(this._value);

  final GuideInfo _value;

  @override
  GuideInfo startDate(DateTime? startDate) => this(startDate: startDate);

  @override
  GuideInfo endDate(DateTime? endDate) => this(endDate: endDate);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GuideInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GuideInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  GuideInfo call({
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
  }) {
    return GuideInfo(
      startDate: startDate == const $CopyWithPlaceholder()
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as DateTime?,
      endDate: endDate == const $CopyWithPlaceholder()
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as DateTime?,
    );
  }
}

extension $GuideInfoCopyWith on GuideInfo {
  /// Returns a callable class that can be used as follows: `instanceOfGuideInfo.copyWith(...)` or like so:`instanceOfGuideInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GuideInfoCWProxy get copyWith => _$GuideInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuideInfo _$GuideInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('GuideInfo', json, ($checkedConvert) {
      final val = GuideInfo(
        startDate: $checkedConvert(
          'StartDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        endDate: $checkedConvert(
          'EndDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    }, fieldKeyMap: const {'startDate': 'StartDate', 'endDate': 'EndDate'});

Map<String, dynamic> _$GuideInfoToJson(GuideInfo instance) => <String, dynamic>{
  'StartDate': ?instance.startDate?.toIso8601String(),
  'EndDate': ?instance.endDate?.toIso8601String(),
};
