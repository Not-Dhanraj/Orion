// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectOption extends SelectOption {
  @override
  final int? value;
  @override
  final String? name;
  @override
  final int? order;
  @override
  final String? hint;

  factory _$SelectOption([void Function(SelectOptionBuilder)? updates]) =>
      (SelectOptionBuilder()..update(updates))._build();

  _$SelectOption._({this.value, this.name, this.order, this.hint}) : super._();
  @override
  SelectOption rebuild(void Function(SelectOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectOptionBuilder toBuilder() => SelectOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectOption &&
        value == other.value &&
        name == other.name &&
        order == other.order &&
        hint == other.hint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, hint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectOption')
          ..add('value', value)
          ..add('name', name)
          ..add('order', order)
          ..add('hint', hint))
        .toString();
  }
}

class SelectOptionBuilder
    implements Builder<SelectOption, SelectOptionBuilder> {
  _$SelectOption? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  String? _hint;
  String? get hint => _$this._hint;
  set hint(String? hint) => _$this._hint = hint;

  SelectOptionBuilder() {
    SelectOption._defaults(this);
  }

  SelectOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _name = $v.name;
      _order = $v.order;
      _hint = $v.hint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectOption other) {
    _$v = other as _$SelectOption;
  }

  @override
  void update(void Function(SelectOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectOption build() => _build();

  _$SelectOption _build() {
    final _$result = _$v ??
        _$SelectOption._(
          value: value,
          name: name,
          order: order,
          hint: hint,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
