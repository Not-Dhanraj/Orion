// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QualityModel extends QualityModel {
  @override
  final Quality? quality;
  @override
  final Revision? revision;

  factory _$QualityModel([void Function(QualityModelBuilder)? updates]) =>
      (QualityModelBuilder()..update(updates))._build();

  _$QualityModel._({this.quality, this.revision}) : super._();
  @override
  QualityModel rebuild(void Function(QualityModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QualityModelBuilder toBuilder() => QualityModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QualityModel &&
        quality == other.quality &&
        revision == other.revision;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, revision.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QualityModel')
          ..add('quality', quality)
          ..add('revision', revision))
        .toString();
  }
}

class QualityModelBuilder
    implements Builder<QualityModel, QualityModelBuilder> {
  _$QualityModel? _$v;

  QualityBuilder? _quality;
  QualityBuilder get quality => _$this._quality ??= QualityBuilder();
  set quality(QualityBuilder? quality) => _$this._quality = quality;

  RevisionBuilder? _revision;
  RevisionBuilder get revision => _$this._revision ??= RevisionBuilder();
  set revision(RevisionBuilder? revision) => _$this._revision = revision;

  QualityModelBuilder() {
    QualityModel._defaults(this);
  }

  QualityModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _quality = $v.quality?.toBuilder();
      _revision = $v.revision?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QualityModel other) {
    _$v = other as _$QualityModel;
  }

  @override
  void update(void Function(QualityModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QualityModel build() => _build();

  _$QualityModel _build() {
    _$QualityModel _$result;
    try {
      _$result = _$v ??
          _$QualityModel._(
            quality: _quality?.build(),
            revision: _revision?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'quality';
        _quality?.build();
        _$failedField = 'revision';
        _revision?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'QualityModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
