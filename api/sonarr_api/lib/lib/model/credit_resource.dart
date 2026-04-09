//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/media_cover.dart';
import 'package:sonarr_api/lib/model/credit_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'credit_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreditResource {
  /// Returns a new [CreditResource] instance.
  CreditResource({

     this.id,

     this.personName,

     this.creditTmdbId,

     this.personTmdbId,

     this.movieMetadataId,

     this.images,

     this.department,

     this.job,

     this.character,

     this.order,

     this.type,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'personName',
    required: false,
    includeIfNull: false,
  )


  final String? personName;



  @JsonKey(
    
    name: r'creditTmdbId',
    required: false,
    includeIfNull: false,
  )


  final String? creditTmdbId;



  @JsonKey(
    
    name: r'personTmdbId',
    required: false,
    includeIfNull: false,
  )


  final int? personTmdbId;



  @JsonKey(
    
    name: r'movieMetadataId',
    required: false,
    includeIfNull: false,
  )


  final int? movieMetadataId;



  @JsonKey(
    
    name: r'images',
    required: false,
    includeIfNull: false,
  )


  final List<MediaCover>? images;



  @JsonKey(
    
    name: r'department',
    required: false,
    includeIfNull: false,
  )


  final String? department;



  @JsonKey(
    
    name: r'job',
    required: false,
    includeIfNull: false,
  )


  final String? job;



  @JsonKey(
    
    name: r'character',
    required: false,
    includeIfNull: false,
  )


  final String? character;



  @JsonKey(
    
    name: r'order',
    required: false,
    includeIfNull: false,
  )


  final int? order;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final CreditType? type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreditResource &&
      other.id == id &&
      other.personName == personName &&
      other.creditTmdbId == creditTmdbId &&
      other.personTmdbId == personTmdbId &&
      other.movieMetadataId == movieMetadataId &&
      other.images == images &&
      other.department == department &&
      other.job == job &&
      other.character == character &&
      other.order == order &&
      other.type == type;

    @override
    int get hashCode =>
        id.hashCode +
        (personName == null ? 0 : personName.hashCode) +
        (creditTmdbId == null ? 0 : creditTmdbId.hashCode) +
        personTmdbId.hashCode +
        movieMetadataId.hashCode +
        (images == null ? 0 : images.hashCode) +
        (department == null ? 0 : department.hashCode) +
        (job == null ? 0 : job.hashCode) +
        (character == null ? 0 : character.hashCode) +
        order.hashCode +
        type.hashCode;

  factory CreditResource.fromJson(Map<String, dynamic> json) => _$CreditResourceFromJson(json);

  Map<String, dynamic> toJson() => _$CreditResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

