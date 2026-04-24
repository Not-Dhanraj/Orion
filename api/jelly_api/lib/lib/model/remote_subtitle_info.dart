//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remote_subtitle_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RemoteSubtitleInfo {
  /// Returns a new [RemoteSubtitleInfo] instance.
  RemoteSubtitleInfo({

     this.threeLetterISOLanguageName,

     this.id,

     this.providerName,

     this.name,

     this.format,

     this.author,

     this.comment,

     this.dateCreated,

     this.communityRating,

     this.frameRate,

     this.downloadCount,

     this.isHashMatch,

     this.aiTranslated,

     this.machineTranslated,

     this.forced,

     this.hearingImpaired,
  });

  @JsonKey(
    
    name: r'ThreeLetterISOLanguageName',
    required: false,
    includeIfNull: false,
  )


  final String? threeLetterISOLanguageName;



  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'ProviderName',
    required: false,
    includeIfNull: false,
  )


  final String? providerName;



  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'Format',
    required: false,
    includeIfNull: false,
  )


  final String? format;



  @JsonKey(
    
    name: r'Author',
    required: false,
    includeIfNull: false,
  )


  final String? author;



  @JsonKey(
    
    name: r'Comment',
    required: false,
    includeIfNull: false,
  )


  final String? comment;



  @JsonKey(
    
    name: r'DateCreated',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateCreated;



  @JsonKey(
    
    name: r'CommunityRating',
    required: false,
    includeIfNull: false,
  )


  final double? communityRating;



  @JsonKey(
    
    name: r'FrameRate',
    required: false,
    includeIfNull: false,
  )


  final double? frameRate;



  @JsonKey(
    
    name: r'DownloadCount',
    required: false,
    includeIfNull: false,
  )


  final int? downloadCount;



  @JsonKey(
    
    name: r'IsHashMatch',
    required: false,
    includeIfNull: false,
  )


  final bool? isHashMatch;



  @JsonKey(
    
    name: r'AiTranslated',
    required: false,
    includeIfNull: false,
  )


  final bool? aiTranslated;



  @JsonKey(
    
    name: r'MachineTranslated',
    required: false,
    includeIfNull: false,
  )


  final bool? machineTranslated;



  @JsonKey(
    
    name: r'Forced',
    required: false,
    includeIfNull: false,
  )


  final bool? forced;



  @JsonKey(
    
    name: r'HearingImpaired',
    required: false,
    includeIfNull: false,
  )


  final bool? hearingImpaired;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RemoteSubtitleInfo &&
      other.threeLetterISOLanguageName == threeLetterISOLanguageName &&
      other.id == id &&
      other.providerName == providerName &&
      other.name == name &&
      other.format == format &&
      other.author == author &&
      other.comment == comment &&
      other.dateCreated == dateCreated &&
      other.communityRating == communityRating &&
      other.frameRate == frameRate &&
      other.downloadCount == downloadCount &&
      other.isHashMatch == isHashMatch &&
      other.aiTranslated == aiTranslated &&
      other.machineTranslated == machineTranslated &&
      other.forced == forced &&
      other.hearingImpaired == hearingImpaired;

    @override
    int get hashCode =>
        (threeLetterISOLanguageName == null ? 0 : threeLetterISOLanguageName.hashCode) +
        (id == null ? 0 : id.hashCode) +
        (providerName == null ? 0 : providerName.hashCode) +
        (name == null ? 0 : name.hashCode) +
        (format == null ? 0 : format.hashCode) +
        (author == null ? 0 : author.hashCode) +
        (comment == null ? 0 : comment.hashCode) +
        (dateCreated == null ? 0 : dateCreated.hashCode) +
        (communityRating == null ? 0 : communityRating.hashCode) +
        (frameRate == null ? 0 : frameRate.hashCode) +
        (downloadCount == null ? 0 : downloadCount.hashCode) +
        (isHashMatch == null ? 0 : isHashMatch.hashCode) +
        (aiTranslated == null ? 0 : aiTranslated.hashCode) +
        (machineTranslated == null ? 0 : machineTranslated.hashCode) +
        (forced == null ? 0 : forced.hashCode) +
        (hearingImpaired == null ? 0 : hearingImpaired.hashCode);

  factory RemoteSubtitleInfo.fromJson(Map<String, dynamic> json) => _$RemoteSubtitleInfoFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteSubtitleInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

