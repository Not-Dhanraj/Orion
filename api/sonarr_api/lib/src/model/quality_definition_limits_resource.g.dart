// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_definition_limits_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QualityDefinitionLimitsResource
    extends QualityDefinitionLimitsResource {
  @override
  final int? min;
  @override
  final int? max;

  factory _$QualityDefinitionLimitsResource(
          [void Function(QualityDefinitionLimitsResourceBuilder)? updates]) =>
      (QualityDefinitionLimitsResourceBuilder()..update(updates))._build();

  _$QualityDefinitionLimitsResource._({this.min, this.max}) : super._();
  @override
  QualityDefinitionLimitsResource rebuild(
          void Function(QualityDefinitionLimitsResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QualityDefinitionLimitsResourceBuilder toBuilder() =>
      QualityDefinitionLimitsResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QualityDefinitionLimitsResource &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QualityDefinitionLimitsResource')
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class QualityDefinitionLimitsResourceBuilder
    implements
        Builder<QualityDefinitionLimitsResource,
            QualityDefinitionLimitsResourceBuilder> {
  _$QualityDefinitionLimitsResource? _$v;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  QualityDefinitionLimitsResourceBuilder() {
    QualityDefinitionLimitsResource._defaults(this);
  }

  QualityDefinitionLimitsResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QualityDefinitionLimitsResource other) {
    _$v = other as _$QualityDefinitionLimitsResource;
  }

  @override
  void update(void Function(QualityDefinitionLimitsResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QualityDefinitionLimitsResource build() => _build();

  _$QualityDefinitionLimitsResource _build() {
    final _$result = _$v ??
        _$QualityDefinitionLimitsResource._(
          min: min,
          max: max,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
