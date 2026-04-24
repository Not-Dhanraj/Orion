//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'metadata_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MetadataOptions {
  /// Returns a new [MetadataOptions] instance.
  MetadataOptions({

     this.itemType,

     this.disabledMetadataSavers,

     this.localMetadataReaderOrder,

     this.disabledMetadataFetchers,

     this.metadataFetcherOrder,

     this.disabledImageFetchers,

     this.imageFetcherOrder,
  });

  @JsonKey(
    
    name: r'ItemType',
    required: false,
    includeIfNull: false,
  )


  final String? itemType;



  @JsonKey(
    
    name: r'DisabledMetadataSavers',
    required: false,
    includeIfNull: false,
  )


  final List<String>? disabledMetadataSavers;



  @JsonKey(
    
    name: r'LocalMetadataReaderOrder',
    required: false,
    includeIfNull: false,
  )


  final List<String>? localMetadataReaderOrder;



  @JsonKey(
    
    name: r'DisabledMetadataFetchers',
    required: false,
    includeIfNull: false,
  )


  final List<String>? disabledMetadataFetchers;



  @JsonKey(
    
    name: r'MetadataFetcherOrder',
    required: false,
    includeIfNull: false,
  )


  final List<String>? metadataFetcherOrder;



  @JsonKey(
    
    name: r'DisabledImageFetchers',
    required: false,
    includeIfNull: false,
  )


  final List<String>? disabledImageFetchers;



  @JsonKey(
    
    name: r'ImageFetcherOrder',
    required: false,
    includeIfNull: false,
  )


  final List<String>? imageFetcherOrder;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MetadataOptions &&
      other.itemType == itemType &&
      other.disabledMetadataSavers == disabledMetadataSavers &&
      other.localMetadataReaderOrder == localMetadataReaderOrder &&
      other.disabledMetadataFetchers == disabledMetadataFetchers &&
      other.metadataFetcherOrder == metadataFetcherOrder &&
      other.disabledImageFetchers == disabledImageFetchers &&
      other.imageFetcherOrder == imageFetcherOrder;

    @override
    int get hashCode =>
        (itemType == null ? 0 : itemType.hashCode) +
        (disabledMetadataSavers == null ? 0 : disabledMetadataSavers.hashCode) +
        (localMetadataReaderOrder == null ? 0 : localMetadataReaderOrder.hashCode) +
        (disabledMetadataFetchers == null ? 0 : disabledMetadataFetchers.hashCode) +
        (metadataFetcherOrder == null ? 0 : metadataFetcherOrder.hashCode) +
        (disabledImageFetchers == null ? 0 : disabledImageFetchers.hashCode) +
        (imageFetcherOrder == null ? 0 : imageFetcherOrder.hashCode);

  factory MetadataOptions.fromJson(Map<String, dynamic> json) => _$MetadataOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

