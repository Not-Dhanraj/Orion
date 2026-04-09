//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/movie_runtime_format_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_config_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UiConfigResource {
  /// Returns a new [UiConfigResource] instance.
  UiConfigResource({

     this.id,

     this.firstDayOfWeek,

     this.calendarWeekColumnHeader,

     this.movieRuntimeFormat,

     this.shortDateFormat,

     this.longDateFormat,

     this.timeFormat,

     this.showRelativeDates,

     this.enableColorImpairedMode,

     this.movieInfoLanguage,

     this.uiLanguage,

     this.theme,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'firstDayOfWeek',
    required: false,
    includeIfNull: false,
  )


  final int? firstDayOfWeek;



  @JsonKey(
    
    name: r'calendarWeekColumnHeader',
    required: false,
    includeIfNull: false,
  )


  final String? calendarWeekColumnHeader;



  @JsonKey(
    
    name: r'movieRuntimeFormat',
    required: false,
    includeIfNull: false,
  )


  final MovieRuntimeFormatType? movieRuntimeFormat;



  @JsonKey(
    
    name: r'shortDateFormat',
    required: false,
    includeIfNull: false,
  )


  final String? shortDateFormat;



  @JsonKey(
    
    name: r'longDateFormat',
    required: false,
    includeIfNull: false,
  )


  final String? longDateFormat;



  @JsonKey(
    
    name: r'timeFormat',
    required: false,
    includeIfNull: false,
  )


  final String? timeFormat;



  @JsonKey(
    
    name: r'showRelativeDates',
    required: false,
    includeIfNull: false,
  )


  final bool? showRelativeDates;



  @JsonKey(
    
    name: r'enableColorImpairedMode',
    required: false,
    includeIfNull: false,
  )


  final bool? enableColorImpairedMode;



  @JsonKey(
    
    name: r'movieInfoLanguage',
    required: false,
    includeIfNull: false,
  )


  final int? movieInfoLanguage;



  @JsonKey(
    
    name: r'uiLanguage',
    required: false,
    includeIfNull: false,
  )


  final int? uiLanguage;



  @JsonKey(
    
    name: r'theme',
    required: false,
    includeIfNull: false,
  )


  final String? theme;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UiConfigResource &&
      other.id == id &&
      other.firstDayOfWeek == firstDayOfWeek &&
      other.calendarWeekColumnHeader == calendarWeekColumnHeader &&
      other.movieRuntimeFormat == movieRuntimeFormat &&
      other.shortDateFormat == shortDateFormat &&
      other.longDateFormat == longDateFormat &&
      other.timeFormat == timeFormat &&
      other.showRelativeDates == showRelativeDates &&
      other.enableColorImpairedMode == enableColorImpairedMode &&
      other.movieInfoLanguage == movieInfoLanguage &&
      other.uiLanguage == uiLanguage &&
      other.theme == theme;

    @override
    int get hashCode =>
        id.hashCode +
        firstDayOfWeek.hashCode +
        (calendarWeekColumnHeader == null ? 0 : calendarWeekColumnHeader.hashCode) +
        movieRuntimeFormat.hashCode +
        (shortDateFormat == null ? 0 : shortDateFormat.hashCode) +
        (longDateFormat == null ? 0 : longDateFormat.hashCode) +
        (timeFormat == null ? 0 : timeFormat.hashCode) +
        showRelativeDates.hashCode +
        enableColorImpairedMode.hashCode +
        movieInfoLanguage.hashCode +
        uiLanguage.hashCode +
        (theme == null ? 0 : theme.hashCode);

  factory UiConfigResource.fromJson(Map<String, dynamic> json) => _$UiConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$UiConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

