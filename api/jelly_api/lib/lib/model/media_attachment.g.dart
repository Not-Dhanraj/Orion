// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_attachment.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MediaAttachmentCWProxy {
  MediaAttachment codec(String? codec);

  MediaAttachment codecTag(String? codecTag);

  MediaAttachment comment(String? comment);

  MediaAttachment index(int? index);

  MediaAttachment fileName(String? fileName);

  MediaAttachment mimeType(String? mimeType);

  MediaAttachment deliveryUrl(String? deliveryUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaAttachment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaAttachment(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaAttachment call({
    String? codec,
    String? codecTag,
    String? comment,
    int? index,
    String? fileName,
    String? mimeType,
    String? deliveryUrl,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMediaAttachment.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMediaAttachment.copyWith.fieldName(...)`
class _$MediaAttachmentCWProxyImpl implements _$MediaAttachmentCWProxy {
  const _$MediaAttachmentCWProxyImpl(this._value);

  final MediaAttachment _value;

  @override
  MediaAttachment codec(String? codec) => this(codec: codec);

  @override
  MediaAttachment codecTag(String? codecTag) => this(codecTag: codecTag);

  @override
  MediaAttachment comment(String? comment) => this(comment: comment);

  @override
  MediaAttachment index(int? index) => this(index: index);

  @override
  MediaAttachment fileName(String? fileName) => this(fileName: fileName);

  @override
  MediaAttachment mimeType(String? mimeType) => this(mimeType: mimeType);

  @override
  MediaAttachment deliveryUrl(String? deliveryUrl) =>
      this(deliveryUrl: deliveryUrl);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaAttachment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaAttachment(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaAttachment call({
    Object? codec = const $CopyWithPlaceholder(),
    Object? codecTag = const $CopyWithPlaceholder(),
    Object? comment = const $CopyWithPlaceholder(),
    Object? index = const $CopyWithPlaceholder(),
    Object? fileName = const $CopyWithPlaceholder(),
    Object? mimeType = const $CopyWithPlaceholder(),
    Object? deliveryUrl = const $CopyWithPlaceholder(),
  }) {
    return MediaAttachment(
      codec: codec == const $CopyWithPlaceholder()
          ? _value.codec
          // ignore: cast_nullable_to_non_nullable
          : codec as String?,
      codecTag: codecTag == const $CopyWithPlaceholder()
          ? _value.codecTag
          // ignore: cast_nullable_to_non_nullable
          : codecTag as String?,
      comment: comment == const $CopyWithPlaceholder()
          ? _value.comment
          // ignore: cast_nullable_to_non_nullable
          : comment as String?,
      index: index == const $CopyWithPlaceholder()
          ? _value.index
          // ignore: cast_nullable_to_non_nullable
          : index as int?,
      fileName: fileName == const $CopyWithPlaceholder()
          ? _value.fileName
          // ignore: cast_nullable_to_non_nullable
          : fileName as String?,
      mimeType: mimeType == const $CopyWithPlaceholder()
          ? _value.mimeType
          // ignore: cast_nullable_to_non_nullable
          : mimeType as String?,
      deliveryUrl: deliveryUrl == const $CopyWithPlaceholder()
          ? _value.deliveryUrl
          // ignore: cast_nullable_to_non_nullable
          : deliveryUrl as String?,
    );
  }
}

extension $MediaAttachmentCopyWith on MediaAttachment {
  /// Returns a callable class that can be used as follows: `instanceOfMediaAttachment.copyWith(...)` or like so:`instanceOfMediaAttachment.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MediaAttachmentCWProxy get copyWith => _$MediaAttachmentCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaAttachment _$MediaAttachmentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MediaAttachment',
      json,
      ($checkedConvert) {
        final val = MediaAttachment(
          codec: $checkedConvert('Codec', (v) => v as String?),
          codecTag: $checkedConvert('CodecTag', (v) => v as String?),
          comment: $checkedConvert('Comment', (v) => v as String?),
          index: $checkedConvert('Index', (v) => (v as num?)?.toInt()),
          fileName: $checkedConvert('FileName', (v) => v as String?),
          mimeType: $checkedConvert('MimeType', (v) => v as String?),
          deliveryUrl: $checkedConvert('DeliveryUrl', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'codec': 'Codec',
        'codecTag': 'CodecTag',
        'comment': 'Comment',
        'index': 'Index',
        'fileName': 'FileName',
        'mimeType': 'MimeType',
        'deliveryUrl': 'DeliveryUrl',
      },
    );

Map<String, dynamic> _$MediaAttachmentToJson(MediaAttachment instance) =>
    <String, dynamic>{
      'Codec': ?instance.codec,
      'CodecTag': ?instance.codecTag,
      'Comment': ?instance.comment,
      'Index': ?instance.index,
      'FileName': ?instance.fileName,
      'MimeType': ?instance.mimeType,
      'DeliveryUrl': ?instance.deliveryUrl,
    };
