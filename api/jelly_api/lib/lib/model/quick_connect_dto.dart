//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quick_connect_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickConnectDto {
  /// Returns a new [QuickConnectDto] instance.
  QuickConnectDto({

    required  this.secret,
  });

      /// Gets or sets the quick connect secret.
  @JsonKey(
    
    name: r'Secret',
    required: true,
    includeIfNull: false,
  )


  final String secret;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QuickConnectDto &&
      other.secret == secret;

    @override
    int get hashCode =>
        secret.hashCode;

  factory QuickConnectDto.fromJson(Map<String, dynamic> json) => _$QuickConnectDtoFromJson(json);

  Map<String, dynamic> toJson() => _$QuickConnectDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

