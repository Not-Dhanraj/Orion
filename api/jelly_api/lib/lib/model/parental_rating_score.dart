//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parental_rating_score.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ParentalRatingScore {
  /// Returns a new [ParentalRatingScore] instance.
  ParentalRatingScore({

     this.score,

     this.subScore,
  });

      /// Gets or sets the score.
  @JsonKey(
    
    name: r'score',
    required: false,
    includeIfNull: false,
  )


  final int? score;



      /// Gets or sets the sub score.
  @JsonKey(
    
    name: r'subScore',
    required: false,
    includeIfNull: false,
  )


  final int? subScore;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ParentalRatingScore &&
      other.score == score &&
      other.subScore == subScore;

    @override
    int get hashCode =>
        score.hashCode +
        (subScore == null ? 0 : subScore.hashCode);

  factory ParentalRatingScore.fromJson(Map<String, dynamic> json) => _$ParentalRatingScoreFromJson(json);

  Map<String, dynamic> toJson() => _$ParentalRatingScoreToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

