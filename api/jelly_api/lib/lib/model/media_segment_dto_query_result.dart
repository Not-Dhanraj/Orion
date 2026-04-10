//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/media_segment_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_segment_dto_query_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaSegmentDtoQueryResult {
  /// Returns a new [MediaSegmentDtoQueryResult] instance.
  MediaSegmentDtoQueryResult({

     this.items,

     this.totalRecordCount,

     this.startIndex,
  });

      /// Gets or sets the items.
  @JsonKey(
    
    name: r'Items',
    required: false,
    includeIfNull: false,
  )


  final List<MediaSegmentDto>? items;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaSegmentDtoQueryResult &&
      other.items == items &&
      other.totalRecordCount == totalRecordCount &&
      other.startIndex == startIndex;

    @override
    int get hashCode =>
        items.hashCode +
        totalRecordCount.hashCode +
        startIndex.hashCode;

  factory MediaSegmentDtoQueryResult.fromJson(Map<String, dynamic> json) => _$MediaSegmentDtoQueryResultFromJson(json);

  Map<String, dynamic> toJson() => _$MediaSegmentDtoQueryResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

