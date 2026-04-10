// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_command.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MessageCommandCWProxy {
  MessageCommand header(String? header);

  MessageCommand text(String text);

  MessageCommand timeoutMs(int? timeoutMs);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MessageCommand(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MessageCommand(...).copyWith(id: 12, name: "My name")
  /// ````
  MessageCommand call({String? header, String text, int? timeoutMs});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMessageCommand.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMessageCommand.copyWith.fieldName(...)`
class _$MessageCommandCWProxyImpl implements _$MessageCommandCWProxy {
  const _$MessageCommandCWProxyImpl(this._value);

  final MessageCommand _value;

  @override
  MessageCommand header(String? header) => this(header: header);

  @override
  MessageCommand text(String text) => this(text: text);

  @override
  MessageCommand timeoutMs(int? timeoutMs) => this(timeoutMs: timeoutMs);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MessageCommand(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MessageCommand(...).copyWith(id: 12, name: "My name")
  /// ````
  MessageCommand call({
    Object? header = const $CopyWithPlaceholder(),
    Object? text = const $CopyWithPlaceholder(),
    Object? timeoutMs = const $CopyWithPlaceholder(),
  }) {
    return MessageCommand(
      header: header == const $CopyWithPlaceholder()
          ? _value.header
          // ignore: cast_nullable_to_non_nullable
          : header as String?,
      text: text == const $CopyWithPlaceholder()
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as String,
      timeoutMs: timeoutMs == const $CopyWithPlaceholder()
          ? _value.timeoutMs
          // ignore: cast_nullable_to_non_nullable
          : timeoutMs as int?,
    );
  }
}

extension $MessageCommandCopyWith on MessageCommand {
  /// Returns a callable class that can be used as follows: `instanceOfMessageCommand.copyWith(...)` or like so:`instanceOfMessageCommand.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MessageCommandCWProxy get copyWith => _$MessageCommandCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageCommand _$MessageCommandFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MessageCommand',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['Text']);
        final val = MessageCommand(
          header: $checkedConvert('Header', (v) => v as String?),
          text: $checkedConvert('Text', (v) => v as String),
          timeoutMs: $checkedConvert('TimeoutMs', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'header': 'Header',
        'text': 'Text',
        'timeoutMs': 'TimeoutMs',
      },
    );

Map<String, dynamic> _$MessageCommandToJson(MessageCommand instance) =>
    <String, dynamic>{
      'Header': ?instance.header,
      'Text': instance.text,
      'TimeoutMs': ?instance.timeoutMs,
    };
