//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/parental_rating_score.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parental_rating.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ParentalRating {
  /// Returns a new [ParentalRating] instance.
  ParentalRating({

     this.name,

     this.value,

     this.ratingScore,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the value.
  @JsonKey(
    
    name: r'Value',
    required: false,
    includeIfNull: false,
  )


  final int? value;



      /// Gets or sets the rating score.
  @JsonKey(
    
    name: r'RatingScore',
    required: false,
    includeIfNull: false,
  )


  final ParentalRatingScore? ratingScore;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ParentalRating &&
      other.name == name &&
      other.value == value &&
      other.ratingScore == ratingScore;

    @override
    int get hashCode =>
        name.hashCode +
        (value == null ? 0 : value.hashCode) +
        (ratingScore == null ? 0 : ratingScore.hashCode);

  factory ParentalRating.fromJson(Map<String, dynamic> json) => _$ParentalRatingFromJson(json);

  Map<String, dynamic> toJson() => _$ParentalRatingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

