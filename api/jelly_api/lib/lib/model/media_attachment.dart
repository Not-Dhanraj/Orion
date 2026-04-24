//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_attachment.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaAttachment {
  /// Returns a new [MediaAttachment] instance.
  MediaAttachment({

     this.codec,

     this.codecTag,

     this.comment,

     this.index,

     this.fileName,

     this.mimeType,

     this.deliveryUrl,
  });

      /// Gets or sets the codec.
  @JsonKey(
    
    name: r'Codec',
    required: false,
    includeIfNull: false,
  )


  final String? codec;



      /// Gets or sets the codec tag.
  @JsonKey(
    
    name: r'CodecTag',
    required: false,
    includeIfNull: false,
  )


  final String? codecTag;



      /// Gets or sets the comment.
  @JsonKey(
    
    name: r'Comment',
    required: false,
    includeIfNull: false,
  )


  final String? comment;



      /// Gets or sets the index.
  @JsonKey(
    
    name: r'Index',
    required: false,
    includeIfNull: false,
  )


  final int? index;



      /// Gets or sets the filename.
  @JsonKey(
    
    name: r'FileName',
    required: false,
    includeIfNull: false,
  )


  final String? fileName;



      /// Gets or sets the MIME type.
  @JsonKey(
    
    name: r'MimeType',
    required: false,
    includeIfNull: false,
  )


  final String? mimeType;



      /// Gets or sets the delivery URL.
  @JsonKey(
    
    name: r'DeliveryUrl',
    required: false,
    includeIfNull: false,
  )


  final String? deliveryUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaAttachment &&
      other.codec == codec &&
      other.codecTag == codecTag &&
      other.comment == comment &&
      other.index == index &&
      other.fileName == fileName &&
      other.mimeType == mimeType &&
      other.deliveryUrl == deliveryUrl;

    @override
    int get hashCode =>
        (codec == null ? 0 : codec.hashCode) +
        (codecTag == null ? 0 : codecTag.hashCode) +
        (comment == null ? 0 : comment.hashCode) +
        index.hashCode +
        (fileName == null ? 0 : fileName.hashCode) +
        (mimeType == null ? 0 : mimeType.hashCode) +
        (deliveryUrl == null ? 0 : deliveryUrl.hashCode);

  factory MediaAttachment.fromJson(Map<String, dynamic> json) => _$MediaAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$MediaAttachmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

