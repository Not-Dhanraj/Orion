//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tracked_download_status_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TrackedDownloadStatusMessage {
  /// Returns a new [TrackedDownloadStatusMessage] instance.
  TrackedDownloadStatusMessage({

     this.title,

     this.messages,
  });

  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'messages',
    required: false,
    includeIfNull: false,
  )


  final List<String>? messages;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TrackedDownloadStatusMessage &&
      other.title == title &&
      other.messages == messages;

    @override
    int get hashCode =>
        (title == null ? 0 : title.hashCode) +
        (messages == null ? 0 : messages.hashCode);

  factory TrackedDownloadStatusMessage.fromJson(Map<String, dynamic> json) => _$TrackedDownloadStatusMessageFromJson(json);

  Map<String, dynamic> toJson() => _$TrackedDownloadStatusMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

