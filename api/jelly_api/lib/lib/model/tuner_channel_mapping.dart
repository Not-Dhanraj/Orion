//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tuner_channel_mapping.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TunerChannelMapping {
  /// Returns a new [TunerChannelMapping] instance.
  TunerChannelMapping({

     this.name,

     this.providerChannelName,

     this.providerChannelId,

     this.id,
  });

  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'ProviderChannelName',
    required: false,
    includeIfNull: false,
  )


  final String? providerChannelName;



  @JsonKey(
    
    name: r'ProviderChannelId',
    required: false,
    includeIfNull: false,
  )


  final String? providerChannelId;



  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TunerChannelMapping &&
      other.name == name &&
      other.providerChannelName == providerChannelName &&
      other.providerChannelId == providerChannelId &&
      other.id == id;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (providerChannelName == null ? 0 : providerChannelName.hashCode) +
        (providerChannelId == null ? 0 : providerChannelId.hashCode) +
        (id == null ? 0 : id.hashCode);

  factory TunerChannelMapping.fromJson(Map<String, dynamic> json) => _$TunerChannelMappingFromJson(json);

  Map<String, dynamic> toJson() => _$TunerChannelMappingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

