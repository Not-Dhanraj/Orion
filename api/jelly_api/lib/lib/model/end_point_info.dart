//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'end_point_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EndPointInfo {
  /// Returns a new [EndPointInfo] instance.
  EndPointInfo({

     this.isLocal,

     this.isInNetwork,
  });

  @JsonKey(
    
    name: r'IsLocal',
    required: false,
    includeIfNull: false,
  )


  final bool? isLocal;



  @JsonKey(
    
    name: r'IsInNetwork',
    required: false,
    includeIfNull: false,
  )


  final bool? isInNetwork;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EndPointInfo &&
      other.isLocal == isLocal &&
      other.isInNetwork == isInNetwork;

    @override
    int get hashCode =>
        isLocal.hashCode +
        isInNetwork.hashCode;

  factory EndPointInfo.fromJson(Map<String, dynamic> json) => _$EndPointInfoFromJson(json);

  Map<String, dynamic> toJson() => _$EndPointInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

