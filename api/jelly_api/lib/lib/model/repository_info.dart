//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repository_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RepositoryInfo {
  /// Returns a new [RepositoryInfo] instance.
  RepositoryInfo({

     this.name,

     this.url,

     this.enabled,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the URL.
  @JsonKey(
    
    name: r'Url',
    required: false,
    includeIfNull: false,
  )


  final String? url;



      /// Gets or sets a value indicating whether the repository is enabled.
  @JsonKey(
    
    name: r'Enabled',
    required: false,
    includeIfNull: false,
  )


  final bool? enabled;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RepositoryInfo &&
      other.name == name &&
      other.url == url &&
      other.enabled == enabled;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (url == null ? 0 : url.hashCode) +
        enabled.hashCode;

  factory RepositoryInfo.fromJson(Map<String, dynamic> json) => _$RepositoryInfoFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

