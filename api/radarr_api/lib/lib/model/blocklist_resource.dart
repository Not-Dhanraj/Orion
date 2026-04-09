//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/download_protocol.dart';
import 'package:radarr_api/lib/model/movie_resource.dart';
import 'package:radarr_api/lib/model/custom_format_resource.dart';
import 'package:radarr_api/lib/model/quality_model.dart';
import 'package:radarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'blocklist_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BlocklistResource {
  /// Returns a new [BlocklistResource] instance.
  BlocklistResource({

     this.id,

     this.movieId,

     this.sourceTitle,

     this.languages,

     this.quality,

     this.customFormats,

     this.date,

     this.protocol,

     this.indexer,

     this.message,

     this.movie,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'movieId',
    required: false,
    includeIfNull: false,
  )


  final int? movieId;



  @JsonKey(
    
    name: r'sourceTitle',
    required: false,
    includeIfNull: false,
  )


  final String? sourceTitle;



  @JsonKey(
    
    name: r'languages',
    required: false,
    includeIfNull: false,
  )


  final List<Language>? languages;



  @JsonKey(
    
    name: r'quality',
    required: false,
    includeIfNull: false,
  )


  final QualityModel? quality;



  @JsonKey(
    
    name: r'customFormats',
    required: false,
    includeIfNull: false,
  )


  final List<CustomFormatResource>? customFormats;



  @JsonKey(
    
    name: r'date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? date;



  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false,
  )


  final DownloadProtocol? protocol;



  @JsonKey(
    
    name: r'indexer',
    required: false,
    includeIfNull: false,
  )


  final String? indexer;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final String? message;



  @JsonKey(
    
    name: r'movie',
    required: false,
    includeIfNull: false,
  )


  final MovieResource? movie;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BlocklistResource &&
      other.id == id &&
      other.movieId == movieId &&
      other.sourceTitle == sourceTitle &&
      other.languages == languages &&
      other.quality == quality &&
      other.customFormats == customFormats &&
      other.date == date &&
      other.protocol == protocol &&
      other.indexer == indexer &&
      other.message == message &&
      other.movie == movie;

    @override
    int get hashCode =>
        id.hashCode +
        movieId.hashCode +
        (sourceTitle == null ? 0 : sourceTitle.hashCode) +
        (languages == null ? 0 : languages.hashCode) +
        quality.hashCode +
        (customFormats == null ? 0 : customFormats.hashCode) +
        date.hashCode +
        protocol.hashCode +
        (indexer == null ? 0 : indexer.hashCode) +
        (message == null ? 0 : message.hashCode) +
        movie.hashCode;

  factory BlocklistResource.fromJson(Map<String, dynamic> json) => _$BlocklistResourceFromJson(json);

  Map<String, dynamic> toJson() => _$BlocklistResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

