//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/image_option.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'type_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TypeOptions {
  /// Returns a new [TypeOptions] instance.
  TypeOptions({

     this.type,

     this.metadataFetchers,

     this.metadataFetcherOrder,

     this.imageFetchers,

     this.imageFetcherOrder,

     this.imageOptions,
  });

  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final String? type;



  @JsonKey(
    
    name: r'MetadataFetchers',
    required: false,
    includeIfNull: false,
  )


  final List<String>? metadataFetchers;



  @JsonKey(
    
    name: r'MetadataFetcherOrder',
    required: false,
    includeIfNull: false,
  )


  final List<String>? metadataFetcherOrder;



  @JsonKey(
    
    name: r'ImageFetchers',
    required: false,
    includeIfNull: false,
  )


  final List<String>? imageFetchers;



  @JsonKey(
    
    name: r'ImageFetcherOrder',
    required: false,
    includeIfNull: false,
  )


  final List<String>? imageFetcherOrder;



  @JsonKey(
    
    name: r'ImageOptions',
    required: false,
    includeIfNull: false,
  )


  final List<ImageOption>? imageOptions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TypeOptions &&
      other.type == type &&
      other.metadataFetchers == metadataFetchers &&
      other.metadataFetcherOrder == metadataFetcherOrder &&
      other.imageFetchers == imageFetchers &&
      other.imageFetcherOrder == imageFetcherOrder &&
      other.imageOptions == imageOptions;

    @override
    int get hashCode =>
        (type == null ? 0 : type.hashCode) +
        (metadataFetchers == null ? 0 : metadataFetchers.hashCode) +
        (metadataFetcherOrder == null ? 0 : metadataFetcherOrder.hashCode) +
        (imageFetchers == null ? 0 : imageFetchers.hashCode) +
        (imageFetcherOrder == null ? 0 : imageFetcherOrder.hashCode) +
        (imageOptions == null ? 0 : imageOptions.hashCode);

  factory TypeOptions.fromJson(Map<String, dynamic> json) => _$TypeOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$TypeOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

