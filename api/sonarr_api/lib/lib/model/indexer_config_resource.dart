//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'indexer_config_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IndexerConfigResource {
  /// Returns a new [IndexerConfigResource] instance.
  IndexerConfigResource({

     this.id,

     this.minimumAge,

     this.retention,

     this.maximumSize,

     this.rssSyncInterval,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'minimumAge',
    required: false,
    includeIfNull: false,
  )


  final int? minimumAge;



  @JsonKey(
    
    name: r'retention',
    required: false,
    includeIfNull: false,
  )


  final int? retention;



  @JsonKey(
    
    name: r'maximumSize',
    required: false,
    includeIfNull: false,
  )


  final int? maximumSize;



  @JsonKey(
    
    name: r'rssSyncInterval',
    required: false,
    includeIfNull: false,
  )


  final int? rssSyncInterval;





    @override
    bool operator ==(Object other) => identical(this, other) || other is IndexerConfigResource &&
      other.id == id &&
      other.minimumAge == minimumAge &&
      other.retention == retention &&
      other.maximumSize == maximumSize &&
      other.rssSyncInterval == rssSyncInterval;

    @override
    int get hashCode =>
        id.hashCode +
        minimumAge.hashCode +
        retention.hashCode +
        maximumSize.hashCode +
        rssSyncInterval.hashCode;

  factory IndexerConfigResource.fromJson(Map<String, dynamic> json) => _$IndexerConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$IndexerConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

