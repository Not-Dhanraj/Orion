//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/profile_condition.dart';
import 'package:jelly_api/lib/model/codec_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'codec_profile.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CodecProfile {
  /// Returns a new [CodecProfile] instance.
  CodecProfile({

     this.type,

     this.conditions,

     this.applyConditions,

     this.codec,

     this.container,

     this.subContainer,
  });

      /// Gets or sets the MediaBrowser.Model.Dlna.CodecType which this container must meet.
  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final CodecType? type;



      /// Gets or sets the list of MediaBrowser.Model.Dlna.ProfileCondition which this profile must meet.
  @JsonKey(
    
    name: r'Conditions',
    required: false,
    includeIfNull: false,
  )


  final List<ProfileCondition>? conditions;



      /// Gets or sets the list of MediaBrowser.Model.Dlna.ProfileCondition to apply if this profile is met.
  @JsonKey(
    
    name: r'ApplyConditions',
    required: false,
    includeIfNull: false,
  )


  final List<ProfileCondition>? applyConditions;



      /// Gets or sets the codec(s) that this profile applies to.
  @JsonKey(
    
    name: r'Codec',
    required: false,
    includeIfNull: false,
  )


  final String? codec;



      /// Gets or sets the container(s) which this profile will be applied to.
  @JsonKey(
    
    name: r'Container',
    required: false,
    includeIfNull: false,
  )


  final String? container;



      /// Gets or sets the sub-container(s) which this profile will be applied to.
  @JsonKey(
    
    name: r'SubContainer',
    required: false,
    includeIfNull: false,
  )


  final String? subContainer;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CodecProfile &&
      other.type == type &&
      other.conditions == conditions &&
      other.applyConditions == applyConditions &&
      other.codec == codec &&
      other.container == container &&
      other.subContainer == subContainer;

    @override
    int get hashCode =>
        type.hashCode +
        conditions.hashCode +
        applyConditions.hashCode +
        (codec == null ? 0 : codec.hashCode) +
        (container == null ? 0 : container.hashCode) +
        (subContainer == null ? 0 : subContainer.hashCode);

  factory CodecProfile.fromJson(Map<String, dynamic> json) => _$CodecProfileFromJson(json);

  Map<String, dynamic> toJson() => _$CodecProfileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

