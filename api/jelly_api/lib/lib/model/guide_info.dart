//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'guide_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GuideInfo {
  /// Returns a new [GuideInfo] instance.
  GuideInfo({

     this.startDate,

     this.endDate,
  });

      /// Gets or sets the start date.
  @JsonKey(
    
    name: r'StartDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? startDate;



      /// Gets or sets the end date.
  @JsonKey(
    
    name: r'EndDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? endDate;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GuideInfo &&
      other.startDate == startDate &&
      other.endDate == endDate;

    @override
    int get hashCode =>
        startDate.hashCode +
        endDate.hashCode;

  factory GuideInfo.fromJson(Map<String, dynamic> json) => _$GuideInfoFromJson(json);

  Map<String, dynamic> toJson() => _$GuideInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

