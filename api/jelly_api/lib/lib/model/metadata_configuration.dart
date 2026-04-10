//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'metadata_configuration.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MetadataConfiguration {
  /// Returns a new [MetadataConfiguration] instance.
  MetadataConfiguration({

     this.useFileCreationTimeForDateAdded,
  });

  @JsonKey(
    
    name: r'UseFileCreationTimeForDateAdded',
    required: false,
    includeIfNull: false,
  )


  final bool? useFileCreationTimeForDateAdded;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MetadataConfiguration &&
      other.useFileCreationTimeForDateAdded == useFileCreationTimeForDateAdded;

    @override
    int get hashCode =>
        useFileCreationTimeForDateAdded.hashCode;

  factory MetadataConfiguration.fromJson(Map<String, dynamic> json) => _$MetadataConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataConfigurationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

