//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'query_filters_legacy.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueryFiltersLegacy {
  /// Returns a new [QueryFiltersLegacy] instance.
  QueryFiltersLegacy({

     this.genres,

     this.tags,

     this.officialRatings,

     this.years,
  });

  @JsonKey(
    
    name: r'Genres',
    required: false,
    includeIfNull: false,
  )


  final List<String>? genres;



  @JsonKey(
    
    name: r'Tags',
    required: false,
    includeIfNull: false,
  )


  final List<String>? tags;



  @JsonKey(
    
    name: r'OfficialRatings',
    required: false,
    includeIfNull: false,
  )


  final List<String>? officialRatings;



  @JsonKey(
    
    name: r'Years',
    required: false,
    includeIfNull: false,
  )


  final List<int>? years;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QueryFiltersLegacy &&
      other.genres == genres &&
      other.tags == tags &&
      other.officialRatings == officialRatings &&
      other.years == years;

    @override
    int get hashCode =>
        (genres == null ? 0 : genres.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        (officialRatings == null ? 0 : officialRatings.hashCode) +
        (years == null ? 0 : years.hashCode);

  factory QueryFiltersLegacy.fromJson(Map<String, dynamic> json) => _$QueryFiltersLegacyFromJson(json);

  Map<String, dynamic> toJson() => _$QueryFiltersLegacyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

