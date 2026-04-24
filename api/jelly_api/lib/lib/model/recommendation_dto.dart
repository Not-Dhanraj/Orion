//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/base_item_dto.dart';
import 'package:jelly_api/lib/model/recommendation_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recommendation_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RecommendationDto {
  /// Returns a new [RecommendationDto] instance.
  RecommendationDto({

     this.items,

     this.recommendationType,

     this.baselineItemName,

     this.categoryId,
  });

  @JsonKey(
    
    name: r'Items',
    required: false,
    includeIfNull: false,
  )


  final List<BaseItemDto>? items;



  @JsonKey(
    
    name: r'RecommendationType',
    required: false,
    includeIfNull: false,
  )


  final RecommendationType? recommendationType;



  @JsonKey(
    
    name: r'BaselineItemName',
    required: false,
    includeIfNull: false,
  )


  final String? baselineItemName;



  @JsonKey(
    
    name: r'CategoryId',
    required: false,
    includeIfNull: false,
  )


  final String? categoryId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RecommendationDto &&
      other.items == items &&
      other.recommendationType == recommendationType &&
      other.baselineItemName == baselineItemName &&
      other.categoryId == categoryId;

    @override
    int get hashCode =>
        (items == null ? 0 : items.hashCode) +
        recommendationType.hashCode +
        (baselineItemName == null ? 0 : baselineItemName.hashCode) +
        categoryId.hashCode;

  factory RecommendationDto.fromJson(Map<String, dynamic> json) => _$RecommendationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

