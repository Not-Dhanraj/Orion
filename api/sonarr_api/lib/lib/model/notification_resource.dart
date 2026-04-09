//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/field.dart';
import 'package:sonarr_api/lib/model/provider_message.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NotificationResource {
  /// Returns a new [NotificationResource] instance.
  NotificationResource({

     this.id,

     this.name,

     this.fields,

     this.implementationName,

     this.implementation,

     this.configContract,

     this.infoLink,

     this.message,

     this.tags,

     this.presets,

     this.link,

     this.onGrab,

     this.onDownload,

     this.onUpgrade,

     this.onImportComplete,

     this.onRename,

     this.onSeriesAdd,

     this.onSeriesDelete,

     this.onEpisodeFileDelete,

     this.onEpisodeFileDeleteForUpgrade,

     this.onHealthIssue,

     this.includeHealthWarnings,

     this.onHealthRestored,

     this.onApplicationUpdate,

     this.onManualInteractionRequired,

     this.supportsOnGrab,

     this.supportsOnDownload,

     this.supportsOnUpgrade,

     this.supportsOnImportComplete,

     this.supportsOnRename,

     this.supportsOnSeriesAdd,

     this.supportsOnSeriesDelete,

     this.supportsOnEpisodeFileDelete,

     this.supportsOnEpisodeFileDeleteForUpgrade,

     this.supportsOnHealthIssue,

     this.supportsOnHealthRestored,

     this.supportsOnApplicationUpdate,

     this.supportsOnManualInteractionRequired,

     this.testCommand,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'fields',
    required: false,
    includeIfNull: false,
  )


  final List<Field>? fields;



  @JsonKey(
    
    name: r'implementationName',
    required: false,
    includeIfNull: false,
  )


  final String? implementationName;



  @JsonKey(
    
    name: r'implementation',
    required: false,
    includeIfNull: false,
  )


  final String? implementation;



  @JsonKey(
    
    name: r'configContract',
    required: false,
    includeIfNull: false,
  )


  final String? configContract;



  @JsonKey(
    
    name: r'infoLink',
    required: false,
    includeIfNull: false,
  )


  final String? infoLink;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final ProviderMessage? message;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final Set<int>? tags;



  @JsonKey(
    
    name: r'presets',
    required: false,
    includeIfNull: false,
  )


  final List<NotificationResource>? presets;



  @JsonKey(
    
    name: r'link',
    required: false,
    includeIfNull: false,
  )


  final String? link;



  @JsonKey(
    
    name: r'onGrab',
    required: false,
    includeIfNull: false,
  )


  final bool? onGrab;



  @JsonKey(
    
    name: r'onDownload',
    required: false,
    includeIfNull: false,
  )


  final bool? onDownload;



  @JsonKey(
    
    name: r'onUpgrade',
    required: false,
    includeIfNull: false,
  )


  final bool? onUpgrade;



  @JsonKey(
    
    name: r'onImportComplete',
    required: false,
    includeIfNull: false,
  )


  final bool? onImportComplete;



  @JsonKey(
    
    name: r'onRename',
    required: false,
    includeIfNull: false,
  )


  final bool? onRename;



  @JsonKey(
    
    name: r'onSeriesAdd',
    required: false,
    includeIfNull: false,
  )


  final bool? onSeriesAdd;



  @JsonKey(
    
    name: r'onSeriesDelete',
    required: false,
    includeIfNull: false,
  )


  final bool? onSeriesDelete;



  @JsonKey(
    
    name: r'onEpisodeFileDelete',
    required: false,
    includeIfNull: false,
  )


  final bool? onEpisodeFileDelete;



  @JsonKey(
    
    name: r'onEpisodeFileDeleteForUpgrade',
    required: false,
    includeIfNull: false,
  )


  final bool? onEpisodeFileDeleteForUpgrade;



  @JsonKey(
    
    name: r'onHealthIssue',
    required: false,
    includeIfNull: false,
  )


  final bool? onHealthIssue;



  @JsonKey(
    
    name: r'includeHealthWarnings',
    required: false,
    includeIfNull: false,
  )


  final bool? includeHealthWarnings;



  @JsonKey(
    
    name: r'onHealthRestored',
    required: false,
    includeIfNull: false,
  )


  final bool? onHealthRestored;



  @JsonKey(
    
    name: r'onApplicationUpdate',
    required: false,
    includeIfNull: false,
  )


  final bool? onApplicationUpdate;



  @JsonKey(
    
    name: r'onManualInteractionRequired',
    required: false,
    includeIfNull: false,
  )


  final bool? onManualInteractionRequired;



  @JsonKey(
    
    name: r'supportsOnGrab',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnGrab;



  @JsonKey(
    
    name: r'supportsOnDownload',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnDownload;



  @JsonKey(
    
    name: r'supportsOnUpgrade',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnUpgrade;



  @JsonKey(
    
    name: r'supportsOnImportComplete',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnImportComplete;



  @JsonKey(
    
    name: r'supportsOnRename',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnRename;



  @JsonKey(
    
    name: r'supportsOnSeriesAdd',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnSeriesAdd;



  @JsonKey(
    
    name: r'supportsOnSeriesDelete',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnSeriesDelete;



  @JsonKey(
    
    name: r'supportsOnEpisodeFileDelete',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnEpisodeFileDelete;



  @JsonKey(
    
    name: r'supportsOnEpisodeFileDeleteForUpgrade',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnEpisodeFileDeleteForUpgrade;



  @JsonKey(
    
    name: r'supportsOnHealthIssue',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnHealthIssue;



  @JsonKey(
    
    name: r'supportsOnHealthRestored',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnHealthRestored;



  @JsonKey(
    
    name: r'supportsOnApplicationUpdate',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnApplicationUpdate;



  @JsonKey(
    
    name: r'supportsOnManualInteractionRequired',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsOnManualInteractionRequired;



  @JsonKey(
    
    name: r'testCommand',
    required: false,
    includeIfNull: false,
  )


  final String? testCommand;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NotificationResource &&
      other.id == id &&
      other.name == name &&
      other.fields == fields &&
      other.implementationName == implementationName &&
      other.implementation == implementation &&
      other.configContract == configContract &&
      other.infoLink == infoLink &&
      other.message == message &&
      other.tags == tags &&
      other.presets == presets &&
      other.link == link &&
      other.onGrab == onGrab &&
      other.onDownload == onDownload &&
      other.onUpgrade == onUpgrade &&
      other.onImportComplete == onImportComplete &&
      other.onRename == onRename &&
      other.onSeriesAdd == onSeriesAdd &&
      other.onSeriesDelete == onSeriesDelete &&
      other.onEpisodeFileDelete == onEpisodeFileDelete &&
      other.onEpisodeFileDeleteForUpgrade == onEpisodeFileDeleteForUpgrade &&
      other.onHealthIssue == onHealthIssue &&
      other.includeHealthWarnings == includeHealthWarnings &&
      other.onHealthRestored == onHealthRestored &&
      other.onApplicationUpdate == onApplicationUpdate &&
      other.onManualInteractionRequired == onManualInteractionRequired &&
      other.supportsOnGrab == supportsOnGrab &&
      other.supportsOnDownload == supportsOnDownload &&
      other.supportsOnUpgrade == supportsOnUpgrade &&
      other.supportsOnImportComplete == supportsOnImportComplete &&
      other.supportsOnRename == supportsOnRename &&
      other.supportsOnSeriesAdd == supportsOnSeriesAdd &&
      other.supportsOnSeriesDelete == supportsOnSeriesDelete &&
      other.supportsOnEpisodeFileDelete == supportsOnEpisodeFileDelete &&
      other.supportsOnEpisodeFileDeleteForUpgrade == supportsOnEpisodeFileDeleteForUpgrade &&
      other.supportsOnHealthIssue == supportsOnHealthIssue &&
      other.supportsOnHealthRestored == supportsOnHealthRestored &&
      other.supportsOnApplicationUpdate == supportsOnApplicationUpdate &&
      other.supportsOnManualInteractionRequired == supportsOnManualInteractionRequired &&
      other.testCommand == testCommand;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        (fields == null ? 0 : fields.hashCode) +
        (implementationName == null ? 0 : implementationName.hashCode) +
        (implementation == null ? 0 : implementation.hashCode) +
        (configContract == null ? 0 : configContract.hashCode) +
        (infoLink == null ? 0 : infoLink.hashCode) +
        message.hashCode +
        (tags == null ? 0 : tags.hashCode) +
        (presets == null ? 0 : presets.hashCode) +
        (link == null ? 0 : link.hashCode) +
        onGrab.hashCode +
        onDownload.hashCode +
        onUpgrade.hashCode +
        onImportComplete.hashCode +
        onRename.hashCode +
        onSeriesAdd.hashCode +
        onSeriesDelete.hashCode +
        onEpisodeFileDelete.hashCode +
        onEpisodeFileDeleteForUpgrade.hashCode +
        onHealthIssue.hashCode +
        includeHealthWarnings.hashCode +
        onHealthRestored.hashCode +
        onApplicationUpdate.hashCode +
        onManualInteractionRequired.hashCode +
        supportsOnGrab.hashCode +
        supportsOnDownload.hashCode +
        supportsOnUpgrade.hashCode +
        supportsOnImportComplete.hashCode +
        supportsOnRename.hashCode +
        supportsOnSeriesAdd.hashCode +
        supportsOnSeriesDelete.hashCode +
        supportsOnEpisodeFileDelete.hashCode +
        supportsOnEpisodeFileDeleteForUpgrade.hashCode +
        supportsOnHealthIssue.hashCode +
        supportsOnHealthRestored.hashCode +
        supportsOnApplicationUpdate.hashCode +
        supportsOnManualInteractionRequired.hashCode +
        (testCommand == null ? 0 : testCommand.hashCode);

  factory NotificationResource.fromJson(Map<String, dynamic> json) => _$NotificationResourceFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

