// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_definition_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QualityDefinitionResource extends QualityDefinitionResource {
  @override
  final int? id;
  @override
  final Quality? quality;
  @override
  final String? title;
  @override
  final int? weight;
  @override
  final double? minSize;
  @override
  final double? maxSize;
  @override
  final double? preferredSize;

  factory _$QualityDefinitionResource(
          [void Function(QualityDefinitionResourceBuilder)? updates]) =>
      (QualityDefinitionResourceBuilder()..update(updates))._build();

  _$QualityDefinitionResource._(
      {this.id,
      this.quality,
      this.title,
      this.weight,
      this.minSize,
      this.maxSize,
      this.preferredSize})
      : super._();
  @override
  QualityDefinitionResource rebuild(
          void Function(QualityDefinitionResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QualityDefinitionResourceBuilder toBuilder() =>
      QualityDefinitionResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QualityDefinitionResource &&
        id == other.id &&
        quality == other.quality &&
        title == other.title &&
        weight == other.weight &&
        minSize == other.minSize &&
        maxSize == other.maxSize &&
        preferredSize == other.preferredSize;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, minSize.hashCode);
    _$hash = $jc(_$hash, maxSize.hashCode);
    _$hash = $jc(_$hash, preferredSize.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QualityDefinitionResource')
          ..add('id', id)
          ..add('quality', quality)
          ..add('title', title)
          ..add('weight', weight)
          ..add('minSize', minSize)
          ..add('maxSize', maxSize)
          ..add('preferredSize', preferredSize))
        .toString();
  }
}

class QualityDefinitionResourceBuilder
    implements
        Builder<QualityDefinitionResource, QualityDefinitionResourceBuilder> {
  _$QualityDefinitionResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  QualityBuilder? _quality;
  QualityBuilder get quality => _$this._quality ??= QualityBuilder();
  set quality(QualityBuilder? quality) => _$this._quality = quality;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _weight;
  int? get weight => _$this._weight;
  set weight(int? weight) => _$this._weight = weight;

  double? _minSize;
  double? get minSize => _$this._minSize;
  set minSize(double? minSize) => _$this._minSize = minSize;

  double? _maxSize;
  double? get maxSize => _$this._maxSize;
  set maxSize(double? maxSize) => _$this._maxSize = maxSize;

  double? _preferredSize;
  double? get preferredSize => _$this._preferredSize;
  set preferredSize(double? preferredSize) =>
      _$this._preferredSize = preferredSize;

  QualityDefinitionResourceBuilder() {
    QualityDefinitionResource._defaults(this);
  }

  QualityDefinitionResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _quality = $v.quality?.toBuilder();
      _title = $v.title;
      _weight = $v.weight;
      _minSize = $v.minSize;
      _maxSize = $v.maxSize;
      _preferredSize = $v.preferredSize;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QualityDefinitionResource other) {
    _$v = other as _$QualityDefinitionResource;
  }

  @override
  void update(void Function(QualityDefinitionResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QualityDefinitionResource build() => _build();

  _$QualityDefinitionResource _build() {
    _$QualityDefinitionResource _$result;
    try {
      _$result = _$v ??
          _$QualityDefinitionResource._(
            id: id,
            quality: _quality?.build(),
            title: title,
            weight: weight,
            minSize: minSize,
            maxSize: maxSize,
            preferredSize: preferredSize,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quality';
        _quality?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'QualityDefinitionResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
