//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cast_receiver_application.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CastReceiverApplication {
  /// Returns a new [CastReceiverApplication] instance.
  CastReceiverApplication({

     this.id,

     this.name,
  });

      /// Gets or sets the cast receiver application id.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets the cast receiver application name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CastReceiverApplication &&
      other.id == id &&
      other.name == name;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode;

  factory CastReceiverApplication.fromJson(Map<String, dynamic> json) => _$CastReceiverApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$CastReceiverApplicationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

