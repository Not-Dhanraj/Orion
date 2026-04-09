//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'localization_language_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LocalizationLanguageResource {
  /// Returns a new [LocalizationLanguageResource] instance.
  LocalizationLanguageResource({

     this.identifier,
  });

  @JsonKey(
    
    name: r'identifier',
    required: false,
    includeIfNull: false,
  )


  final String? identifier;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LocalizationLanguageResource &&
      other.identifier == identifier;

    @override
    int get hashCode =>
        (identifier == null ? 0 : identifier.hashCode);

  factory LocalizationLanguageResource.fromJson(Map<String, dynamic> json) => _$LocalizationLanguageResourceFromJson(json);

  Map<String, dynamic> toJson() => _$LocalizationLanguageResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

