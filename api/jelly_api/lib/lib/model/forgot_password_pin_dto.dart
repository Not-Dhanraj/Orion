//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_pin_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ForgotPasswordPinDto {
  /// Returns a new [ForgotPasswordPinDto] instance.
  ForgotPasswordPinDto({

    required  this.pin,
  });

      /// Gets or sets the entered pin to have the password reset.
  @JsonKey(
    
    name: r'Pin',
    required: true,
    includeIfNull: false,
  )


  final String pin;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ForgotPasswordPinDto &&
      other.pin == pin;

    @override
    int get hashCode =>
        pin.hashCode;

  factory ForgotPasswordPinDto.fromJson(Map<String, dynamic> json) => _$ForgotPasswordPinDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordPinDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

