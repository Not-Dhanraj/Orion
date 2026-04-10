//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/search_hint.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_hint_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SearchHintResult {
  /// Returns a new [SearchHintResult] instance.
  SearchHintResult({

     this.searchHints,

     this.totalRecordCount,
  });

      /// Gets the search hints.
  @JsonKey(
    
    name: r'SearchHints',
    required: false,
    includeIfNull: false,
  )


  final List<SearchHint>? searchHints;



      /// Gets the total record count.
  @JsonKey(
    
    name: r'TotalRecordCount',
    required: false,
    includeIfNull: false,
  )


  final int? totalRecordCount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SearchHintResult &&
      other.searchHints == searchHints &&
      other.totalRecordCount == totalRecordCount;

    @override
    int get hashCode =>
        searchHints.hashCode +
        totalRecordCount.hashCode;

  factory SearchHintResult.fromJson(Map<String, dynamic> json) => _$SearchHintResultFromJson(json);

  Map<String, dynamic> toJson() => _$SearchHintResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

