//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'branding_options_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BrandingOptionsDto {
  /// Returns a new [BrandingOptionsDto] instance.
  BrandingOptionsDto({

     this.loginDisclaimer,

     this.customCss,

     this.splashscreenEnabled,
  });

      /// Gets or sets the login disclaimer.
  @JsonKey(
    
    name: r'LoginDisclaimer',
    required: false,
    includeIfNull: false,
  )


  final String? loginDisclaimer;



      /// Gets or sets the custom CSS.
  @JsonKey(
    
    name: r'CustomCss',
    required: false,
    includeIfNull: false,
  )


  final String? customCss;



      /// Gets or sets a value indicating whether to enable the splashscreen.
  @JsonKey(
    
    name: r'SplashscreenEnabled',
    required: false,
    includeIfNull: false,
  )


  final bool? splashscreenEnabled;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BrandingOptionsDto &&
      other.loginDisclaimer == loginDisclaimer &&
      other.customCss == customCss &&
      other.splashscreenEnabled == splashscreenEnabled;

    @override
    int get hashCode =>
        (loginDisclaimer == null ? 0 : loginDisclaimer.hashCode) +
        (customCss == null ? 0 : customCss.hashCode) +
        splashscreenEnabled.hashCode;

  factory BrandingOptionsDto.fromJson(Map<String, dynamic> json) => _$BrandingOptionsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BrandingOptionsDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

