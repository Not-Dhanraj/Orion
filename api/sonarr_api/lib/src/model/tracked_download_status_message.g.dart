// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracked_download_status_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackedDownloadStatusMessage extends TrackedDownloadStatusMessage {
  @override
  final String? title;
  @override
  final BuiltList<String>? messages;

  factory _$TrackedDownloadStatusMessage(
          [void Function(TrackedDownloadStatusMessageBuilder)? updates]) =>
      (TrackedDownloadStatusMessageBuilder()..update(updates))._build();

  _$TrackedDownloadStatusMessage._({this.title, this.messages}) : super._();
  @override
  TrackedDownloadStatusMessage rebuild(
          void Function(TrackedDownloadStatusMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackedDownloadStatusMessageBuilder toBuilder() =>
      TrackedDownloadStatusMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackedDownloadStatusMessage &&
        title == other.title &&
        messages == other.messages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackedDownloadStatusMessage')
          ..add('title', title)
          ..add('messages', messages))
        .toString();
  }
}

class TrackedDownloadStatusMessageBuilder
    implements
        Builder<TrackedDownloadStatusMessage,
            TrackedDownloadStatusMessageBuilder> {
  _$TrackedDownloadStatusMessage? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<String>? _messages;
  ListBuilder<String> get messages =>
      _$this._messages ??= ListBuilder<String>();
  set messages(ListBuilder<String>? messages) => _$this._messages = messages;

  TrackedDownloadStatusMessageBuilder() {
    TrackedDownloadStatusMessage._defaults(this);
  }

  TrackedDownloadStatusMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _messages = $v.messages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackedDownloadStatusMessage other) {
    _$v = other as _$TrackedDownloadStatusMessage;
  }

  @override
  void update(void Function(TrackedDownloadStatusMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackedDownloadStatusMessage build() => _build();

  _$TrackedDownloadStatusMessage _build() {
    _$TrackedDownloadStatusMessage _$result;
    try {
      _$result = _$v ??
          _$TrackedDownloadStatusMessage._(
            title: title,
            messages: _messages?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        _messages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TrackedDownloadStatusMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
