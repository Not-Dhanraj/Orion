# radarr.model.MovieResource

## Load the model package
```dart
import 'package:radarr/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**title** | **String** |  | [optional] 
**originalTitle** | **String** |  | [optional] 
**originalLanguage** | [**Language**](Language.md) |  | [optional] 
**alternateTitles** | [**BuiltList&lt;AlternativeTitleResource&gt;**](AlternativeTitleResource.md) |  | [optional] 
**secondaryYear** | **int** |  | [optional] 
**secondaryYearSourceId** | **int** |  | [optional] 
**sortTitle** | **String** |  | [optional] 
**sizeOnDisk** | **int** |  | [optional] 
**status** | [**MovieStatusType**](MovieStatusType.md) |  | [optional] 
**overview** | **String** |  | [optional] 
**inCinemas** | [**DateTime**](DateTime.md) |  | [optional] 
**physicalRelease** | [**DateTime**](DateTime.md) |  | [optional] 
**digitalRelease** | [**DateTime**](DateTime.md) |  | [optional] 
**releaseDate** | [**DateTime**](DateTime.md) |  | [optional] 
**physicalReleaseNote** | **String** |  | [optional] 
**images** | [**BuiltList&lt;MediaCover&gt;**](MediaCover.md) |  | [optional] 
**website** | **String** |  | [optional] 
**remotePoster** | **String** |  | [optional] 
**year** | **int** |  | [optional] 
**youTubeTrailerId** | **String** |  | [optional] 
**studio** | **String** |  | [optional] 
**path** | **String** |  | [optional] 
**qualityProfileId** | **int** |  | [optional] 
**hasFile** | **bool** |  | [optional] 
**movieFileId** | **int** |  | [optional] 
**monitored** | **bool** |  | [optional] 
**minimumAvailability** | [**MovieStatusType**](MovieStatusType.md) |  | [optional] 
**isAvailable** | **bool** |  | [optional] 
**folderName** | **String** |  | [optional] 
**runtime** | **int** |  | [optional] 
**cleanTitle** | **String** |  | [optional] 
**imdbId** | **String** |  | [optional] 
**tmdbId** | **int** |  | [optional] 
**titleSlug** | **String** |  | [optional] 
**rootFolderPath** | **String** |  | [optional] 
**folder** | **String** |  | [optional] 
**certification** | **String** |  | [optional] 
**genres** | **BuiltList&lt;String&gt;** |  | [optional] 
**keywords** | **BuiltList&lt;String&gt;** |  | [optional] 
**tags** | **BuiltSet&lt;int&gt;** |  | [optional] 
**added** | [**DateTime**](DateTime.md) |  | [optional] 
**addOptions** | [**AddMovieOptions**](AddMovieOptions.md) |  | [optional] 
**ratings** | [**Ratings**](Ratings.md) |  | [optional] 
**movieFile** | [**MovieFileResource**](MovieFileResource.md) |  | [optional] 
**collection** | [**MovieCollectionResource**](MovieCollectionResource.md) |  | [optional] 
**popularity** | **double** |  | [optional] 
**lastSearchTime** | [**DateTime**](DateTime.md) |  | [optional] 
**statistics** | [**MovieStatisticsResource**](MovieStatisticsResource.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


