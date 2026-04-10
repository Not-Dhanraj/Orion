// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_details.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProblemDetailsCWProxy {
  ProblemDetails type(String? type);

  ProblemDetails title(String? title);

  ProblemDetails status(int? status);

  ProblemDetails detail(String? detail);

  ProblemDetails instance(String? instance);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProblemDetails(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProblemDetails(...).copyWith(id: 12, name: "My name")
  /// ````
  ProblemDetails call({
    String? type,
    String? title,
    int? status,
    String? detail,
    String? instance,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProblemDetails.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProblemDetails.copyWith.fieldName(...)`
class _$ProblemDetailsCWProxyImpl implements _$ProblemDetailsCWProxy {
  const _$ProblemDetailsCWProxyImpl(this._value);

  final ProblemDetails _value;

  @override
  ProblemDetails type(String? type) => this(type: type);

  @override
  ProblemDetails title(String? title) => this(title: title);

  @override
  ProblemDetails status(int? status) => this(status: status);

  @override
  ProblemDetails detail(String? detail) => this(detail: detail);

  @override
  ProblemDetails instance(String? instance) => this(instance: instance);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProblemDetails(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProblemDetails(...).copyWith(id: 12, name: "My name")
  /// ````
  ProblemDetails call({
    Object? type = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? instance = const $CopyWithPlaceholder(),
  }) {
    return ProblemDetails(
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as int?,
      detail: detail == const $CopyWithPlaceholder()
          ? _value.detail
          // ignore: cast_nullable_to_non_nullable
          : detail as String?,
      instance: instance == const $CopyWithPlaceholder()
          ? _value.instance
          // ignore: cast_nullable_to_non_nullable
          : instance as String?,
    );
  }
}

extension $ProblemDetailsCopyWith on ProblemDetails {
  /// Returns a callable class that can be used as follows: `instanceOfProblemDetails.copyWith(...)` or like so:`instanceOfProblemDetails.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProblemDetailsCWProxy get copyWith => _$ProblemDetailsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProblemDetails', json, ($checkedConvert) {
      final val = ProblemDetails(
        type: $checkedConvert('type', (v) => v as String?),
        title: $checkedConvert('title', (v) => v as String?),
        status: $checkedConvert('status', (v) => (v as num?)?.toInt()),
        detail: $checkedConvert('detail', (v) => v as String?),
        instance: $checkedConvert('instance', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ProblemDetailsToJson(ProblemDetails instance) =>
    <String, dynamic>{
      'type': ?instance.type,
      'title': ?instance.title,
      'status': ?instance.status,
      'detail': ?instance.detail,
      'instance': ?instance.instance,
    };
