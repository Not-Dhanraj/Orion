//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/library_option_info_dto.dart';
import 'package:jelly_api/lib/model/library_type_options_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'library_options_result_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LibraryOptionsResultDto {
  /// Returns a new [LibraryOptionsResultDto] instance.
  LibraryOptionsResultDto({

     this.metadataSavers,

     this.metadataReaders,

     this.subtitleFetchers,

     this.lyricFetchers,

     this.mediaSegmentProviders,

     this.typeOptions,
  });

      /// Gets or sets the metadata savers.
  @JsonKey(
    
    name: r'MetadataSavers',
    required: false,
    includeIfNull: false,
  )


  final List<LibraryOptionInfoDto>? metadataSavers;



      /// Gets or sets the metadata readers.
  @JsonKey(
    
    name: r'MetadataReaders',
    required: false,
    includeIfNull: false,
  )


  final List<LibraryOptionInfoDto>? metadataReaders;



      /// Gets or sets the subtitle fetchers.
  @JsonKey(
    
    name: r'SubtitleFetchers',
    required: false,
    includeIfNull: false,
  )


  final List<LibraryOptionInfoDto>? subtitleFetchers;



      /// Gets or sets the list of lyric fetchers.
  @JsonKey(
    
    name: r'LyricFetchers',
    required: false,
    includeIfNull: false,
  )


  final List<LibraryOptionInfoDto>? lyricFetchers;



      /// Gets or sets the list of MediaSegment Providers.
  @JsonKey(
    
    name: r'MediaSegmentProviders',
    required: false,
    includeIfNull: false,
  )


  final List<LibraryOptionInfoDto>? mediaSegmentProviders;



      /// Gets or sets the type options.
  @JsonKey(
    
    name: r'TypeOptions',
    required: false,
    includeIfNull: false,
  )


  final List<LibraryTypeOptionsDto>? typeOptions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LibraryOptionsResultDto &&
      other.metadataSavers == metadataSavers &&
      other.metadataReaders == metadataReaders &&
      other.subtitleFetchers == subtitleFetchers &&
      other.lyricFetchers == lyricFetchers &&
      other.mediaSegmentProviders == mediaSegmentProviders &&
      other.typeOptions == typeOptions;

    @override
    int get hashCode =>
        metadataSavers.hashCode +
        metadataReaders.hashCode +
        subtitleFetchers.hashCode +
        lyricFetchers.hashCode +
        mediaSegmentProviders.hashCode +
        typeOptions.hashCode;

  factory LibraryOptionsResultDto.fromJson(Map<String, dynamic> json) => _$LibraryOptionsResultDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LibraryOptionsResultDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

