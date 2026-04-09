# radarr_api.model.CollectionResource

## Load the model package
```dart
import 'package:radarr_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**title** | **String** |  | [optional] 
**sortTitle** | **String** |  | [optional] 
**tmdbId** | **int** |  | [optional] 
**images** | [**List&lt;MediaCover&gt;**](MediaCover.md) |  | [optional] 
**overview** | **String** |  | [optional] 
**monitored** | **bool** |  | [optional] 
**rootFolderPath** | **String** |  | [optional] 
**qualityProfileId** | **int** |  | [optional] 
**searchOnAdd** | **bool** |  | [optional] 
**minimumAvailability** | [**MovieStatusType**](MovieStatusType.md) |  | [optional] 
**movies** | [**List&lt;CollectionMovieResource&gt;**](CollectionMovieResource.md) |  | [optional] 
**missingMovies** | **int** |  | [optional] 
**tags** | **Set&lt;int&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


