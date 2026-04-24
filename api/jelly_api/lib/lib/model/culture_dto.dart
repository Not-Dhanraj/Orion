//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'culture_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CultureDto {
  /// Returns a new [CultureDto] instance.
  CultureDto({

     this.name,

     this.displayName,

     this.twoLetterISOLanguageName,

     this.threeLetterISOLanguageName,

     this.threeLetterISOLanguageNames,
  });

      /// Gets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets the display name.
  @JsonKey(
    
    name: r'DisplayName',
    required: false,
    includeIfNull: false,
  )


  final String? displayName;



      /// Gets the name of the two letter ISO language.
  @JsonKey(
    
    name: r'TwoLetterISOLanguageName',
    required: false,
    includeIfNull: false,
  )


  final String? twoLetterISOLanguageName;



      /// Gets the name of the three letter ISO language.
  @JsonKey(
    
    name: r'ThreeLetterISOLanguageName',
    required: false,
    includeIfNull: false,
  )


  final String? threeLetterISOLanguageName;



  @JsonKey(
    
    name: r'ThreeLetterISOLanguageNames',
    required: false,
    includeIfNull: false,
  )


  final List<String>? threeLetterISOLanguageNames;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CultureDto &&
      other.name == name &&
      other.displayName == displayName &&
      other.twoLetterISOLanguageName == twoLetterISOLanguageName &&
      other.threeLetterISOLanguageName == threeLetterISOLanguageName &&
      other.threeLetterISOLanguageNames == threeLetterISOLanguageNames;

    @override
    int get hashCode =>
        name.hashCode +
        displayName.hashCode +
        twoLetterISOLanguageName.hashCode +
        (threeLetterISOLanguageName == null ? 0 : threeLetterISOLanguageName.hashCode) +
        threeLetterISOLanguageNames.hashCode;

  factory CultureDto.fromJson(Map<String, dynamic> json) => _$CultureDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CultureDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

