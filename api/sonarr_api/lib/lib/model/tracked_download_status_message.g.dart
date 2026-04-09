// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracked_download_status_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TrackedDownloadStatusMessageCWProxy {
  TrackedDownloadStatusMessage title(String? title);

  TrackedDownloadStatusMessage messages(List<String>? messages);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TrackedDownloadStatusMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TrackedDownloadStatusMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  TrackedDownloadStatusMessage call({String? title, List<String>? messages});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTrackedDownloadStatusMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTrackedDownloadStatusMessage.copyWith.fieldName(...)`
class _$TrackedDownloadStatusMessageCWProxyImpl
    implements _$TrackedDownloadStatusMessageCWProxy {
  const _$TrackedDownloadStatusMessageCWProxyImpl(this._value);

  final TrackedDownloadStatusMessage _value;

  @override
  TrackedDownloadStatusMessage title(String? title) => this(title: title);

  @override
  TrackedDownloadStatusMessage messages(List<String>? messages) =>
      this(messages: messages);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TrackedDownloadStatusMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TrackedDownloadStatusMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  TrackedDownloadStatusMessage call({
    Object? title = const $CopyWithPlaceholder(),
    Object? messages = const $CopyWithPlaceholder(),
  }) {
    return TrackedDownloadStatusMessage(
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      messages: messages == const $CopyWithPlaceholder()
          ? _value.messages
          // ignore: cast_nullable_to_non_nullable
          : messages as List<String>?,
    );
  }
}

extension $TrackedDownloadStatusMessageCopyWith
    on TrackedDownloadStatusMessage {
  /// Returns a callable class that can be used as follows: `instanceOfTrackedDownloadStatusMessage.copyWith(...)` or like so:`instanceOfTrackedDownloadStatusMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TrackedDownloadStatusMessageCWProxy get copyWith =>
      _$TrackedDownloadStatusMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackedDownloadStatusMessage _$TrackedDownloadStatusMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TrackedDownloadStatusMessage', json, ($checkedConvert) {
  final val = TrackedDownloadStatusMessage(
    title: $checkedConvert('title', (v) => v as String?),
    messages: $checkedConvert(
      'messages',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$TrackedDownloadStatusMessageToJson(
  TrackedDownloadStatusMessage instance,
) => <String, dynamic>{
  'title': ?instance.title,
  'messages': ?instance.messages,
};
