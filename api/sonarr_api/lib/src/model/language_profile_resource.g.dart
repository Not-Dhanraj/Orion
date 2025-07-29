// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_profile_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LanguageProfileResource extends LanguageProfileResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? upgradeAllowed;
  @override
  final Language? cutoff;
  @override
  final BuiltList<LanguageProfileItemResource>? languages;

  factory _$LanguageProfileResource(
          [void Function(LanguageProfileResourceBuilder)? updates]) =>
      (LanguageProfileResourceBuilder()..update(updates))._build();

  _$LanguageProfileResource._(
      {this.id, this.name, this.upgradeAllowed, this.cutoff, this.languages})
      : super._();
  @override
  LanguageProfileResource rebuild(
          void Function(LanguageProfileResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguageProfileResourceBuilder toBuilder() =>
      LanguageProfileResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LanguageProfileResource &&
        id == other.id &&
        name == other.name &&
        upgradeAllowed == other.upgradeAllowed &&
        cutoff == other.cutoff &&
        languages == other.languages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, upgradeAllowed.hashCode);
    _$hash = $jc(_$hash, cutoff.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LanguageProfileResource')
          ..add('id', id)
          ..add('name', name)
          ..add('upgradeAllowed', upgradeAllowed)
          ..add('cutoff', cutoff)
          ..add('languages', languages))
        .toString();
  }
}

class LanguageProfileResourceBuilder
    implements
        Builder<LanguageProfileResource, LanguageProfileResourceBuilder> {
  _$LanguageProfileResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _upgradeAllowed;
  bool? get upgradeAllowed => _$this._upgradeAllowed;
  set upgradeAllowed(bool? upgradeAllowed) =>
      _$this._upgradeAllowed = upgradeAllowed;

  LanguageBuilder? _cutoff;
  LanguageBuilder get cutoff => _$this._cutoff ??= LanguageBuilder();
  set cutoff(LanguageBuilder? cutoff) => _$this._cutoff = cutoff;

  ListBuilder<LanguageProfileItemResource>? _languages;
  ListBuilder<LanguageProfileItemResource> get languages =>
      _$this._languages ??= ListBuilder<LanguageProfileItemResource>();
  set languages(ListBuilder<LanguageProfileItemResource>? languages) =>
      _$this._languages = languages;

  LanguageProfileResourceBuilder() {
    LanguageProfileResource._defaults(this);
  }

  LanguageProfileResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _upgradeAllowed = $v.upgradeAllowed;
      _cutoff = $v.cutoff?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LanguageProfileResource other) {
    _$v = other as _$LanguageProfileResource;
  }

  @override
  void update(void Function(LanguageProfileResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LanguageProfileResource build() => _build();

  _$LanguageProfileResource _build() {
    _$LanguageProfileResource _$result;
    try {
      _$result = _$v ??
          _$LanguageProfileResource._(
            id: id,
            name: name,
            upgradeAllowed: upgradeAllowed,
            cutoff: _cutoff?.build(),
            languages: _languages?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cutoff';
        _cutoff?.build();
        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LanguageProfileResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
