//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ForgotPasswordDto {
  /// Returns a new [ForgotPasswordDto] instance.
  ForgotPasswordDto({

    required  this.enteredUsername,
  });

      /// Gets or sets the entered username to have its password reset.
  @JsonKey(
    
    name: r'EnteredUsername',
    required: true,
    includeIfNull: false,
  )


  final String enteredUsername;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ForgotPasswordDto &&
      other.enteredUsername == enteredUsername;

    @override
    int get hashCode =>
        enteredUsername.hashCode;

  factory ForgotPasswordDto.fromJson(Map<String, dynamic> json) => _$ForgotPasswordDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

