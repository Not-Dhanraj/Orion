//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'log_file_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LogFileResource {
  /// Returns a new [LogFileResource] instance.
  LogFileResource({

     this.id,

     this.filename,

     this.lastWriteTime,

     this.contentsUrl,

     this.downloadUrl,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'filename',
    required: false,
    includeIfNull: false,
  )


  final String? filename;



  @JsonKey(
    
    name: r'lastWriteTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastWriteTime;



  @JsonKey(
    
    name: r'contentsUrl',
    required: false,
    includeIfNull: false,
  )


  final String? contentsUrl;



  @JsonKey(
    
    name: r'downloadUrl',
    required: false,
    includeIfNull: false,
  )


  final String? downloadUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LogFileResource &&
      other.id == id &&
      other.filename == filename &&
      other.lastWriteTime == lastWriteTime &&
      other.contentsUrl == contentsUrl &&
      other.downloadUrl == downloadUrl;

    @override
    int get hashCode =>
        id.hashCode +
        (filename == null ? 0 : filename.hashCode) +
        lastWriteTime.hashCode +
        (contentsUrl == null ? 0 : contentsUrl.hashCode) +
        (downloadUrl == null ? 0 : downloadUrl.hashCode);

  factory LogFileResource.fromJson(Map<String, dynamic> json) => _$LogFileResourceFromJson(json);

  Map<String, dynamic> toJson() => _$LogFileResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

