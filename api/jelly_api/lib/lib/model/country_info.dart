//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CountryInfo {
  /// Returns a new [CountryInfo] instance.
  CountryInfo({

     this.name,

     this.displayName,

     this.twoLetterISORegionName,

     this.threeLetterISORegionName,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the display name.
  @JsonKey(
    
    name: r'DisplayName',
    required: false,
    includeIfNull: false,
  )


  final String? displayName;



      /// Gets or sets the name of the two letter ISO region.
  @JsonKey(
    
    name: r'TwoLetterISORegionName',
    required: false,
    includeIfNull: false,
  )


  final String? twoLetterISORegionName;



      /// Gets or sets the name of the three letter ISO region.
  @JsonKey(
    
    name: r'ThreeLetterISORegionName',
    required: false,
    includeIfNull: false,
  )


  final String? threeLetterISORegionName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CountryInfo &&
      other.name == name &&
      other.displayName == displayName &&
      other.twoLetterISORegionName == twoLetterISORegionName &&
      other.threeLetterISORegionName == threeLetterISORegionName;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (displayName == null ? 0 : displayName.hashCode) +
        (twoLetterISORegionName == null ? 0 : twoLetterISORegionName.hashCode) +
        (threeLetterISORegionName == null ? 0 : threeLetterISORegionName.hashCode);

  factory CountryInfo.fromJson(Map<String, dynamic> json) => _$CountryInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CountryInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

