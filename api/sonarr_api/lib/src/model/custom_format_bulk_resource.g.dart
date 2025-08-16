// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_format_bulk_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomFormatBulkResource extends CustomFormatBulkResource {
  @override
  final BuiltSet<int>? ids;
  @override
  final bool? includeCustomFormatWhenRenaming;

  factory _$CustomFormatBulkResource(
          [void Function(CustomFormatBulkResourceBuilder)? updates]) =>
      (CustomFormatBulkResourceBuilder()..update(updates))._build();

  _$CustomFormatBulkResource._({this.ids, this.includeCustomFormatWhenRenaming})
      : super._();
  @override
  CustomFormatBulkResource rebuild(
          void Function(CustomFormatBulkResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomFormatBulkResourceBuilder toBuilder() =>
      CustomFormatBulkResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomFormatBulkResource &&
        ids == other.ids &&
        includeCustomFormatWhenRenaming ==
            other.includeCustomFormatWhenRenaming;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ids.hashCode);
    _$hash = $jc(_$hash, includeCustomFormatWhenRenaming.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomFormatBulkResource')
          ..add('ids', ids)
          ..add('includeCustomFormatWhenRenaming',
              includeCustomFormatWhenRenaming))
        .toString();
  }
}

class CustomFormatBulkResourceBuilder
    implements
        Builder<CustomFormatBulkResource, CustomFormatBulkResourceBuilder> {
  _$CustomFormatBulkResource? _$v;

  SetBuilder<int>? _ids;
  SetBuilder<int> get ids => _$this._ids ??= SetBuilder<int>();
  set ids(SetBuilder<int>? ids) => _$this._ids = ids;

  bool? _includeCustomFormatWhenRenaming;
  bool? get includeCustomFormatWhenRenaming =>
      _$this._includeCustomFormatWhenRenaming;
  set includeCustomFormatWhenRenaming(bool? includeCustomFormatWhenRenaming) =>
      _$this._includeCustomFormatWhenRenaming = includeCustomFormatWhenRenaming;

  CustomFormatBulkResourceBuilder() {
    CustomFormatBulkResource._defaults(this);
  }

  CustomFormatBulkResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids?.toBuilder();
      _includeCustomFormatWhenRenaming = $v.includeCustomFormatWhenRenaming;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomFormatBulkResource other) {
    _$v = other as _$CustomFormatBulkResource;
  }

  @override
  void update(void Function(CustomFormatBulkResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomFormatBulkResource build() => _build();

  _$CustomFormatBulkResource _build() {
    _$CustomFormatBulkResource _$result;
    try {
      _$result = _$v ??
          _$CustomFormatBulkResource._(
            ids: _ids?.build(),
            includeCustomFormatWhenRenaming: includeCustomFormatWhenRenaming,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        _ids?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomFormatBulkResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
