//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/rescan_after_refresh_type.dart';
import 'package:radarr_api/lib/model/proper_download_types.dart';
import 'package:radarr_api/lib/model/file_date_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_management_config_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaManagementConfigResource {
  /// Returns a new [MediaManagementConfigResource] instance.
  MediaManagementConfigResource({

     this.id,

     this.autoUnmonitorPreviouslyDownloadedMovies,

     this.recycleBin,

     this.recycleBinCleanupDays,

     this.downloadPropersAndRepacks,

     this.createEmptyMovieFolders,

     this.deleteEmptyFolders,

     this.fileDate,

     this.rescanAfterRefresh,

     this.autoRenameFolders,

     this.pathsDefaultStatic,

     this.setPermissionsLinux,

     this.chmodFolder,

     this.chownGroup,

     this.skipFreeSpaceCheckWhenImporting,

     this.minimumFreeSpaceWhenImporting,

     this.copyUsingHardlinks,

     this.useScriptImport,

     this.scriptImportPath,

     this.importExtraFiles,

     this.extraFileExtensions,

     this.enableMediaInfo,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'autoUnmonitorPreviouslyDownloadedMovies',
    required: false,
    includeIfNull: false,
  )


  final bool? autoUnmonitorPreviouslyDownloadedMovies;



  @JsonKey(
    
    name: r'recycleBin',
    required: false,
    includeIfNull: false,
  )


  final String? recycleBin;



  @JsonKey(
    
    name: r'recycleBinCleanupDays',
    required: false,
    includeIfNull: false,
  )


  final int? recycleBinCleanupDays;



  @JsonKey(
    
    name: r'downloadPropersAndRepacks',
    required: false,
    includeIfNull: false,
  )


  final ProperDownloadTypes? downloadPropersAndRepacks;



  @JsonKey(
    
    name: r'createEmptyMovieFolders',
    required: false,
    includeIfNull: false,
  )


  final bool? createEmptyMovieFolders;



  @JsonKey(
    
    name: r'deleteEmptyFolders',
    required: false,
    includeIfNull: false,
  )


  final bool? deleteEmptyFolders;



  @JsonKey(
    
    name: r'fileDate',
    required: false,
    includeIfNull: false,
  )


  final FileDateType? fileDate;



  @JsonKey(
    
    name: r'rescanAfterRefresh',
    required: false,
    includeIfNull: false,
  )


  final RescanAfterRefreshType? rescanAfterRefresh;



  @JsonKey(
    
    name: r'autoRenameFolders',
    required: false,
    includeIfNull: false,
  )


  final bool? autoRenameFolders;



  @JsonKey(
    
    name: r'pathsDefaultStatic',
    required: false,
    includeIfNull: false,
  )


  final bool? pathsDefaultStatic;



  @JsonKey(
    
    name: r'setPermissionsLinux',
    required: false,
    includeIfNull: false,
  )


  final bool? setPermissionsLinux;



  @JsonKey(
    
    name: r'chmodFolder',
    required: false,
    includeIfNull: false,
  )


  final String? chmodFolder;



  @JsonKey(
    
    name: r'chownGroup',
    required: false,
    includeIfNull: false,
  )


  final String? chownGroup;



  @JsonKey(
    
    name: r'skipFreeSpaceCheckWhenImporting',
    required: false,
    includeIfNull: false,
  )


  final bool? skipFreeSpaceCheckWhenImporting;



  @JsonKey(
    
    name: r'minimumFreeSpaceWhenImporting',
    required: false,
    includeIfNull: false,
  )


  final int? minimumFreeSpaceWhenImporting;



  @JsonKey(
    
    name: r'copyUsingHardlinks',
    required: false,
    includeIfNull: false,
  )


  final bool? copyUsingHardlinks;



  @JsonKey(
    
    name: r'useScriptImport',
    required: false,
    includeIfNull: false,
  )


  final bool? useScriptImport;



  @JsonKey(
    
    name: r'scriptImportPath',
    required: false,
    includeIfNull: false,
  )


  final String? scriptImportPath;



  @JsonKey(
    
    name: r'importExtraFiles',
    required: false,
    includeIfNull: false,
  )


  final bool? importExtraFiles;



  @JsonKey(
    
    name: r'extraFileExtensions',
    required: false,
    includeIfNull: false,
  )


  final String? extraFileExtensions;



  @JsonKey(
    
    name: r'enableMediaInfo',
    required: false,
    includeIfNull: false,
  )


  final bool? enableMediaInfo;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaManagementConfigResource &&
      other.id == id &&
      other.autoUnmonitorPreviouslyDownloadedMovies == autoUnmonitorPreviouslyDownloadedMovies &&
      other.recycleBin == recycleBin &&
      other.recycleBinCleanupDays == recycleBinCleanupDays &&
      other.downloadPropersAndRepacks == downloadPropersAndRepacks &&
      other.createEmptyMovieFolders == createEmptyMovieFolders &&
      other.deleteEmptyFolders == deleteEmptyFolders &&
      other.fileDate == fileDate &&
      other.rescanAfterRefresh == rescanAfterRefresh &&
      other.autoRenameFolders == autoRenameFolders &&
      other.pathsDefaultStatic == pathsDefaultStatic &&
      other.setPermissionsLinux == setPermissionsLinux &&
      other.chmodFolder == chmodFolder &&
      other.chownGroup == chownGroup &&
      other.skipFreeSpaceCheckWhenImporting == skipFreeSpaceCheckWhenImporting &&
      other.minimumFreeSpaceWhenImporting == minimumFreeSpaceWhenImporting &&
      other.copyUsingHardlinks == copyUsingHardlinks &&
      other.useScriptImport == useScriptImport &&
      other.scriptImportPath == scriptImportPath &&
      other.importExtraFiles == importExtraFiles &&
      other.extraFileExtensions == extraFileExtensions &&
      other.enableMediaInfo == enableMediaInfo;

    @override
    int get hashCode =>
        id.hashCode +
        autoUnmonitorPreviouslyDownloadedMovies.hashCode +
        (recycleBin == null ? 0 : recycleBin.hashCode) +
        recycleBinCleanupDays.hashCode +
        downloadPropersAndRepacks.hashCode +
        createEmptyMovieFolders.hashCode +
        deleteEmptyFolders.hashCode +
        fileDate.hashCode +
        rescanAfterRefresh.hashCode +
        autoRenameFolders.hashCode +
        pathsDefaultStatic.hashCode +
        setPermissionsLinux.hashCode +
        (chmodFolder == null ? 0 : chmodFolder.hashCode) +
        (chownGroup == null ? 0 : chownGroup.hashCode) +
        skipFreeSpaceCheckWhenImporting.hashCode +
        minimumFreeSpaceWhenImporting.hashCode +
        copyUsingHardlinks.hashCode +
        useScriptImport.hashCode +
        (scriptImportPath == null ? 0 : scriptImportPath.hashCode) +
        importExtraFiles.hashCode +
        (extraFileExtensions == null ? 0 : extraFileExtensions.hashCode) +
        enableMediaInfo.hashCode;

  factory MediaManagementConfigResource.fromJson(Map<String, dynamic> json) => _$MediaManagementConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MediaManagementConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

