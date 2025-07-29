// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProviderMessage extends ProviderMessage {
  @override
  final String? message;
  @override
  final ProviderMessageType? type;

  factory _$ProviderMessage([void Function(ProviderMessageBuilder)? updates]) =>
      (ProviderMessageBuilder()..update(updates))._build();

  _$ProviderMessage._({this.message, this.type}) : super._();
  @override
  ProviderMessage rebuild(void Function(ProviderMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProviderMessageBuilder toBuilder() => ProviderMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProviderMessage &&
        message == other.message &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProviderMessage')
          ..add('message', message)
          ..add('type', type))
        .toString();
  }
}

class ProviderMessageBuilder
    implements Builder<ProviderMessage, ProviderMessageBuilder> {
  _$ProviderMessage? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ProviderMessageType? _type;
  ProviderMessageType? get type => _$this._type;
  set type(ProviderMessageType? type) => _$this._type = type;

  ProviderMessageBuilder() {
    ProviderMessage._defaults(this);
  }

  ProviderMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProviderMessage other) {
    _$v = other as _$ProviderMessage;
  }

  @override
  void update(void Function(ProviderMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProviderMessage build() => _build();

  _$ProviderMessage _build() {
    final _$result = _$v ??
        _$ProviderMessage._(
          message: message,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
