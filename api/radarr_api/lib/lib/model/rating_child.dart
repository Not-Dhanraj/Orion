//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/rating_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rating_child.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RatingChild {
  /// Returns a new [RatingChild] instance.
  RatingChild({

     this.votes,

     this.value,

     this.type,
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



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final RatingType? type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RatingChild &&
      other.votes == votes &&
      other.value == value &&
      other.type == type;

    @override
    int get hashCode =>
        votes.hashCode +
        value.hashCode +
        type.hashCode;

  factory RatingChild.fromJson(Map<String, dynamic> json) => _$RatingChildFromJson(json);

  Map<String, dynamic> toJson() => _$RatingChildToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

