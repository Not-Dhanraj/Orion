// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_profile_item_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LanguageProfileItemResource extends LanguageProfileItemResource {
  @override
  final int? id;
  @override
  final Language? language;
  @override
  final bool? allowed;

  factory _$LanguageProfileItemResource(
          [void Function(LanguageProfileItemResourceBuilder)? updates]) =>
      (LanguageProfileItemResourceBuilder()..update(updates))._build();

  _$LanguageProfileItemResource._({this.id, this.language, this.allowed})
      : super._();
  @override
  LanguageProfileItemResource rebuild(
          void Function(LanguageProfileItemResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguageProfileItemResourceBuilder toBuilder() =>
      LanguageProfileItemResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LanguageProfileItemResource &&
        id == other.id &&
        language == other.language &&
        allowed == other.allowed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, allowed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LanguageProfileItemResource')
          ..add('id', id)
          ..add('language', language)
          ..add('allowed', allowed))
        .toString();
  }
}

class LanguageProfileItemResourceBuilder
    implements
        Builder<LanguageProfileItemResource,
            LanguageProfileItemResourceBuilder> {
  _$LanguageProfileItemResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  LanguageBuilder? _language;
  LanguageBuilder get language => _$this._language ??= LanguageBuilder();
  set language(LanguageBuilder? language) => _$this._language = language;

  bool? _allowed;
  bool? get allowed => _$this._allowed;
  set allowed(bool? allowed) => _$this._allowed = allowed;

  LanguageProfileItemResourceBuilder() {
    LanguageProfileItemResource._defaults(this);
  }

  LanguageProfileItemResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _language = $v.language?.toBuilder();
      _allowed = $v.allowed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LanguageProfileItemResource other) {
    _$v = other as _$LanguageProfileItemResource;
  }

  @override
  void update(void Function(LanguageProfileItemResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LanguageProfileItemResource build() => _build();

  _$LanguageProfileItemResource _build() {
    _$LanguageProfileItemResource _$result;
    try {
      _$result = _$v ??
          _$LanguageProfileItemResource._(
            id: id,
            language: _language?.build(),
            allowed: allowed,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'language';
        _language?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LanguageProfileItemResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
