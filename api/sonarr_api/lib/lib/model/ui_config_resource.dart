//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
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

     this.shortDateFormat,

     this.longDateFormat,

     this.timeFormat,

     this.showRelativeDates,

     this.enableColorImpairedMode,

     this.theme,

     this.uiLanguage,
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
    
    name: r'theme',
    required: false,
    includeIfNull: false,
  )


  final String? theme;



  @JsonKey(
    
    name: r'uiLanguage',
    required: false,
    includeIfNull: false,
  )


  final int? uiLanguage;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UiConfigResource &&
      other.id == id &&
      other.firstDayOfWeek == firstDayOfWeek &&
      other.calendarWeekColumnHeader == calendarWeekColumnHeader &&
      other.shortDateFormat == shortDateFormat &&
      other.longDateFormat == longDateFormat &&
      other.timeFormat == timeFormat &&
      other.showRelativeDates == showRelativeDates &&
      other.enableColorImpairedMode == enableColorImpairedMode &&
      other.theme == theme &&
      other.uiLanguage == uiLanguage;

    @override
    int get hashCode =>
        id.hashCode +
        firstDayOfWeek.hashCode +
        (calendarWeekColumnHeader == null ? 0 : calendarWeekColumnHeader.hashCode) +
        (shortDateFormat == null ? 0 : shortDateFormat.hashCode) +
        (longDateFormat == null ? 0 : longDateFormat.hashCode) +
        (timeFormat == null ? 0 : timeFormat.hashCode) +
        showRelativeDates.hashCode +
        enableColorImpairedMode.hashCode +
        (theme == null ? 0 : theme.hashCode) +
        uiLanguage.hashCode;

  factory UiConfigResource.fromJson(Map<String, dynamic> json) => _$UiConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$UiConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

