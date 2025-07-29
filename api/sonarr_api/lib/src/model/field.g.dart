// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Field extends Field {
  @override
  final int? order;
  @override
  final String? name;
  @override
  final String? label;
  @override
  final String? unit;
  @override
  final String? helpText;
  @override
  final String? helpTextWarning;
  @override
  final String? helpLink;
  @override
  final JsonObject? value;
  @override
  final String? type;
  @override
  final bool? advanced;
  @override
  final BuiltList<SelectOption>? selectOptions;
  @override
  final String? selectOptionsProviderAction;
  @override
  final String? section;
  @override
  final String? hidden;
  @override
  final PrivacyLevel? privacy;
  @override
  final String? placeholder;
  @override
  final bool? isFloat;

  factory _$Field([void Function(FieldBuilder)? updates]) =>
      (FieldBuilder()..update(updates))._build();

  _$Field._(
      {this.order,
      this.name,
      this.label,
      this.unit,
      this.helpText,
      this.helpTextWarning,
      this.helpLink,
      this.value,
      this.type,
      this.advanced,
      this.selectOptions,
      this.selectOptionsProviderAction,
      this.section,
      this.hidden,
      this.privacy,
      this.placeholder,
      this.isFloat})
      : super._();
  @override
  Field rebuild(void Function(FieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldBuilder toBuilder() => FieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Field &&
        order == other.order &&
        name == other.name &&
        label == other.label &&
        unit == other.unit &&
        helpText == other.helpText &&
        helpTextWarning == other.helpTextWarning &&
        helpLink == other.helpLink &&
        value == other.value &&
        type == other.type &&
        advanced == other.advanced &&
        selectOptions == other.selectOptions &&
        selectOptionsProviderAction == other.selectOptionsProviderAction &&
        section == other.section &&
        hidden == other.hidden &&
        privacy == other.privacy &&
        placeholder == other.placeholder &&
        isFloat == other.isFloat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, helpText.hashCode);
    _$hash = $jc(_$hash, helpTextWarning.hashCode);
    _$hash = $jc(_$hash, helpLink.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, advanced.hashCode);
    _$hash = $jc(_$hash, selectOptions.hashCode);
    _$hash = $jc(_$hash, selectOptionsProviderAction.hashCode);
    _$hash = $jc(_$hash, section.hashCode);
    _$hash = $jc(_$hash, hidden.hashCode);
    _$hash = $jc(_$hash, privacy.hashCode);
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, isFloat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Field')
          ..add('order', order)
          ..add('name', name)
          ..add('label', label)
          ..add('unit', unit)
          ..add('helpText', helpText)
          ..add('helpTextWarning', helpTextWarning)
          ..add('helpLink', helpLink)
          ..add('value', value)
          ..add('type', type)
          ..add('advanced', advanced)
          ..add('selectOptions', selectOptions)
          ..add('selectOptionsProviderAction', selectOptionsProviderAction)
          ..add('section', section)
          ..add('hidden', hidden)
          ..add('privacy', privacy)
          ..add('placeholder', placeholder)
          ..add('isFloat', isFloat))
        .toString();
  }
}

class FieldBuilder implements Builder<Field, FieldBuilder> {
  _$Field? _$v;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  String? _helpText;
  String? get helpText => _$this._helpText;
  set helpText(String? helpText) => _$this._helpText = helpText;

  String? _helpTextWarning;
  String? get helpTextWarning => _$this._helpTextWarning;
  set helpTextWarning(String? helpTextWarning) =>
      _$this._helpTextWarning = helpTextWarning;

  String? _helpLink;
  String? get helpLink => _$this._helpLink;
  set helpLink(String? helpLink) => _$this._helpLink = helpLink;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(JsonObject? value) => _$this._value = value;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _advanced;
  bool? get advanced => _$this._advanced;
  set advanced(bool? advanced) => _$this._advanced = advanced;

  ListBuilder<SelectOption>? _selectOptions;
  ListBuilder<SelectOption> get selectOptions =>
      _$this._selectOptions ??= ListBuilder<SelectOption>();
  set selectOptions(ListBuilder<SelectOption>? selectOptions) =>
      _$this._selectOptions = selectOptions;

  String? _selectOptionsProviderAction;
  String? get selectOptionsProviderAction =>
      _$this._selectOptionsProviderAction;
  set selectOptionsProviderAction(String? selectOptionsProviderAction) =>
      _$this._selectOptionsProviderAction = selectOptionsProviderAction;

  String? _section;
  String? get section => _$this._section;
  set section(String? section) => _$this._section = section;

  String? _hidden;
  String? get hidden => _$this._hidden;
  set hidden(String? hidden) => _$this._hidden = hidden;

  PrivacyLevel? _privacy;
  PrivacyLevel? get privacy => _$this._privacy;
  set privacy(PrivacyLevel? privacy) => _$this._privacy = privacy;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(String? placeholder) => _$this._placeholder = placeholder;

  bool? _isFloat;
  bool? get isFloat => _$this._isFloat;
  set isFloat(bool? isFloat) => _$this._isFloat = isFloat;

  FieldBuilder() {
    Field._defaults(this);
  }

  FieldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _order = $v.order;
      _name = $v.name;
      _label = $v.label;
      _unit = $v.unit;
      _helpText = $v.helpText;
      _helpTextWarning = $v.helpTextWarning;
      _helpLink = $v.helpLink;
      _value = $v.value;
      _type = $v.type;
      _advanced = $v.advanced;
      _selectOptions = $v.selectOptions?.toBuilder();
      _selectOptionsProviderAction = $v.selectOptionsProviderAction;
      _section = $v.section;
      _hidden = $v.hidden;
      _privacy = $v.privacy;
      _placeholder = $v.placeholder;
      _isFloat = $v.isFloat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Field other) {
    _$v = other as _$Field;
  }

  @override
  void update(void Function(FieldBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Field build() => _build();

  _$Field _build() {
    _$Field _$result;
    try {
      _$result = _$v ??
          _$Field._(
            order: order,
            name: name,
            label: label,
            unit: unit,
            helpText: helpText,
            helpTextWarning: helpTextWarning,
            helpLink: helpLink,
            value: value,
            type: type,
            advanced: advanced,
            selectOptions: _selectOptions?.build(),
            selectOptionsProviderAction: selectOptionsProviderAction,
            section: section,
            hidden: hidden,
            privacy: privacy,
            placeholder: placeholder,
            isFloat: isFloat,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectOptions';
        _selectOptions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Field', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
