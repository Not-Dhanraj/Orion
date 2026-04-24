//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'xbmc_metadata_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class XbmcMetadataOptions {
  /// Returns a new [XbmcMetadataOptions] instance.
  XbmcMetadataOptions({

     this.userId,

     this.releaseDateFormat,

     this.saveImagePathsInNfo,

     this.enablePathSubstitution,

     this.enableExtraThumbsDuplication,
  });

  @JsonKey(
    
    name: r'UserId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



  @JsonKey(
    
    name: r'ReleaseDateFormat',
    required: false,
    includeIfNull: false,
  )


  final String? releaseDateFormat;



  @JsonKey(
    
    name: r'SaveImagePathsInNfo',
    required: false,
    includeIfNull: false,
  )


  final bool? saveImagePathsInNfo;



  @JsonKey(
    
    name: r'EnablePathSubstitution',
    required: false,
    includeIfNull: false,
  )


  final bool? enablePathSubstitution;



  @JsonKey(
    
    name: r'EnableExtraThumbsDuplication',
    required: false,
    includeIfNull: false,
  )


  final bool? enableExtraThumbsDuplication;





    @override
    bool operator ==(Object other) => identical(this, other) || other is XbmcMetadataOptions &&
      other.userId == userId &&
      other.releaseDateFormat == releaseDateFormat &&
      other.saveImagePathsInNfo == saveImagePathsInNfo &&
      other.enablePathSubstitution == enablePathSubstitution &&
      other.enableExtraThumbsDuplication == enableExtraThumbsDuplication;

    @override
    int get hashCode =>
        (userId == null ? 0 : userId.hashCode) +
        releaseDateFormat.hashCode +
        saveImagePathsInNfo.hashCode +
        enablePathSubstitution.hashCode +
        enableExtraThumbsDuplication.hashCode;

  factory XbmcMetadataOptions.fromJson(Map<String, dynamic> json) => _$XbmcMetadataOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$XbmcMetadataOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

