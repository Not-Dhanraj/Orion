// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_filter_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomFilterResource extends CustomFilterResource {
  @override
  final int? id;
  @override
  final String? type;
  @override
  final String? label;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? filters;

  factory _$CustomFilterResource(
          [void Function(CustomFilterResourceBuilder)? updates]) =>
      (CustomFilterResourceBuilder()..update(updates))._build();

  _$CustomFilterResource._({this.id, this.type, this.label, this.filters})
      : super._();
  @override
  CustomFilterResource rebuild(
          void Function(CustomFilterResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomFilterResourceBuilder toBuilder() =>
      CustomFilterResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomFilterResource &&
        id == other.id &&
        type == other.type &&
        label == other.label &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomFilterResource')
          ..add('id', id)
          ..add('type', type)
          ..add('label', label)
          ..add('filters', filters))
        .toString();
  }
}

class CustomFilterResourceBuilder
    implements Builder<CustomFilterResource, CustomFilterResourceBuilder> {
  _$CustomFilterResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  ListBuilder<BuiltMap<String, JsonObject?>>? _filters;
  ListBuilder<BuiltMap<String, JsonObject?>> get filters =>
      _$this._filters ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set filters(ListBuilder<BuiltMap<String, JsonObject?>>? filters) =>
      _$this._filters = filters;

  CustomFilterResourceBuilder() {
    CustomFilterResource._defaults(this);
  }

  CustomFilterResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _label = $v.label;
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomFilterResource other) {
    _$v = other as _$CustomFilterResource;
  }

  @override
  void update(void Function(CustomFilterResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomFilterResource build() => _build();

  _$CustomFilterResource _build() {
    _$CustomFilterResource _$result;
    try {
      _$result = _$v ??
          _$CustomFilterResource._(
            id: id,
            type: type,
            label: label,
            filters: _filters?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomFilterResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
