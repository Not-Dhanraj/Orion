//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ratings.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Ratings {
  /// Returns a new [Ratings] instance.
  Ratings({

     this.votes,

     this.value,
  });

  @JsonKey(
    
    name: r'votes',
    required: false,
    includeIfNull: false,
  )


  final int? votes;



  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false,
  )


  final double? value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Ratings &&
      other.votes == votes &&
      other.value == value;

    @override
    int get hashCode =>
        votes.hashCode +
        value.hashCode;

  factory Ratings.fromJson(Map<String, dynamic> json) => _$RatingsFromJson(json);

  Map<String, dynamic> toJson() => _$RatingsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

