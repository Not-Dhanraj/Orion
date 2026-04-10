//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'library_option_info_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LibraryOptionInfoDto {
  /// Returns a new [LibraryOptionInfoDto] instance.
  LibraryOptionInfoDto({

     this.name,

     this.defaultEnabled,
  });

      /// Gets or sets name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets a value indicating whether default enabled.
  @JsonKey(
    
    name: r'DefaultEnabled',
    required: false,
    includeIfNull: false,
  )


  final bool? defaultEnabled;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LibraryOptionInfoDto &&
      other.name == name &&
      other.defaultEnabled == defaultEnabled;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        defaultEnabled.hashCode;

  factory LibraryOptionInfoDto.fromJson(Map<String, dynamic> json) => _$LibraryOptionInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LibraryOptionInfoDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

