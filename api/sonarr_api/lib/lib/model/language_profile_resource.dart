//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/language.dart';
import 'package:sonarr_api/lib/model/language_profile_item_resource.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language_profile_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LanguageProfileResource {
  /// Returns a new [LanguageProfileResource] instance.
  LanguageProfileResource({

     this.id,

     this.name,

     this.upgradeAllowed,

     this.cutoff,

     this.languages,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'upgradeAllowed',
    required: false,
    includeIfNull: false,
  )


  final bool? upgradeAllowed;



  @JsonKey(
    
    name: r'cutoff',
    required: false,
    includeIfNull: false,
  )


  final Language? cutoff;



  @JsonKey(
    
    name: r'languages',
    required: false,
    includeIfNull: false,
  )


  final List<LanguageProfileItemResource>? languages;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LanguageProfileResource &&
      other.id == id &&
      other.name == name &&
      other.upgradeAllowed == upgradeAllowed &&
      other.cutoff == cutoff &&
      other.languages == languages;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        upgradeAllowed.hashCode +
        cutoff.hashCode +
        (languages == null ? 0 : languages.hashCode);

  factory LanguageProfileResource.fromJson(Map<String, dynamic> json) => _$LanguageProfileResourceFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageProfileResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

