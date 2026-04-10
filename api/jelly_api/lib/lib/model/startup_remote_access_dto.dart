//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'startup_remote_access_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StartupRemoteAccessDto {
  /// Returns a new [StartupRemoteAccessDto] instance.
  StartupRemoteAccessDto({

    required  this.enableRemoteAccess,

    required  this.enableAutomaticPortMapping,
  });

      /// Gets or sets a value indicating whether enable remote access.
  @JsonKey(
    
    name: r'EnableRemoteAccess',
    required: true,
    includeIfNull: false,
  )


  final bool enableRemoteAccess;



      /// Gets or sets a value indicating whether enable automatic port mapping.
  @Deprecated('enableAutomaticPortMapping has been deprecated')
  @JsonKey(
    
    name: r'EnableAutomaticPortMapping',
    required: true,
    includeIfNull: false,
  )


  final bool enableAutomaticPortMapping;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StartupRemoteAccessDto &&
      other.enableRemoteAccess == enableRemoteAccess &&
      other.enableAutomaticPortMapping == enableAutomaticPortMapping;

    @override
    int get hashCode =>
        enableRemoteAccess.hashCode +
        enableAutomaticPortMapping.hashCode;

  factory StartupRemoteAccessDto.fromJson(Map<String, dynamic> json) => _$StartupRemoteAccessDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StartupRemoteAccessDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

