//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'device_options_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeviceOptionsDto {
  /// Returns a new [DeviceOptionsDto] instance.
  DeviceOptionsDto({

     this.id,

     this.deviceId,

     this.customName,
  });

      /// Gets or sets the id.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



      /// Gets or sets the device id.
  @JsonKey(
    
    name: r'DeviceId',
    required: false,
    includeIfNull: false,
  )


  final String? deviceId;



      /// Gets or sets the custom name.
  @JsonKey(
    
    name: r'CustomName',
    required: false,
    includeIfNull: false,
  )


  final String? customName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DeviceOptionsDto &&
      other.id == id &&
      other.deviceId == deviceId &&
      other.customName == customName;

    @override
    int get hashCode =>
        id.hashCode +
        (deviceId == null ? 0 : deviceId.hashCode) +
        (customName == null ? 0 : customName.hashCode);

  factory DeviceOptionsDto.fromJson(Map<String, dynamic> json) => _$DeviceOptionsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceOptionsDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

