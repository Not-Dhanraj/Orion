// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_changes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateChanges extends UpdateChanges {
  @override
  final BuiltList<String>? new_;
  @override
  final BuiltList<String>? fixed;

  factory _$UpdateChanges([void Function(UpdateChangesBuilder)? updates]) =>
      (UpdateChangesBuilder()..update(updates))._build();

  _$UpdateChanges._({this.new_, this.fixed}) : super._();
  @override
  UpdateChanges rebuild(void Function(UpdateChangesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateChangesBuilder toBuilder() => UpdateChangesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateChanges && new_ == other.new_ && fixed == other.fixed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, new_.hashCode);
    _$hash = $jc(_$hash, fixed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateChanges')
          ..add('new_', new_)
          ..add('fixed', fixed))
        .toString();
  }
}

class UpdateChangesBuilder
    implements Builder<UpdateChanges, UpdateChangesBuilder> {
  _$UpdateChanges? _$v;

  ListBuilder<String>? _new_;
  ListBuilder<String> get new_ => _$this._new_ ??= ListBuilder<String>();
  set new_(ListBuilder<String>? new_) => _$this._new_ = new_;

  ListBuilder<String>? _fixed;
  ListBuilder<String> get fixed => _$this._fixed ??= ListBuilder<String>();
  set fixed(ListBuilder<String>? fixed) => _$this._fixed = fixed;

  UpdateChangesBuilder() {
    UpdateChanges._defaults(this);
  }

  UpdateChangesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _new_ = $v.new_?.toBuilder();
      _fixed = $v.fixed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateChanges other) {
    _$v = other as _$UpdateChanges;
  }

  @override
  void update(void Function(UpdateChangesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateChanges build() => _build();

  _$UpdateChanges _build() {
    _$UpdateChanges _$result;
    try {
      _$result = _$v ??
          _$UpdateChanges._(
            new_: _new_?.build(),
            fixed: _fixed?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'new_';
        _new_?.build();
        _$failedField = 'fixed';
        _fixed?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateChanges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
