//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'http_uri.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HttpUri {
  /// Returns a new [HttpUri] instance.
  HttpUri({

     this.fullUri,

     this.scheme,

     this.host,

     this.port,

     this.path,

     this.query,

     this.fragment,
  });

  @JsonKey(
    
    name: r'fullUri',
    required: false,
    includeIfNull: false,
  )


  final String? fullUri;



  @JsonKey(
    
    name: r'scheme',
    required: false,
    includeIfNull: false,
  )


  final String? scheme;



  @JsonKey(
    
    name: r'host',
    required: false,
    includeIfNull: false,
  )


  final String? host;



  @JsonKey(
    
    name: r'port',
    required: false,
    includeIfNull: false,
  )


  final int? port;



  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



  @JsonKey(
    
    name: r'query',
    required: false,
    includeIfNull: false,
  )


  final String? query;



  @JsonKey(
    
    name: r'fragment',
    required: false,
    includeIfNull: false,
  )


  final String? fragment;





    @override
    bool operator ==(Object other) => identical(this, other) || other is HttpUri &&
      other.fullUri == fullUri &&
      other.scheme == scheme &&
      other.host == host &&
      other.port == port &&
      other.path == path &&
      other.query == query &&
      other.fragment == fragment;

    @override
    int get hashCode =>
        (fullUri == null ? 0 : fullUri.hashCode) +
        (scheme == null ? 0 : scheme.hashCode) +
        (host == null ? 0 : host.hashCode) +
        (port == null ? 0 : port.hashCode) +
        (path == null ? 0 : path.hashCode) +
        (query == null ? 0 : query.hashCode) +
        (fragment == null ? 0 : fragment.hashCode);

  factory HttpUri.fromJson(Map<String, dynamic> json) => _$HttpUriFromJson(json);

  Map<String, dynamic> toJson() => _$HttpUriToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

