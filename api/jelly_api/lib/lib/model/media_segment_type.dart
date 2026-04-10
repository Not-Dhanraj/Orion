//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Defines the types of content an individual Jellyfin.Database.Implementations.Entities.MediaSegment represents.
enum MediaSegmentType {
          /// Defines the types of content an individual Jellyfin.Database.Implementations.Entities.MediaSegment represents.
      @JsonValue(r'Unknown')
      unknown(r'Unknown'),
          /// Defines the types of content an individual Jellyfin.Database.Implementations.Entities.MediaSegment represents.
      @JsonValue(r'Commercial')
      commercial(r'Commercial'),
          /// Defines the types of content an individual Jellyfin.Database.Implementations.Entities.MediaSegment represents.
      @JsonValue(r'Preview')
      preview(r'Preview'),
          /// Defines the types of content an individual Jellyfin.Database.Implementations.Entities.MediaSegment represents.
      @JsonValue(r'Recap')
      recap(r'Recap'),
          /// Defines the types of content an individual Jellyfin.Database.Implementations.Entities.MediaSegment represents.
      @JsonValue(r'Outro')
      outro(r'Outro'),
          /// Defines the types of content an individual Jellyfin.Database.Implementations.Entities.MediaSegment represents.
      @JsonValue(r'Intro')
      intro(r'Intro');

  const MediaSegmentType(this.value);

  final String value;

  @override
  String toString() => value;
}
