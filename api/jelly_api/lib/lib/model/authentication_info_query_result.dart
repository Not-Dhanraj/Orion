//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/authentication_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'authentication_info_query_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AuthenticationInfoQueryResult {
  /// Returns a new [AuthenticationInfoQueryResult] instance.
  AuthenticationInfoQueryResult({

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


  final List<AuthenticationInfo>? items;



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
    bool operator ==(Object other) => identical(this, other) || other is AuthenticationInfoQueryResult &&
      other.items == items &&
      other.totalRecordCount == totalRecordCount &&
      other.startIndex == startIndex;

    @override
    int get hashCode =>
        items.hashCode +
        totalRecordCount.hashCode +
        startIndex.hashCode;

  factory AuthenticationInfoQueryResult.fromJson(Map<String, dynamic> json) => _$AuthenticationInfoQueryResultFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationInfoQueryResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

