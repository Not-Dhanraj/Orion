//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/sort_direction.dart';
import 'package:sonarr_api/lib/model/history_resource.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'history_resource_paging_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HistoryResourcePagingResource {
  /// Returns a new [HistoryResourcePagingResource] instance.
  HistoryResourcePagingResource({

     this.page,

     this.pageSize,

     this.sortKey,

     this.sortDirection,

     this.totalRecords,

     this.records,
  });

  @JsonKey(
    
    name: r'page',
    required: false,
    includeIfNull: false,
  )


  final int? page;



  @JsonKey(
    
    name: r'pageSize',
    required: false,
    includeIfNull: false,
  )


  final int? pageSize;



  @JsonKey(
    
    name: r'sortKey',
    required: false,
    includeIfNull: false,
  )


  final String? sortKey;



  @JsonKey(
    
    name: r'sortDirection',
    required: false,
    includeIfNull: false,
  )


  final SortDirection? sortDirection;



  @JsonKey(
    
    name: r'totalRecords',
    required: false,
    includeIfNull: false,
  )


  final int? totalRecords;



  @JsonKey(
    
    name: r'records',
    required: false,
    includeIfNull: false,
  )


  final List<HistoryResource>? records;





    @override
    bool operator ==(Object other) => identical(this, other) || other is HistoryResourcePagingResource &&
      other.page == page &&
      other.pageSize == pageSize &&
      other.sortKey == sortKey &&
      other.sortDirection == sortDirection &&
      other.totalRecords == totalRecords &&
      other.records == records;

    @override
    int get hashCode =>
        page.hashCode +
        pageSize.hashCode +
        (sortKey == null ? 0 : sortKey.hashCode) +
        sortDirection.hashCode +
        totalRecords.hashCode +
        (records == null ? 0 : records.hashCode);

  factory HistoryResourcePagingResource.fromJson(Map<String, dynamic> json) => _$HistoryResourcePagingResourceFromJson(json);

  Map<String, dynamic> toJson() => _$HistoryResourcePagingResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

