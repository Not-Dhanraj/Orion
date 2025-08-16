# sonarr.model.MediaManagementConfigResource

## Load the model package
```dart
import 'package:sonarr/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**autoUnmonitorPreviouslyDownloadedEpisodes** | **bool** |  | [optional] 
**recycleBin** | **String** |  | [optional] 
**recycleBinCleanupDays** | **int** |  | [optional] 
**downloadPropersAndRepacks** | [**ProperDownloadTypes**](ProperDownloadTypes.md) |  | [optional] 
**createEmptySeriesFolders** | **bool** |  | [optional] 
**deleteEmptyFolders** | **bool** |  | [optional] 
**fileDate** | [**FileDateType**](FileDateType.md) |  | [optional] 
**rescanAfterRefresh** | [**RescanAfterRefreshType**](RescanAfterRefreshType.md) |  | [optional] 
**setPermissionsLinux** | **bool** |  | [optional] 
**chmodFolder** | **String** |  | [optional] 
**chownGroup** | **String** |  | [optional] 
**episodeTitleRequired** | [**EpisodeTitleRequiredType**](EpisodeTitleRequiredType.md) |  | [optional] 
**skipFreeSpaceCheckWhenImporting** | **bool** |  | [optional] 
**minimumFreeSpaceWhenImporting** | **int** |  | [optional] 
**copyUsingHardlinks** | **bool** |  | [optional] 
**useScriptImport** | **bool** |  | [optional] 
**scriptImportPath** | **String** |  | [optional] 
**importExtraFiles** | **bool** |  | [optional] 
**extraFileExtensions** | **String** |  | [optional] 
**enableMediaInfo** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


