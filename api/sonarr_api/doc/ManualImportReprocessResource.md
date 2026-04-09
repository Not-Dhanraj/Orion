# sonarr_api.model.ManualImportReprocessResource

## Load the model package
```dart
import 'package:sonarr_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**path** | **String** |  | [optional] 
**seriesId** | **int** |  | [optional] 
**seasonNumber** | **int** |  | [optional] 
**episodes** | [**List&lt;EpisodeResource&gt;**](EpisodeResource.md) |  | [optional] 
**episodeIds** | **List&lt;int&gt;** |  | [optional] 
**quality** | [**QualityModel**](QualityModel.md) |  | [optional] 
**languages** | [**List&lt;Language&gt;**](Language.md) |  | [optional] 
**releaseGroup** | **String** |  | [optional] 
**downloadId** | **String** |  | [optional] 
**customFormats** | [**List&lt;CustomFormatResource&gt;**](CustomFormatResource.md) |  | [optional] 
**customFormatScore** | **int** |  | [optional] 
**indexerFlags** | **int** |  | [optional] 
**releaseType** | [**ReleaseType**](ReleaseType.md) |  | [optional] 
**rejections** | [**List&lt;ImportRejectionResource&gt;**](ImportRejectionResource.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


