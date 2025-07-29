# sonarr.model.ManualImportReprocessResource

## Load the model package
```dart
import 'package:sonarr/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**path** | **String** |  | [optional] 
**seriesId** | **int** |  | [optional] 
**seasonNumber** | **int** |  | [optional] 
**episodes** | [**BuiltList&lt;EpisodeResource&gt;**](EpisodeResource.md) |  | [optional] 
**episodeIds** | **BuiltList&lt;int&gt;** |  | [optional] 
**quality** | [**QualityModel**](QualityModel.md) |  | [optional] 
**languages** | [**BuiltList&lt;Language&gt;**](Language.md) |  | [optional] 
**releaseGroup** | **String** |  | [optional] 
**downloadId** | **String** |  | [optional] 
**customFormats** | [**BuiltList&lt;CustomFormatResource&gt;**](CustomFormatResource.md) |  | [optional] 
**customFormatScore** | **int** |  | [optional] 
**indexerFlags** | **int** |  | [optional] 
**releaseType** | [**ReleaseType**](ReleaseType.md) |  | [optional] 
**rejections** | [**BuiltList&lt;ImportRejectionResource&gt;**](ImportRejectionResource.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


