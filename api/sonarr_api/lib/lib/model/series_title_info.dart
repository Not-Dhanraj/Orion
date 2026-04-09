//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'series_title_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SeriesTitleInfo {
  /// Returns a new [SeriesTitleInfo] instance.
  SeriesTitleInfo({

     this.title,

     this.titleWithoutYear,

     this.year,

     this.allTitles,
  });

  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'titleWithoutYear',
    required: false,
    includeIfNull: false,
  )


  final String? titleWithoutYear;



  @JsonKey(
    
    name: r'year',
    required: false,
    includeIfNull: false,
  )


  final int? year;



  @JsonKey(
    
    name: r'allTitles',
    required: false,
    includeIfNull: false,
  )


  final List<String>? allTitles;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SeriesTitleInfo &&
      other.title == title &&
      other.titleWithoutYear == titleWithoutYear &&
      other.year == year &&
      other.allTitles == allTitles;

    @override
    int get hashCode =>
        (title == null ? 0 : title.hashCode) +
        (titleWithoutYear == null ? 0 : titleWithoutYear.hashCode) +
        year.hashCode +
        (allTitles == null ? 0 : allTitles.hashCode);

  factory SeriesTitleInfo.fromJson(Map<String, dynamic> json) => _$SeriesTitleInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesTitleInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

