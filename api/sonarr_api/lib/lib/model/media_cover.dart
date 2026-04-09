//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/media_cover_types.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_cover.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaCover {
  /// Returns a new [MediaCover] instance.
  MediaCover({

     this.coverType,

     this.url,

     this.remoteUrl,
  });

  @JsonKey(
    
    name: r'coverType',
    required: false,
    includeIfNull: false,
  )


  final MediaCoverTypes? coverType;



  @JsonKey(
    
    name: r'url',
    required: false,
    includeIfNull: false,
  )


  final String? url;



  @JsonKey(
    
    name: r'remoteUrl',
    required: false,
    includeIfNull: false,
  )


  final String? remoteUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaCover &&
      other.coverType == coverType &&
      other.url == url &&
      other.remoteUrl == remoteUrl;

    @override
    int get hashCode =>
        coverType.hashCode +
        (url == null ? 0 : url.hashCode) +
        (remoteUrl == null ? 0 : remoteUrl.hashCode);

  factory MediaCover.fromJson(Map<String, dynamic> json) => _$MediaCoverFromJson(json);

  Map<String, dynamic> toJson() => _$MediaCoverToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

