//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pin_redeem_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PinRedeemResult {
  /// Returns a new [PinRedeemResult] instance.
  PinRedeemResult({

     this.success,

     this.usersReset,
  });

      /// Gets or sets a value indicating whether this MediaBrowser.Model.Users.PinRedeemResult is success.
  @JsonKey(
    
    name: r'Success',
    required: false,
    includeIfNull: false,
  )


  final bool? success;



      /// Gets or sets the users reset.
  @JsonKey(
    
    name: r'UsersReset',
    required: false,
    includeIfNull: false,
  )


  final List<String>? usersReset;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PinRedeemResult &&
      other.success == success &&
      other.usersReset == usersReset;

    @override
    int get hashCode =>
        success.hashCode +
        usersReset.hashCode;

  factory PinRedeemResult.fromJson(Map<String, dynamic> json) => _$PinRedeemResultFromJson(json);

  Map<String, dynamic> toJson() => _$PinRedeemResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

