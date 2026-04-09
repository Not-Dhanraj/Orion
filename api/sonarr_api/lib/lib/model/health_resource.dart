//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/health_check_result.dart';
import 'package:sonarr_api/lib/model/http_uri.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'health_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HealthResource {
  /// Returns a new [HealthResource] instance.
  HealthResource({

     this.id,

     this.source_,

     this.type,

     this.message,

     this.wikiUrl,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'source',
    required: false,
    includeIfNull: false,
  )


  final String? source_;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final HealthCheckResult? type;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final String? message;



  @JsonKey(
    
    name: r'wikiUrl',
    required: false,
    includeIfNull: false,
  )


  final HttpUri? wikiUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is HealthResource &&
      other.id == id &&
      other.source_ == source_ &&
      other.type == type &&
      other.message == message &&
      other.wikiUrl == wikiUrl;

    @override
    int get hashCode =>
        id.hashCode +
        (source_ == null ? 0 : source_.hashCode) +
        type.hashCode +
        (message == null ? 0 : message.hashCode) +
        wikiUrl.hashCode;

  factory HealthResource.fromJson(Map<String, dynamic> json) => _$HealthResourceFromJson(json);

  Map<String, dynamic> toJson() => _$HealthResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

