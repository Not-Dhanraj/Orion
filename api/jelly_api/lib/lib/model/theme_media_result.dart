//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/base_item_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'theme_media_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ThemeMediaResult {
  /// Returns a new [ThemeMediaResult] instance.
  ThemeMediaResult({

     this.items,

     this.totalRecordCount,

     this.startIndex,

     this.ownerId,
  });

      /// Gets or sets the items.
  @JsonKey(
    
    name: r'Items',
    required: false,
    includeIfNull: false,
  )


  final List<BaseItemDto>? items;



      /// Gets or sets the total number of records available.
  @JsonKey(
    
    name: r'TotalRecordCount',
    required: false,
    includeIfNull: false,
  )


  final int? totalRecordCount;



      /// Gets or sets the index of the first record in Items.
  @JsonKey(
    
    name: r'StartIndex',
    required: false,
    includeIfNull: false,
  )


  final int? startIndex;



      /// Gets or sets the owner id.
  @JsonKey(
    
    name: r'OwnerId',
    required: false,
    includeIfNull: false,
  )


  final String? ownerId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ThemeMediaResult &&
      other.items == items &&
      other.totalRecordCount == totalRecordCount &&
      other.startIndex == startIndex &&
      other.ownerId == ownerId;

    @override
    int get hashCode =>
        items.hashCode +
        totalRecordCount.hashCode +
        startIndex.hashCode +
        ownerId.hashCode;

  factory ThemeMediaResult.fromJson(Map<String, dynamic> json) => _$ThemeMediaResultFromJson(json);

  Map<String, dynamic> toJson() => _$ThemeMediaResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

