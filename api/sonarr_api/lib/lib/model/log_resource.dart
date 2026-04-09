//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'log_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LogResource {
  /// Returns a new [LogResource] instance.
  LogResource({

     this.id,

     this.time,

     this.exception,

     this.exceptionType,

     this.level,

     this.logger,

     this.message,

     this.method,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'time',
    required: false,
    includeIfNull: false,
  )


  final DateTime? time;



  @JsonKey(
    
    name: r'exception',
    required: false,
    includeIfNull: false,
  )


  final String? exception;



  @JsonKey(
    
    name: r'exceptionType',
    required: false,
    includeIfNull: false,
  )


  final String? exceptionType;



  @JsonKey(
    
    name: r'level',
    required: false,
    includeIfNull: false,
  )


  final String? level;



  @JsonKey(
    
    name: r'logger',
    required: false,
    includeIfNull: false,
  )


  final String? logger;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final String? message;



  @JsonKey(
    
    name: r'method',
    required: false,
    includeIfNull: false,
  )


  final String? method;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LogResource &&
      other.id == id &&
      other.time == time &&
      other.exception == exception &&
      other.exceptionType == exceptionType &&
      other.level == level &&
      other.logger == logger &&
      other.message == message &&
      other.method == method;

    @override
    int get hashCode =>
        id.hashCode +
        time.hashCode +
        (exception == null ? 0 : exception.hashCode) +
        (exceptionType == null ? 0 : exceptionType.hashCode) +
        (level == null ? 0 : level.hashCode) +
        (logger == null ? 0 : logger.hashCode) +
        (message == null ? 0 : message.hashCode) +
        (method == null ? 0 : method.hashCode);

  factory LogResource.fromJson(Map<String, dynamic> json) => _$LogResourceFromJson(json);

  Map<String, dynamic> toJson() => _$LogResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

