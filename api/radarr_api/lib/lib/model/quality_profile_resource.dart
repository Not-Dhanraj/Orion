//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/quality_profile_quality_item_resource.dart';
import 'package:radarr_api/lib/model/profile_format_item_resource.dart';
import 'package:radarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quality_profile_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QualityProfileResource {
  /// Returns a new [QualityProfileResource] instance.
  QualityProfileResource({

     this.id,

     this.name,

     this.upgradeAllowed,

     this.cutoff,

     this.items,

     this.minFormatScore,

     this.cutoffFormatScore,

     this.minUpgradeFormatScore,

     this.formatItems,

     this.language,
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


  final int? cutoff;



  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false,
  )


  final List<QualityProfileQualityItemResource>? items;



  @JsonKey(
    
    name: r'minFormatScore',
    required: false,
    includeIfNull: false,
  )


  final int? minFormatScore;



  @JsonKey(
    
    name: r'cutoffFormatScore',
    required: false,
    includeIfNull: false,
  )


  final int? cutoffFormatScore;



  @JsonKey(
    
    name: r'minUpgradeFormatScore',
    required: false,
    includeIfNull: false,
  )


  final int? minUpgradeFormatScore;



  @JsonKey(
    
    name: r'formatItems',
    required: false,
    includeIfNull: false,
  )


  final List<ProfileFormatItemResource>? formatItems;



  @JsonKey(
    
    name: r'language',
    required: false,
    includeIfNull: false,
  )


  final Language? language;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QualityProfileResource &&
      other.id == id &&
      other.name == name &&
      other.upgradeAllowed == upgradeAllowed &&
      other.cutoff == cutoff &&
      other.items == items &&
      other.minFormatScore == minFormatScore &&
      other.cutoffFormatScore == cutoffFormatScore &&
      other.minUpgradeFormatScore == minUpgradeFormatScore &&
      other.formatItems == formatItems &&
      other.language == language;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        upgradeAllowed.hashCode +
        cutoff.hashCode +
        (items == null ? 0 : items.hashCode) +
        minFormatScore.hashCode +
        cutoffFormatScore.hashCode +
        minUpgradeFormatScore.hashCode +
        (formatItems == null ? 0 : formatItems.hashCode) +
        language.hashCode;

  factory QualityProfileResource.fromJson(Map<String, dynamic> json) => _$QualityProfileResourceFromJson(json);

  Map<String, dynamic> toJson() => _$QualityProfileResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

