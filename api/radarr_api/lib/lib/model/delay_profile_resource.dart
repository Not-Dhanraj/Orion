//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/download_protocol.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delay_profile_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DelayProfileResource {
  /// Returns a new [DelayProfileResource] instance.
  DelayProfileResource({

     this.id,

     this.enableUsenet,

     this.enableTorrent,

     this.preferredProtocol,

     this.usenetDelay,

     this.torrentDelay,

     this.bypassIfHighestQuality,

     this.bypassIfAboveCustomFormatScore,

     this.minimumCustomFormatScore,

     this.order,

     this.tags,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'enableUsenet',
    required: false,
    includeIfNull: false,
  )


  final bool? enableUsenet;



  @JsonKey(
    
    name: r'enableTorrent',
    required: false,
    includeIfNull: false,
  )


  final bool? enableTorrent;



  @JsonKey(
    
    name: r'preferredProtocol',
    required: false,
    includeIfNull: false,
  )


  final DownloadProtocol? preferredProtocol;



  @JsonKey(
    
    name: r'usenetDelay',
    required: false,
    includeIfNull: false,
  )


  final int? usenetDelay;



  @JsonKey(
    
    name: r'torrentDelay',
    required: false,
    includeIfNull: false,
  )


  final int? torrentDelay;



  @JsonKey(
    
    name: r'bypassIfHighestQuality',
    required: false,
    includeIfNull: false,
  )


  final bool? bypassIfHighestQuality;



  @JsonKey(
    
    name: r'bypassIfAboveCustomFormatScore',
    required: false,
    includeIfNull: false,
  )


  final bool? bypassIfAboveCustomFormatScore;



  @JsonKey(
    
    name: r'minimumCustomFormatScore',
    required: false,
    includeIfNull: false,
  )


  final int? minimumCustomFormatScore;



  @JsonKey(
    
    name: r'order',
    required: false,
    includeIfNull: false,
  )


  final int? order;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final Set<int>? tags;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DelayProfileResource &&
      other.id == id &&
      other.enableUsenet == enableUsenet &&
      other.enableTorrent == enableTorrent &&
      other.preferredProtocol == preferredProtocol &&
      other.usenetDelay == usenetDelay &&
      other.torrentDelay == torrentDelay &&
      other.bypassIfHighestQuality == bypassIfHighestQuality &&
      other.bypassIfAboveCustomFormatScore == bypassIfAboveCustomFormatScore &&
      other.minimumCustomFormatScore == minimumCustomFormatScore &&
      other.order == order &&
      other.tags == tags;

    @override
    int get hashCode =>
        id.hashCode +
        enableUsenet.hashCode +
        enableTorrent.hashCode +
        preferredProtocol.hashCode +
        usenetDelay.hashCode +
        torrentDelay.hashCode +
        bypassIfHighestQuality.hashCode +
        bypassIfAboveCustomFormatScore.hashCode +
        minimumCustomFormatScore.hashCode +
        order.hashCode +
        (tags == null ? 0 : tags.hashCode);

  factory DelayProfileResource.fromJson(Map<String, dynamic> json) => _$DelayProfileResourceFromJson(json);

  Map<String, dynamic> toJson() => _$DelayProfileResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

