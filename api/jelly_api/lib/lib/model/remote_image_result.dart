//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/remote_image_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remote_image_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RemoteImageResult {
  /// Returns a new [RemoteImageResult] instance.
  RemoteImageResult({

     this.images,

     this.totalRecordCount,

     this.providers,
  });

      /// Gets or sets the images.
  @JsonKey(
    
    name: r'Images',
    required: false,
    includeIfNull: false,
  )


  final List<RemoteImageInfo>? images;



      /// Gets or sets the total record count.
  @JsonKey(
    
    name: r'TotalRecordCount',
    required: false,
    includeIfNull: false,
  )


  final int? totalRecordCount;



      /// Gets or sets the providers.
  @JsonKey(
    
    name: r'Providers',
    required: false,
    includeIfNull: false,
  )


  final List<String>? providers;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RemoteImageResult &&
      other.images == images &&
      other.totalRecordCount == totalRecordCount &&
      other.providers == providers;

    @override
    int get hashCode =>
        (images == null ? 0 : images.hashCode) +
        totalRecordCount.hashCode +
        (providers == null ? 0 : providers.hashCode);

  factory RemoteImageResult.fromJson(Map<String, dynamic> json) => _$RemoteImageResultFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteImageResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

