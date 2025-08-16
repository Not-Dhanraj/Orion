# sonarr.model.SeriesResource

## Load the model package
```dart
import 'package:sonarr/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**title** | **String** |  | [optional] 
**alternateTitles** | [**BuiltList&lt;AlternateTitleResource&gt;**](AlternateTitleResource.md) |  | [optional] 
**sortTitle** | **String** |  | [optional] 
**status** | [**SeriesStatusType**](SeriesStatusType.md) |  | [optional] 
**ended** | **bool** |  | [optional] 
**profileName** | **String** |  | [optional] 
**overview** | **String** |  | [optional] 
**nextAiring** | [**DateTime**](DateTime.md) |  | [optional] 
**previousAiring** | [**DateTime**](DateTime.md) |  | [optional] 
**network** | **String** |  | [optional] 
**airTime** | **String** |  | [optional] 
**images** | [**BuiltList&lt;MediaCover&gt;**](MediaCover.md) |  | [optional] 
**originalLanguage** | [**Language**](Language.md) |  | [optional] 
**remotePoster** | **String** |  | [optional] 
**seasons** | [**BuiltList&lt;SeasonResource&gt;**](SeasonResource.md) |  | [optional] 
**year** | **int** |  | [optional] 
**path** | **String** |  | [optional] 
**qualityProfileId** | **int** |  | [optional] 
**seasonFolder** | **bool** |  | [optional] 
**monitored** | **bool** |  | [optional] 
**monitorNewItems** | [**NewItemMonitorTypes**](NewItemMonitorTypes.md) |  | [optional] 
**useSceneNumbering** | **bool** |  | [optional] 
**runtime** | **int** |  | [optional] 
**tvdbId** | **int** |  | [optional] 
**tvRageId** | **int** |  | [optional] 
**tvMazeId** | **int** |  | [optional] 
**tmdbId** | **int** |  | [optional] 
**firstAired** | [**DateTime**](DateTime.md) |  | [optional] 
**lastAired** | [**DateTime**](DateTime.md) |  | [optional] 
**seriesType** | [**SeriesTypes**](SeriesTypes.md) |  | [optional] 
**cleanTitle** | **String** |  | [optional] 
**imdbId** | **String** |  | [optional] 
**titleSlug** | **String** |  | [optional] 
**rootFolderPath** | **String** |  | [optional] 
**folder** | **String** |  | [optional] 
**certification** | **String** |  | [optional] 
**genres** | **BuiltList&lt;String&gt;** |  | [optional] 
**tags** | **BuiltSet&lt;int&gt;** |  | [optional] 
**added** | [**DateTime**](DateTime.md) |  | [optional] 
**addOptions** | [**AddSeriesOptions**](AddSeriesOptions.md) |  | [optional] 
**ratings** | [**Ratings**](Ratings.md) |  | [optional] 
**statistics** | [**SeriesStatisticsResource**](SeriesStatisticsResource.md) |  | [optional] 
**episodesChanged** | **bool** |  | [optional] 
**languageProfileId** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


