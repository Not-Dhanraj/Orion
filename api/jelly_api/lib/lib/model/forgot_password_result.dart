//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/forgot_password_action.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ForgotPasswordResult {
  /// Returns a new [ForgotPasswordResult] instance.
  ForgotPasswordResult({

     this.action,

     this.pinFile,

     this.pinExpirationDate,
  });

      /// Gets or sets the action.
  @JsonKey(
    
    name: r'Action',
    required: false,
    includeIfNull: false,
  )


  final ForgotPasswordAction? action;



      /// Gets or sets the pin file.
  @JsonKey(
    
    name: r'PinFile',
    required: false,
    includeIfNull: false,
  )


  final String? pinFile;



      /// Gets or sets the pin expiration date.
  @JsonKey(
    
    name: r'PinExpirationDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? pinExpirationDate;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ForgotPasswordResult &&
      other.action == action &&
      other.pinFile == pinFile &&
      other.pinExpirationDate == pinExpirationDate;

    @override
    int get hashCode =>
        action.hashCode +
        (pinFile == null ? 0 : pinFile.hashCode) +
        (pinExpirationDate == null ? 0 : pinExpirationDate.hashCode);

  factory ForgotPasswordResult.fromJson(Map<String, dynamic> json) => _$ForgotPasswordResultFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

