//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_log_document_response_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientLogDocumentResponseDto {
  /// Returns a new [ClientLogDocumentResponseDto] instance.
  ClientLogDocumentResponseDto({

     this.fileName,
  });

      /// Gets the resulting filename.
  @JsonKey(
    
    name: r'FileName',
    required: false,
    includeIfNull: false,
  )


  final String? fileName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ClientLogDocumentResponseDto &&
      other.fileName == fileName;

    @override
    int get hashCode =>
        fileName.hashCode;

  factory ClientLogDocumentResponseDto.fromJson(Map<String, dynamic> json) => _$ClientLogDocumentResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ClientLogDocumentResponseDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

