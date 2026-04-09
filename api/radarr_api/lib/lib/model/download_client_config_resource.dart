//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'download_client_config_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DownloadClientConfigResource {
  /// Returns a new [DownloadClientConfigResource] instance.
  DownloadClientConfigResource({

     this.id,

     this.downloadClientWorkingFolders,

     this.enableCompletedDownloadHandling,

     this.checkForFinishedDownloadInterval,

     this.autoRedownloadFailed,

     this.autoRedownloadFailedFromInteractiveSearch,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'downloadClientWorkingFolders',
    required: false,
    includeIfNull: false,
  )


  final String? downloadClientWorkingFolders;



  @JsonKey(
    
    name: r'enableCompletedDownloadHandling',
    required: false,
    includeIfNull: false,
  )


  final bool? enableCompletedDownloadHandling;



  @JsonKey(
    
    name: r'checkForFinishedDownloadInterval',
    required: false,
    includeIfNull: false,
  )


  final int? checkForFinishedDownloadInterval;



  @JsonKey(
    
    name: r'autoRedownloadFailed',
    required: false,
    includeIfNull: false,
  )


  final bool? autoRedownloadFailed;



  @JsonKey(
    
    name: r'autoRedownloadFailedFromInteractiveSearch',
    required: false,
    includeIfNull: false,
  )


  final bool? autoRedownloadFailedFromInteractiveSearch;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DownloadClientConfigResource &&
      other.id == id &&
      other.downloadClientWorkingFolders == downloadClientWorkingFolders &&
      other.enableCompletedDownloadHandling == enableCompletedDownloadHandling &&
      other.checkForFinishedDownloadInterval == checkForFinishedDownloadInterval &&
      other.autoRedownloadFailed == autoRedownloadFailed &&
      other.autoRedownloadFailedFromInteractiveSearch == autoRedownloadFailedFromInteractiveSearch;

    @override
    int get hashCode =>
        id.hashCode +
        (downloadClientWorkingFolders == null ? 0 : downloadClientWorkingFolders.hashCode) +
        enableCompletedDownloadHandling.hashCode +
        checkForFinishedDownloadInterval.hashCode +
        autoRedownloadFailed.hashCode +
        autoRedownloadFailedFromInteractiveSearch.hashCode;

  factory DownloadClientConfigResource.fromJson(Map<String, dynamic> json) => _$DownloadClientConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadClientConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

