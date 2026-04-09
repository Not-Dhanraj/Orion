//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'localization_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LocalizationResource {
  /// Returns a new [LocalizationResource] instance.
  LocalizationResource({

     this.id,

     this.strings,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'strings',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? strings;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LocalizationResource &&
      other.id == id &&
      other.strings == strings;

    @override
    int get hashCode =>
        id.hashCode +
        (strings == null ? 0 : strings.hashCode);

  factory LocalizationResource.fromJson(Map<String, dynamic> json) => _$LocalizationResourceFromJson(json);

  Map<String, dynamic> toJson() => _$LocalizationResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

