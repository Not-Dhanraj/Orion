//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'external_url.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ExternalUrl {
  /// Returns a new [ExternalUrl] instance.
  ExternalUrl({

     this.name,

     this.url,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the type of the item.
  @JsonKey(
    
    name: r'Url',
    required: false,
    includeIfNull: false,
  )


  final String? url;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ExternalUrl &&
      other.name == name &&
      other.url == url;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (url == null ? 0 : url.hashCode);

  factory ExternalUrl.fromJson(Map<String, dynamic> json) => _$ExternalUrlFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalUrlToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

