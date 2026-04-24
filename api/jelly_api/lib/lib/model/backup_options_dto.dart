//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'backup_options_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupOptionsDto {
  /// Returns a new [BackupOptionsDto] instance.
  BackupOptionsDto({

     this.metadata,

     this.trickplay,

     this.subtitles,

     this.database,
  });

      /// Gets or sets a value indicating whether the archive contains the Metadata contents.
  @JsonKey(
    
    name: r'Metadata',
    required: false,
    includeIfNull: false,
  )


  final bool? metadata;



      /// Gets or sets a value indicating whether the archive contains the Trickplay contents.
  @JsonKey(
    
    name: r'Trickplay',
    required: false,
    includeIfNull: false,
  )


  final bool? trickplay;



      /// Gets or sets a value indicating whether the archive contains the Subtitle contents.
  @JsonKey(
    
    name: r'Subtitles',
    required: false,
    includeIfNull: false,
  )


  final bool? subtitles;



      /// Gets or sets a value indicating whether the archive contains the Database contents.
  @JsonKey(
    
    name: r'Database',
    required: false,
    includeIfNull: false,
  )


  final bool? database;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BackupOptionsDto &&
      other.metadata == metadata &&
      other.trickplay == trickplay &&
      other.subtitles == subtitles &&
      other.database == database;

    @override
    int get hashCode =>
        metadata.hashCode +
        trickplay.hashCode +
        subtitles.hashCode +
        database.hashCode;

  factory BackupOptionsDto.fromJson(Map<String, dynamic> json) => _$BackupOptionsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BackupOptionsDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

