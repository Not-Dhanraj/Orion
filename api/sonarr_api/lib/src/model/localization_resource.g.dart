// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocalizationResource extends LocalizationResource {
  @override
  final int? id;
  @override
  final BuiltMap<String, String?>? strings;

  factory _$LocalizationResource(
          [void Function(LocalizationResourceBuilder)? updates]) =>
      (LocalizationResourceBuilder()..update(updates))._build();

  _$LocalizationResource._({this.id, this.strings}) : super._();
  @override
  LocalizationResource rebuild(
          void Function(LocalizationResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalizationResourceBuilder toBuilder() =>
      LocalizationResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalizationResource &&
        id == other.id &&
        strings == other.strings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, strings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocalizationResource')
          ..add('id', id)
          ..add('strings', strings))
        .toString();
  }
}

class LocalizationResourceBuilder
    implements Builder<LocalizationResource, LocalizationResourceBuilder> {
  _$LocalizationResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  MapBuilder<String, String?>? _strings;
  MapBuilder<String, String?> get strings =>
      _$this._strings ??= MapBuilder<String, String?>();
  set strings(MapBuilder<String, String?>? strings) =>
      _$this._strings = strings;

  LocalizationResourceBuilder() {
    LocalizationResource._defaults(this);
  }

  LocalizationResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _strings = $v.strings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalizationResource other) {
    _$v = other as _$LocalizationResource;
  }

  @override
  void update(void Function(LocalizationResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalizationResource build() => _build();

  _$LocalizationResource _build() {
    _$LocalizationResource _$result;
    try {
      _$result = _$v ??
          _$LocalizationResource._(
            id: id,
            strings: _strings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'strings';
        _strings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LocalizationResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
