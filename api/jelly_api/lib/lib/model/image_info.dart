//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/image_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImageInfo {
  /// Returns a new [ImageInfo] instance.
  ImageInfo({

     this.imageType,

     this.imageIndex,

     this.imageTag,

     this.path,

     this.blurHash,

     this.height,

     this.width,

     this.size,
  });

      /// Gets or sets the type of the image.
  @JsonKey(
    
    name: r'ImageType',
    required: false,
    includeIfNull: false,
  )


  final ImageType? imageType;



      /// Gets or sets the index of the image.
  @JsonKey(
    
    name: r'ImageIndex',
    required: false,
    includeIfNull: false,
  )


  final int? imageIndex;



      /// Gets or sets the image tag.
  @JsonKey(
    
    name: r'ImageTag',
    required: false,
    includeIfNull: false,
  )


  final String? imageTag;



      /// Gets or sets the path.
  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



      /// Gets or sets the blurhash.
  @JsonKey(
    
    name: r'BlurHash',
    required: false,
    includeIfNull: false,
  )


  final String? blurHash;



      /// Gets or sets the height.
  @JsonKey(
    
    name: r'Height',
    required: false,
    includeIfNull: false,
  )


  final int? height;



      /// Gets or sets the width.
  @JsonKey(
    
    name: r'Width',
    required: false,
    includeIfNull: false,
  )


  final int? width;



      /// Gets or sets the size.
  @JsonKey(
    
    name: r'Size',
    required: false,
    includeIfNull: false,
  )


  final int? size;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImageInfo &&
      other.imageType == imageType &&
      other.imageIndex == imageIndex &&
      other.imageTag == imageTag &&
      other.path == path &&
      other.blurHash == blurHash &&
      other.height == height &&
      other.width == width &&
      other.size == size;

    @override
    int get hashCode =>
        imageType.hashCode +
        (imageIndex == null ? 0 : imageIndex.hashCode) +
        (imageTag == null ? 0 : imageTag.hashCode) +
        (path == null ? 0 : path.hashCode) +
        (blurHash == null ? 0 : blurHash.hashCode) +
        (height == null ? 0 : height.hashCode) +
        (width == null ? 0 : width.hashCode) +
        size.hashCode;

  factory ImageInfo.fromJson(Map<String, dynamic> json) => _$ImageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ImageInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

