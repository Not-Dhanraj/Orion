//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/external_id_info.dart';
import 'package:jelly_api/lib/model/collection_type.dart';
import 'package:jelly_api/lib/model/parental_rating.dart';
import 'package:jelly_api/lib/model/country_info.dart';
import 'package:jelly_api/lib/model/culture_dto.dart';
import 'package:jelly_api/lib/model/name_value_pair.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'metadata_editor_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MetadataEditorInfo {
  /// Returns a new [MetadataEditorInfo] instance.
  MetadataEditorInfo({

     this.parentalRatingOptions,

     this.countries,

     this.cultures,

     this.externalIdInfos,

     this.contentType,

     this.contentTypeOptions,
  });

      /// Gets or sets the parental rating options.
  @JsonKey(
    
    name: r'ParentalRatingOptions',
    required: false,
    includeIfNull: false,
  )


  final List<ParentalRating>? parentalRatingOptions;



      /// Gets or sets the countries.
  @JsonKey(
    
    name: r'Countries',
    required: false,
    includeIfNull: false,
  )


  final List<CountryInfo>? countries;



      /// Gets or sets the cultures.
  @JsonKey(
    
    name: r'Cultures',
    required: false,
    includeIfNull: false,
  )


  final List<CultureDto>? cultures;



      /// Gets or sets the external id infos.
  @JsonKey(
    
    name: r'ExternalIdInfos',
    required: false,
    includeIfNull: false,
  )


  final List<ExternalIdInfo>? externalIdInfos;



      /// Gets or sets the content type.
  @JsonKey(
    
    name: r'ContentType',
    required: false,
    includeIfNull: false,
  )


  final CollectionType? contentType;



      /// Gets or sets the content type options.
  @JsonKey(
    
    name: r'ContentTypeOptions',
    required: false,
    includeIfNull: false,
  )


  final List<NameValuePair>? contentTypeOptions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MetadataEditorInfo &&
      other.parentalRatingOptions == parentalRatingOptions &&
      other.countries == countries &&
      other.cultures == cultures &&
      other.externalIdInfos == externalIdInfos &&
      other.contentType == contentType &&
      other.contentTypeOptions == contentTypeOptions;

    @override
    int get hashCode =>
        parentalRatingOptions.hashCode +
        countries.hashCode +
        cultures.hashCode +
        externalIdInfos.hashCode +
        (contentType == null ? 0 : contentType.hashCode) +
        contentTypeOptions.hashCode;

  factory MetadataEditorInfo.fromJson(Map<String, dynamic> json) => _$MetadataEditorInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataEditorInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

