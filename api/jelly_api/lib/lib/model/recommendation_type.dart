//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum RecommendationType {
      @JsonValue(r'SimilarToRecentlyPlayed')
      similarToRecentlyPlayed(r'SimilarToRecentlyPlayed'),
      @JsonValue(r'SimilarToLikedItem')
      similarToLikedItem(r'SimilarToLikedItem'),
      @JsonValue(r'HasDirectorFromRecentlyPlayed')
      hasDirectorFromRecentlyPlayed(r'HasDirectorFromRecentlyPlayed'),
      @JsonValue(r'HasActorFromRecentlyPlayed')
      hasActorFromRecentlyPlayed(r'HasActorFromRecentlyPlayed'),
      @JsonValue(r'HasLikedDirector')
      hasLikedDirector(r'HasLikedDirector'),
      @JsonValue(r'HasLikedActor')
      hasLikedActor(r'HasLikedActor');

  const RecommendationType(this.value);

  final String value;

  @override
  String toString() => value;
}
