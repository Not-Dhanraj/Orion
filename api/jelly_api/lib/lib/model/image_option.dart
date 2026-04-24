//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/image_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_option.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImageOption {
  /// Returns a new [ImageOption] instance.
  ImageOption({

     this.type,

     this.limit,

     this.minWidth,
  });

      /// Gets or sets the type.
  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final ImageType? type;



      /// Gets or sets the limit.
  @JsonKey(
    
    name: r'Limit',
    required: false,
    includeIfNull: false,
  )


  final int? limit;



      /// Gets or sets the minimum width.
  @JsonKey(
    
    name: r'MinWidth',
    required: false,
    includeIfNull: false,
  )


  final int? minWidth;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImageOption &&
      other.type == type &&
      other.limit == limit &&
      other.minWidth == minWidth;

    @override
    int get hashCode =>
        type.hashCode +
        limit.hashCode +
        minWidth.hashCode;

  factory ImageOption.fromJson(Map<String, dynamic> json) => _$ImageOptionFromJson(json);

  Map<String, dynamic> toJson() => _$ImageOptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

