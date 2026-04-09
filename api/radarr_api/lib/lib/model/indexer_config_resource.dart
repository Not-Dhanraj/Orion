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

     this.maximumSize,

     this.retention,

     this.rssSyncInterval,

     this.preferIndexerFlags,

     this.availabilityDelay,

     this.allowHardcodedSubs,

     this.whitelistedHardcodedSubs,
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
    
    name: r'maximumSize',
    required: false,
    includeIfNull: false,
  )


  final int? maximumSize;



  @JsonKey(
    
    name: r'retention',
    required: false,
    includeIfNull: false,
  )


  final int? retention;



  @JsonKey(
    
    name: r'rssSyncInterval',
    required: false,
    includeIfNull: false,
  )


  final int? rssSyncInterval;



  @JsonKey(
    
    name: r'preferIndexerFlags',
    required: false,
    includeIfNull: false,
  )


  final bool? preferIndexerFlags;



  @JsonKey(
    
    name: r'availabilityDelay',
    required: false,
    includeIfNull: false,
  )


  final int? availabilityDelay;



  @JsonKey(
    
    name: r'allowHardcodedSubs',
    required: false,
    includeIfNull: false,
  )


  final bool? allowHardcodedSubs;



  @JsonKey(
    
    name: r'whitelistedHardcodedSubs',
    required: false,
    includeIfNull: false,
  )


  final String? whitelistedHardcodedSubs;





    @override
    bool operator ==(Object other) => identical(this, other) || other is IndexerConfigResource &&
      other.id == id &&
      other.minimumAge == minimumAge &&
      other.maximumSize == maximumSize &&
      other.retention == retention &&
      other.rssSyncInterval == rssSyncInterval &&
      other.preferIndexerFlags == preferIndexerFlags &&
      other.availabilityDelay == availabilityDelay &&
      other.allowHardcodedSubs == allowHardcodedSubs &&
      other.whitelistedHardcodedSubs == whitelistedHardcodedSubs;

    @override
    int get hashCode =>
        id.hashCode +
        minimumAge.hashCode +
        maximumSize.hashCode +
        retention.hashCode +
        rssSyncInterval.hashCode +
        preferIndexerFlags.hashCode +
        availabilityDelay.hashCode +
        allowHardcodedSubs.hashCode +
        (whitelistedHardcodedSubs == null ? 0 : whitelistedHardcodedSubs.hashCode);

  factory IndexerConfigResource.fromJson(Map<String, dynamic> json) => _$IndexerConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$IndexerConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

