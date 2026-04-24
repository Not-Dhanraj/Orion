//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/external_id_media_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'external_id_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ExternalIdInfo {
  /// Returns a new [ExternalIdInfo] instance.
  ExternalIdInfo({

     this.name,

     this.key,

     this.type,
  });

      /// Gets or sets the display name of the external id provider (IE: IMDB, MusicBrainz, etc).
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the unique key for this id. This key should be unique across all providers.
  @JsonKey(
    
    name: r'Key',
    required: false,
    includeIfNull: false,
  )


  final String? key;



      /// Gets or sets the specific media type for this id. This is used to distinguish between the different  external id types for providers with multiple ids.  A null value indicates there is no specific media type associated with the external id, or this is the  default id for the external provider so there is no need to specify a type.
  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final ExternalIdMediaType? type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ExternalIdInfo &&
      other.name == name &&
      other.key == key &&
      other.type == type;

    @override
    int get hashCode =>
        name.hashCode +
        key.hashCode +
        (type == null ? 0 : type.hashCode);

  factory ExternalIdInfo.fromJson(Map<String, dynamic> json) => _$ExternalIdInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalIdInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

