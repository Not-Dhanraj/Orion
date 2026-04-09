//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language_profile_item_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LanguageProfileItemResource {
  /// Returns a new [LanguageProfileItemResource] instance.
  LanguageProfileItemResource({

     this.id,

     this.language,

     this.allowed,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'language',
    required: false,
    includeIfNull: false,
  )


  final Language? language;



  @JsonKey(
    
    name: r'allowed',
    required: false,
    includeIfNull: false,
  )


  final bool? allowed;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LanguageProfileItemResource &&
      other.id == id &&
      other.language == language &&
      other.allowed == allowed;

    @override
    int get hashCode =>
        id.hashCode +
        language.hashCode +
        allowed.hashCode;

  factory LanguageProfileItemResource.fromJson(Map<String, dynamic> json) => _$LanguageProfileItemResourceFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageProfileItemResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

