//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/media_source_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'live_stream_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LiveStreamResponse {
  /// Returns a new [LiveStreamResponse] instance.
  LiveStreamResponse({

     this.mediaSource,
  });

  @JsonKey(
    
    name: r'MediaSource',
    required: false,
    includeIfNull: false,
  )


  final MediaSourceInfo? mediaSource;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LiveStreamResponse &&
      other.mediaSource == mediaSource;

    @override
    int get hashCode =>
        mediaSource.hashCode;

  factory LiveStreamResponse.fromJson(Map<String, dynamic> json) => _$LiveStreamResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LiveStreamResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

