# sonarr.model.HistoryResource

## Load the model package
```dart
import 'package:sonarr/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**episodeId** | **int** |  | [optional] 
**seriesId** | **int** |  | [optional] 
**sourceTitle** | **String** |  | [optional] 
**languages** | [**BuiltList&lt;Language&gt;**](Language.md) |  | [optional] 
**quality** | [**QualityModel**](QualityModel.md) |  | [optional] 
**customFormats** | [**BuiltList&lt;CustomFormatResource&gt;**](CustomFormatResource.md) |  | [optional] 
**customFormatScore** | **int** |  | [optional] 
**qualityCutoffNotMet** | **bool** |  | [optional] 
**date** | [**DateTime**](DateTime.md) |  | [optional] 
**downloadId** | **String** |  | [optional] 
**eventType** | [**EpisodeHistoryEventType**](EpisodeHistoryEventType.md) |  | [optional] 
**data** | **BuiltMap&lt;String, String&gt;** |  | [optional] 
**episode** | [**EpisodeResource**](EpisodeResource.md) |  | [optional] 
**series** | [**SeriesResource**](SeriesResource.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


