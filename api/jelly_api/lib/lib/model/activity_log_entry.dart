//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/log_level.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'activity_log_entry.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ActivityLogEntry {
  /// Returns a new [ActivityLogEntry] instance.
  ActivityLogEntry({

     this.id,

     this.name,

     this.overview,

     this.shortOverview,

     this.type,

     this.itemId,

     this.date,

     this.userId,

     this.userPrimaryImageTag,

     this.severity,
  });

      /// Gets or sets the identifier.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the overview.
  @JsonKey(
    
    name: r'Overview',
    required: false,
    includeIfNull: false,
  )


  final String? overview;



      /// Gets or sets the short overview.
  @JsonKey(
    
    name: r'ShortOverview',
    required: false,
    includeIfNull: false,
  )


  final String? shortOverview;



      /// Gets or sets the type.
  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final String? type;



      /// Gets or sets the item identifier.
  @JsonKey(
    
    name: r'ItemId',
    required: false,
    includeIfNull: false,
  )


  final String? itemId;



      /// Gets or sets the date.
  @JsonKey(
    
    name: r'Date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? date;



      /// Gets or sets the user identifier.
  @JsonKey(
    
    name: r'UserId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Gets or sets the user primary image tag.
  @Deprecated('userPrimaryImageTag has been deprecated')
  @JsonKey(
    
    name: r'UserPrimaryImageTag',
    required: false,
    includeIfNull: false,
  )


  final String? userPrimaryImageTag;



      /// Gets or sets the log severity.
  @JsonKey(
    
    name: r'Severity',
    required: false,
    includeIfNull: false,
  )


  final LogLevel? severity;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ActivityLogEntry &&
      other.id == id &&
      other.name == name &&
      other.overview == overview &&
      other.shortOverview == shortOverview &&
      other.type == type &&
      other.itemId == itemId &&
      other.date == date &&
      other.userId == userId &&
      other.userPrimaryImageTag == userPrimaryImageTag &&
      other.severity == severity;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        (overview == null ? 0 : overview.hashCode) +
        (shortOverview == null ? 0 : shortOverview.hashCode) +
        type.hashCode +
        (itemId == null ? 0 : itemId.hashCode) +
        date.hashCode +
        userId.hashCode +
        (userPrimaryImageTag == null ? 0 : userPrimaryImageTag.hashCode) +
        severity.hashCode;

  factory ActivityLogEntry.fromJson(Map<String, dynamic> json) => _$ActivityLogEntryFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityLogEntryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

