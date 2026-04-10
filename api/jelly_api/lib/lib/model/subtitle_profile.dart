//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/subtitle_delivery_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subtitle_profile.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SubtitleProfile {
  /// Returns a new [SubtitleProfile] instance.
  SubtitleProfile({

     this.format,

     this.method,

     this.didlMode,

     this.language,

     this.container,
  });

      /// Gets or sets the format.
  @JsonKey(
    
    name: r'Format',
    required: false,
    includeIfNull: false,
  )


  final String? format;



      /// Gets or sets the delivery method.
  @JsonKey(
    
    name: r'Method',
    required: false,
    includeIfNull: false,
  )


  final SubtitleDeliveryMethod? method;



      /// Gets or sets the DIDL mode.
  @JsonKey(
    
    name: r'DidlMode',
    required: false,
    includeIfNull: false,
  )


  final String? didlMode;



      /// Gets or sets the language.
  @JsonKey(
    
    name: r'Language',
    required: false,
    includeIfNull: false,
  )


  final String? language;



      /// Gets or sets the container.
  @JsonKey(
    
    name: r'Container',
    required: false,
    includeIfNull: false,
  )


  final String? container;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SubtitleProfile &&
      other.format == format &&
      other.method == method &&
      other.didlMode == didlMode &&
      other.language == language &&
      other.container == container;

    @override
    int get hashCode =>
        (format == null ? 0 : format.hashCode) +
        method.hashCode +
        (didlMode == null ? 0 : didlMode.hashCode) +
        (language == null ? 0 : language.hashCode) +
        (container == null ? 0 : container.hashCode);

  factory SubtitleProfile.fromJson(Map<String, dynamic> json) => _$SubtitleProfileFromJson(json);

  Map<String, dynamic> toJson() => _$SubtitleProfileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

