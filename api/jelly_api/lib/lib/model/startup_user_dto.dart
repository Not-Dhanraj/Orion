//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'startup_user_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StartupUserDto {
  /// Returns a new [StartupUserDto] instance.
  StartupUserDto({

     this.name,

     this.password,
  });

      /// Gets or sets the username.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the user's password.
  @JsonKey(
    
    name: r'Password',
    required: false,
    includeIfNull: false,
  )


  final String? password;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StartupUserDto &&
      other.name == name &&
      other.password == password;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (password == null ? 0 : password.hashCode);

  factory StartupUserDto.fromJson(Map<String, dynamic> json) => _$StartupUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StartupUserDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

