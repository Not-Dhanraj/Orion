# radarr.model.ReleaseResource

## Load the model package
```dart
import 'package:radarr/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**guid** | **String** |  | [optional] 
**quality** | [**QualityModel**](QualityModel.md) |  | [optional] 
**customFormats** | [**BuiltList&lt;CustomFormatResource&gt;**](CustomFormatResource.md) |  | [optional] 
**customFormatScore** | **int** |  | [optional] 
**qualityWeight** | **int** |  | [optional] 
**age** | **int** |  | [optional] 
**ageHours** | **double** |  | [optional] 
**ageMinutes** | **double** |  | [optional] 
**size** | **int** |  | [optional] 
**indexerId** | **int** |  | [optional] 
**indexer** | **String** |  | [optional] 
**releaseGroup** | **String** |  | [optional] 
**subGroup** | **String** |  | [optional] 
**releaseHash** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**sceneSource** | **bool** |  | [optional] 
**movieTitles** | **BuiltList&lt;String&gt;** |  | [optional] 
**languages** | [**BuiltList&lt;Language&gt;**](Language.md) |  | [optional] 
**mappedMovieId** | **int** |  | [optional] 
**approved** | **bool** |  | [optional] 
**temporarilyRejected** | **bool** |  | [optional] 
**rejected** | **bool** |  | [optional] 
**tmdbId** | **int** |  | [optional] 
**imdbId** | **int** |  | [optional] 
**rejections** | **BuiltList&lt;String&gt;** |  | [optional] 
**publishDate** | [**DateTime**](DateTime.md) |  | [optional] 
**commentUrl** | **String** |  | [optional] 
**downloadUrl** | **String** |  | [optional] 
**infoUrl** | **String** |  | [optional] 
**movieRequested** | **bool** |  | [optional] 
**downloadAllowed** | **bool** |  | [optional] 
**releaseWeight** | **int** |  | [optional] 
**edition** | **String** |  | [optional] 
**magnetUrl** | **String** |  | [optional] 
**infoHash** | **String** |  | [optional] 
**seeders** | **int** |  | [optional] 
**leechers** | **int** |  | [optional] 
**protocol** | [**DownloadProtocol**](DownloadProtocol.md) |  | [optional] 
**indexerFlags** | [**JsonObject**](.md) |  | [optional] 
**movieId** | **int** |  | [optional] 
**downloadClientId** | **int** |  | [optional] 
**downloadClient** | **String** |  | [optional] 
**shouldOverride** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


