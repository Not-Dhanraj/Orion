//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_subtitle_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UploadSubtitleDto {
  /// Returns a new [UploadSubtitleDto] instance.
  UploadSubtitleDto({

    required  this.language,

    required  this.format,

    required  this.isForced,

    required  this.isHearingImpaired,

    required  this.data,
  });

      /// Gets or sets the subtitle language.
  @JsonKey(
    
    name: r'Language',
    required: true,
    includeIfNull: false,
  )


  final String language;



      /// Gets or sets the subtitle format.
  @JsonKey(
    
    name: r'Format',
    required: true,
    includeIfNull: false,
  )


  final String format;



      /// Gets or sets a value indicating whether the subtitle is forced.
  @JsonKey(
    
    name: r'IsForced',
    required: true,
    includeIfNull: false,
  )


  final bool isForced;



      /// Gets or sets a value indicating whether the subtitle is for hearing impaired.
  @JsonKey(
    
    name: r'IsHearingImpaired',
    required: true,
    includeIfNull: false,
  )


  final bool isHearingImpaired;



      /// Gets or sets the subtitle data.
  @JsonKey(
    
    name: r'Data',
    required: true,
    includeIfNull: false,
  )


  final String data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UploadSubtitleDto &&
      other.language == language &&
      other.format == format &&
      other.isForced == isForced &&
      other.isHearingImpaired == isHearingImpaired &&
      other.data == data;

    @override
    int get hashCode =>
        language.hashCode +
        format.hashCode +
        isForced.hashCode +
        isHearingImpaired.hashCode +
        data.hashCode;

  factory UploadSubtitleDto.fromJson(Map<String, dynamic> json) => _$UploadSubtitleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UploadSubtitleDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

