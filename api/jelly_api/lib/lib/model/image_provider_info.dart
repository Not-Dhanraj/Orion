//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/image_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_provider_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImageProviderInfo {
  /// Returns a new [ImageProviderInfo] instance.
  ImageProviderInfo({

     this.name,

     this.supportedImages,
  });

      /// Gets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets the supported image types.
  @JsonKey(
    
    name: r'SupportedImages',
    required: false,
    includeIfNull: false,
  )


  final List<ImageType>? supportedImages;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImageProviderInfo &&
      other.name == name &&
      other.supportedImages == supportedImages;

    @override
    int get hashCode =>
        name.hashCode +
        supportedImages.hashCode;

  factory ImageProviderInfo.fromJson(Map<String, dynamic> json) => _$ImageProviderInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ImageProviderInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

