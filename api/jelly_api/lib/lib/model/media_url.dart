//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_url.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaUrl {
  /// Returns a new [MediaUrl] instance.
  MediaUrl({

     this.url,

     this.name,
  });

  @JsonKey(
    
    name: r'Url',
    required: false,
    includeIfNull: false,
  )


  final String? url;



  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaUrl &&
      other.url == url &&
      other.name == name;

    @override
    int get hashCode =>
        (url == null ? 0 : url.hashCode) +
        (name == null ? 0 : name.hashCode);

  factory MediaUrl.fromJson(Map<String, dynamic> json) => _$MediaUrlFromJson(json);

  Map<String, dynamic> toJson() => _$MediaUrlToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

