//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/name_id_pair.dart';
import 'package:jelly_api/lib/model/tuner_channel_mapping.dart';
import 'package:jelly_api/lib/model/name_value_pair.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_mapping_options_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChannelMappingOptionsDto {
  /// Returns a new [ChannelMappingOptionsDto] instance.
  ChannelMappingOptionsDto({

     this.tunerChannels,

     this.providerChannels,

     this.mappings,

     this.providerName,
  });

      /// Gets or sets list of tuner channels.
  @JsonKey(
    
    name: r'TunerChannels',
    required: false,
    includeIfNull: false,
  )


  final List<TunerChannelMapping>? tunerChannels;



      /// Gets or sets list of provider channels.
  @JsonKey(
    
    name: r'ProviderChannels',
    required: false,
    includeIfNull: false,
  )


  final List<NameIdPair>? providerChannels;



      /// Gets or sets list of mappings.
  @JsonKey(
    
    name: r'Mappings',
    required: false,
    includeIfNull: false,
  )


  final List<NameValuePair>? mappings;



      /// Gets or sets provider name.
  @JsonKey(
    
    name: r'ProviderName',
    required: false,
    includeIfNull: false,
  )


  final String? providerName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChannelMappingOptionsDto &&
      other.tunerChannels == tunerChannels &&
      other.providerChannels == providerChannels &&
      other.mappings == mappings &&
      other.providerName == providerName;

    @override
    int get hashCode =>
        tunerChannels.hashCode +
        providerChannels.hashCode +
        mappings.hashCode +
        (providerName == null ? 0 : providerName.hashCode);

  factory ChannelMappingOptionsDto.fromJson(Map<String, dynamic> json) => _$ChannelMappingOptionsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelMappingOptionsDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

