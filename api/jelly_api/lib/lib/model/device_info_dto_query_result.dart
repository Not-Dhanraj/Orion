//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/device_info_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'device_info_dto_query_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeviceInfoDtoQueryResult {
  /// Returns a new [DeviceInfoDtoQueryResult] instance.
  DeviceInfoDtoQueryResult({

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


  final List<DeviceInfoDto>? items;



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
    bool operator ==(Object other) => identical(this, other) || other is DeviceInfoDtoQueryResult &&
      other.items == items &&
      other.totalRecordCount == totalRecordCount &&
      other.startIndex == startIndex;

    @override
    int get hashCode =>
        items.hashCode +
        totalRecordCount.hashCode +
        startIndex.hashCode;

  factory DeviceInfoDtoQueryResult.fromJson(Map<String, dynamic> json) => _$DeviceInfoDtoQueryResultFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceInfoDtoQueryResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

