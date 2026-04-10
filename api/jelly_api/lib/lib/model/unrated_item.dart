//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// An enum representing an unrated item.
enum UnratedItem {
          /// An enum representing an unrated item.
      @JsonValue(r'Movie')
      movie(r'Movie'),
          /// An enum representing an unrated item.
      @JsonValue(r'Trailer')
      trailer(r'Trailer'),
          /// An enum representing an unrated item.
      @JsonValue(r'Series')
      series(r'Series'),
          /// An enum representing an unrated item.
      @JsonValue(r'Music')
      music(r'Music'),
          /// An enum representing an unrated item.
      @JsonValue(r'Book')
      book(r'Book'),
          /// An enum representing an unrated item.
      @JsonValue(r'LiveTvChannel')
      liveTvChannel(r'LiveTvChannel'),
          /// An enum representing an unrated item.
      @JsonValue(r'LiveTvProgram')
      liveTvProgram(r'LiveTvProgram'),
          /// An enum representing an unrated item.
      @JsonValue(r'ChannelContent')
      channelContent(r'ChannelContent'),
          /// An enum representing an unrated item.
      @JsonValue(r'Other')
      other(r'Other');

  const UnratedItem(this.value);

  final String value;

  @override
  String toString() => value;
}
