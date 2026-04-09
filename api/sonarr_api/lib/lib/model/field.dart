//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/privacy_level.dart';
import 'package:sonarr_api/lib/model/select_option.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'field.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Field {
  /// Returns a new [Field] instance.
  Field({

     this.order,

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

     this.isFloat,
  });

  @JsonKey(
    
    name: r'order',
    required: false,
    includeIfNull: false,
  )


  final int? order;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'label',
    required: false,
    includeIfNull: false,
  )


  final String? label;



  @JsonKey(
    
    name: r'unit',
    required: false,
    includeIfNull: false,
  )


  final String? unit;



  @JsonKey(
    
    name: r'helpText',
    required: false,
    includeIfNull: false,
  )


  final String? helpText;



  @JsonKey(
    
    name: r'helpTextWarning',
    required: false,
    includeIfNull: false,
  )


  final String? helpTextWarning;



  @JsonKey(
    
    name: r'helpLink',
    required: false,
    includeIfNull: false,
  )


  final String? helpLink;



  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false,
  )


  final Object? value;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final String? type;



  @JsonKey(
    
    name: r'advanced',
    required: false,
    includeIfNull: false,
  )


  final bool? advanced;



  @JsonKey(
    
    name: r'selectOptions',
    required: false,
    includeIfNull: false,
  )


  final List<SelectOption>? selectOptions;



  @JsonKey(
    
    name: r'selectOptionsProviderAction',
    required: false,
    includeIfNull: false,
  )


  final String? selectOptionsProviderAction;



  @JsonKey(
    
    name: r'section',
    required: false,
    includeIfNull: false,
  )


  final String? section;



  @JsonKey(
    
    name: r'hidden',
    required: false,
    includeIfNull: false,
  )


  final String? hidden;



  @JsonKey(
    
    name: r'privacy',
    required: false,
    includeIfNull: false,
  )


  final PrivacyLevel? privacy;



  @JsonKey(
    
    name: r'placeholder',
    required: false,
    includeIfNull: false,
  )


  final String? placeholder;



  @JsonKey(
    
    name: r'isFloat',
    required: false,
    includeIfNull: false,
  )


  final bool? isFloat;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Field &&
      other.order == order &&
      other.name == name &&
      other.label == label &&
      other.unit == unit &&
      other.helpText == helpText &&
      other.helpTextWarning == helpTextWarning &&
      other.helpLink == helpLink &&
      other.value == value &&
      other.type == type &&
      other.advanced == advanced &&
      other.selectOptions == selectOptions &&
      other.selectOptionsProviderAction == selectOptionsProviderAction &&
      other.section == section &&
      other.hidden == hidden &&
      other.privacy == privacy &&
      other.placeholder == placeholder &&
      other.isFloat == isFloat;

    @override
    int get hashCode =>
        order.hashCode +
        (name == null ? 0 : name.hashCode) +
        (label == null ? 0 : label.hashCode) +
        (unit == null ? 0 : unit.hashCode) +
        (helpText == null ? 0 : helpText.hashCode) +
        (helpTextWarning == null ? 0 : helpTextWarning.hashCode) +
        (helpLink == null ? 0 : helpLink.hashCode) +
        (value == null ? 0 : value.hashCode) +
        (type == null ? 0 : type.hashCode) +
        advanced.hashCode +
        (selectOptions == null ? 0 : selectOptions.hashCode) +
        (selectOptionsProviderAction == null ? 0 : selectOptionsProviderAction.hashCode) +
        (section == null ? 0 : section.hashCode) +
        (hidden == null ? 0 : hidden.hashCode) +
        privacy.hashCode +
        (placeholder == null ? 0 : placeholder.hashCode) +
        isFloat.hashCode;

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

