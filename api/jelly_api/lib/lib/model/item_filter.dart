//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum ItemFilter.
enum ItemFilter {
          /// Enum ItemFilter.
      @JsonValue(r'IsFolder')
      isFolder(r'IsFolder'),
          /// Enum ItemFilter.
      @JsonValue(r'IsNotFolder')
      isNotFolder(r'IsNotFolder'),
          /// Enum ItemFilter.
      @JsonValue(r'IsUnplayed')
      isUnplayed(r'IsUnplayed'),
          /// Enum ItemFilter.
      @JsonValue(r'IsPlayed')
      isPlayed(r'IsPlayed'),
          /// Enum ItemFilter.
      @JsonValue(r'IsFavorite')
      isFavorite(r'IsFavorite'),
          /// Enum ItemFilter.
      @JsonValue(r'IsResumable')
      isResumable(r'IsResumable'),
          /// Enum ItemFilter.
      @JsonValue(r'Likes')
      likes(r'Likes'),
          /// Enum ItemFilter.
      @JsonValue(r'Dislikes')
      dislikes(r'Dislikes'),
          /// Enum ItemFilter.
      @JsonValue(r'IsFavoriteOrLikes')
      isFavoriteOrLikes(r'IsFavoriteOrLikes');

  const ItemFilter(this.value);

  final String value;

  @override
  String toString() => value;
}
