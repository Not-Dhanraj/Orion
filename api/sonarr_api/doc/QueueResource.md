# sonarr.model.QueueResource

## Load the model package
```dart
import 'package:sonarr/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**seriesId** | **int** |  | [optional] 
**episodeId** | **int** |  | [optional] 
**seasonNumber** | **int** |  | [optional] 
**series** | [**SeriesResource**](SeriesResource.md) |  | [optional] 
**episode** | [**EpisodeResource**](EpisodeResource.md) |  | [optional] 
**languages** | [**BuiltList&lt;Language&gt;**](Language.md) |  | [optional] 
**quality** | [**QualityModel**](QualityModel.md) |  | [optional] 
**customFormats** | [**BuiltList&lt;CustomFormatResource&gt;**](CustomFormatResource.md) |  | [optional] 
**customFormatScore** | **int** |  | [optional] 
**size** | **double** |  | [optional] 
**title** | **String** |  | [optional] 
**estimatedCompletionTime** | [**DateTime**](DateTime.md) |  | [optional] 
**added** | [**DateTime**](DateTime.md) |  | [optional] 
**status** | [**QueueStatus**](QueueStatus.md) |  | [optional] 
**trackedDownloadStatus** | [**TrackedDownloadStatus**](TrackedDownloadStatus.md) |  | [optional] 
**trackedDownloadState** | [**TrackedDownloadState**](TrackedDownloadState.md) |  | [optional] 
**statusMessages** | [**BuiltList&lt;TrackedDownloadStatusMessage&gt;**](TrackedDownloadStatusMessage.md) |  | [optional] 
**errorMessage** | **String** |  | [optional] 
**downloadId** | **String** |  | [optional] 
**protocol** | [**DownloadProtocol**](DownloadProtocol.md) |  | [optional] 
**downloadClient** | **String** |  | [optional] 
**downloadClientHasPostImportCategory** | **bool** |  | [optional] 
**indexer** | **String** |  | [optional] 
**outputPath** | **String** |  | [optional] 
**episodeHasFile** | **bool** |  | [optional] 
**sizeleft** | **double** |  | [optional] 
**timeleft** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


