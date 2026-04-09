//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/log_resource.dart';
import 'package:radarr_api/lib/model/sort_direction.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'log_resource_paging_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LogResourcePagingResource {
  /// Returns a new [LogResourcePagingResource] instance.
  LogResourcePagingResource({

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


  final List<LogResource>? records;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LogResourcePagingResource &&
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

  factory LogResourcePagingResource.fromJson(Map<String, dynamic> json) => _$LogResourcePagingResourceFromJson(json);

  Map<String, dynamic> toJson() => _$LogResourcePagingResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

