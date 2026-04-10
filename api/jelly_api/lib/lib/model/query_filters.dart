//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/name_guid_pair.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'query_filters.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueryFilters {
  /// Returns a new [QueryFilters] instance.
  QueryFilters({

     this.genres,

     this.tags,
  });

  @JsonKey(
    
    name: r'Genres',
    required: false,
    includeIfNull: false,
  )


  final List<NameGuidPair>? genres;



  @JsonKey(
    
    name: r'Tags',
    required: false,
    includeIfNull: false,
  )


  final List<String>? tags;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QueryFilters &&
      other.genres == genres &&
      other.tags == tags;

    @override
    int get hashCode =>
        (genres == null ? 0 : genres.hashCode) +
        (tags == null ? 0 : tags.hashCode);

  factory QueryFilters.fromJson(Map<String, dynamic> json) => _$QueryFiltersFromJson(json);

  Map<String, dynamic> toJson() => _$QueryFiltersToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

