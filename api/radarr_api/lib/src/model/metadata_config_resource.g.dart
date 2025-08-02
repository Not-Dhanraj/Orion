// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_config_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetadataConfigResource extends MetadataConfigResource {
  @override
  final int? id;
  @override
  final TMDbCountryCode? certificationCountry;

  factory _$MetadataConfigResource(
          [void Function(MetadataConfigResourceBuilder)? updates]) =>
      (MetadataConfigResourceBuilder()..update(updates))._build();

  _$MetadataConfigResource._({this.id, this.certificationCountry}) : super._();
  @override
  MetadataConfigResource rebuild(
          void Function(MetadataConfigResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetadataConfigResourceBuilder toBuilder() =>
      MetadataConfigResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetadataConfigResource &&
        id == other.id &&
        certificationCountry == other.certificationCountry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, certificationCountry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetadataConfigResource')
          ..add('id', id)
          ..add('certificationCountry', certificationCountry))
        .toString();
  }
}

class MetadataConfigResourceBuilder
    implements Builder<MetadataConfigResource, MetadataConfigResourceBuilder> {
  _$MetadataConfigResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  TMDbCountryCode? _certificationCountry;
  TMDbCountryCode? get certificationCountry => _$this._certificationCountry;
  set certificationCountry(TMDbCountryCode? certificationCountry) =>
      _$this._certificationCountry = certificationCountry;

  MetadataConfigResourceBuilder() {
    MetadataConfigResource._defaults(this);
  }

  MetadataConfigResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _certificationCountry = $v.certificationCountry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetadataConfigResource other) {
    _$v = other as _$MetadataConfigResource;
  }

  @override
  void update(void Function(MetadataConfigResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetadataConfigResource build() => _build();

  _$MetadataConfigResource _build() {
    final _$result = _$v ??
        _$MetadataConfigResource._(
          id: id,
          certificationCountry: certificationCountry,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
