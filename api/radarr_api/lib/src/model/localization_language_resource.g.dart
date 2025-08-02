// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_language_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalizationLanguageResource extends LocalizationLanguageResource {
  @override
  final String? identifier;

  factory _$LocalizationLanguageResource(
          [void Function(LocalizationLanguageResourceBuilder)? updates]) =>
      (LocalizationLanguageResourceBuilder()..update(updates))._build();

  _$LocalizationLanguageResource._({this.identifier}) : super._();
  @override
  LocalizationLanguageResource rebuild(
          void Function(LocalizationLanguageResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalizationLanguageResourceBuilder toBuilder() =>
      LocalizationLanguageResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalizationLanguageResource &&
        identifier == other.identifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, identifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocalizationLanguageResource')
          ..add('identifier', identifier))
        .toString();
  }
}

class LocalizationLanguageResourceBuilder
    implements
        Builder<LocalizationLanguageResource,
            LocalizationLanguageResourceBuilder> {
  _$LocalizationLanguageResource? _$v;

  String? _identifier;
  String? get identifier => _$this._identifier;
  set identifier(String? identifier) => _$this._identifier = identifier;

  LocalizationLanguageResourceBuilder() {
    LocalizationLanguageResource._defaults(this);
  }

  LocalizationLanguageResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identifier = $v.identifier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalizationLanguageResource other) {
    _$v = other as _$LocalizationLanguageResource;
  }

  @override
  void update(void Function(LocalizationLanguageResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalizationLanguageResource build() => _build();

  _$LocalizationLanguageResource _build() {
    final _$result = _$v ??
        _$LocalizationLanguageResource._(
          identifier: identifier,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
