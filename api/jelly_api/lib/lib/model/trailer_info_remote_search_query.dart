//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/trailer_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trailer_info_remote_search_query.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TrailerInfoRemoteSearchQuery {
  /// Returns a new [TrailerInfoRemoteSearchQuery] instance.
  TrailerInfoRemoteSearchQuery({

     this.searchInfo,

     this.itemId,

     this.searchProviderName,

     this.includeDisabledProviders,
  });

  @JsonKey(
    
    name: r'SearchInfo',
    required: false,
    includeIfNull: false,
  )


  final TrailerInfo? searchInfo;



  @JsonKey(
    
    name: r'ItemId',
    required: false,
    includeIfNull: false,
  )


  final String? itemId;



      /// Gets or sets the provider name to search within if set.
  @JsonKey(
    
    name: r'SearchProviderName',
    required: false,
    includeIfNull: false,
  )


  final String? searchProviderName;



      /// Gets or sets a value indicating whether disabled providers should be included.
  @JsonKey(
    
    name: r'IncludeDisabledProviders',
    required: false,
    includeIfNull: false,
  )


  final bool? includeDisabledProviders;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TrailerInfoRemoteSearchQuery &&
      other.searchInfo == searchInfo &&
      other.itemId == itemId &&
      other.searchProviderName == searchProviderName &&
      other.includeDisabledProviders == includeDisabledProviders;

    @override
    int get hashCode =>
        (searchInfo == null ? 0 : searchInfo.hashCode) +
        itemId.hashCode +
        (searchProviderName == null ? 0 : searchProviderName.hashCode) +
        includeDisabledProviders.hashCode;

  factory TrailerInfoRemoteSearchQuery.fromJson(Map<String, dynamic> json) => _$TrailerInfoRemoteSearchQueryFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerInfoRemoteSearchQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

