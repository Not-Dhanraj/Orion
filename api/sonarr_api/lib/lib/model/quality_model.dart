//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/revision.dart';
import 'package:sonarr_api/lib/model/quality.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quality_model.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QualityModel {
  /// Returns a new [QualityModel] instance.
  QualityModel({

     this.quality,

     this.revision,
  });

  @JsonKey(
    
    name: r'quality',
    required: false,
    includeIfNull: false,
  )


  final Quality? quality;



  @JsonKey(
    
    name: r'revision',
    required: false,
    includeIfNull: false,
  )


  final Revision? revision;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QualityModel &&
      other.quality == quality &&
      other.revision == revision;

    @override
    int get hashCode =>
        quality.hashCode +
        revision.hashCode;

  factory QualityModel.fromJson(Map<String, dynamic> json) => _$QualityModelFromJson(json);

  Map<String, dynamic> toJson() => _$QualityModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

