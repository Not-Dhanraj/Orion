//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ChannelItemSortField {
      @JsonValue(r'Name')
      name(r'Name'),
      @JsonValue(r'CommunityRating')
      communityRating(r'CommunityRating'),
      @JsonValue(r'PremiereDate')
      premiereDate(r'PremiereDate'),
      @JsonValue(r'DateCreated')
      dateCreated(r'DateCreated'),
      @JsonValue(r'Runtime')
      runtime(r'Runtime'),
      @JsonValue(r'PlayCount')
      playCount(r'PlayCount'),
      @JsonValue(r'CommunityPlayCount')
      communityPlayCount(r'CommunityPlayCount');

  const ChannelItemSortField(this.value);

  final String value;

  @override
  String toString() => value;
}
