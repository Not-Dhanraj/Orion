# sonarr.api.HistoryApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3HistoryFailedIdPost**](HistoryApi.md#apiv3historyfailedidpost) | **POST** /api/v3/history/failed/{id} | 
[**apiV3HistoryGet**](HistoryApi.md#apiv3historyget) | **GET** /api/v3/history | 
[**apiV3HistorySeriesGet**](HistoryApi.md#apiv3historyseriesget) | **GET** /api/v3/history/series | 
[**apiV3HistorySinceGet**](HistoryApi.md#apiv3historysinceget) | **GET** /api/v3/history/since | 


# **apiV3HistoryFailedIdPost**
> apiV3HistoryFailedIdPost(id)



### Example
```dart
import 'package:sonarr/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = Sonarr().getHistoryApi();
final int id = 56; // int | 

try {
    api.apiV3HistoryFailedIdPost(id);
} catch on DioException (e) {
    print('Exception when calling HistoryApi->apiV3HistoryFailedIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3HistoryGet**
> HistoryResourcePagingResource apiV3HistoryGet(page, pageSize, sortKey, sortDirection, includeSeries, includeEpisode, eventType, episodeId, downloadId, seriesIds, languages, quality)



### Example
```dart
import 'package:sonarr/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = Sonarr().getHistoryApi();
final int page = 56; // int | 
final int pageSize = 56; // int | 
final String sortKey = sortKey_example; // String | 
final SortDirection sortDirection = ; // SortDirection | 
final bool includeSeries = true; // bool | 
final bool includeEpisode = true; // bool | 
final BuiltList<int> eventType = ; // BuiltList<int> | 
final int episodeId = 56; // int | 
final String downloadId = downloadId_example; // String | 
final BuiltList<int> seriesIds = ; // BuiltList<int> | 
final BuiltList<int> languages = ; // BuiltList<int> | 
final BuiltList<int> quality = ; // BuiltList<int> | 

try {
    final response = api.apiV3HistoryGet(page, pageSize, sortKey, sortDirection, includeSeries, includeEpisode, eventType, episodeId, downloadId, seriesIds, languages, quality);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HistoryApi->apiV3HistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 10]
 **sortKey** | **String**|  | [optional] 
 **sortDirection** | [**SortDirection**](.md)|  | [optional] 
 **includeSeries** | **bool**|  | [optional] 
 **includeEpisode** | **bool**|  | [optional] 
 **eventType** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
 **episodeId** | **int**|  | [optional] 
 **downloadId** | **String**|  | [optional] 
 **seriesIds** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
 **languages** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
 **quality** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 

### Return type

[**HistoryResourcePagingResource**](HistoryResourcePagingResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3HistorySeriesGet**
> BuiltList<HistoryResource> apiV3HistorySeriesGet(seriesId, seasonNumber, eventType, includeSeries, includeEpisode)



### Example
```dart
import 'package:sonarr/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = Sonarr().getHistoryApi();
final int seriesId = 56; // int | 
final int seasonNumber = 56; // int | 
final EpisodeHistoryEventType eventType = ; // EpisodeHistoryEventType | 
final bool includeSeries = true; // bool | 
final bool includeEpisode = true; // bool | 

try {
    final response = api.apiV3HistorySeriesGet(seriesId, seasonNumber, eventType, includeSeries, includeEpisode);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HistoryApi->apiV3HistorySeriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seriesId** | **int**|  | [optional] 
 **seasonNumber** | **int**|  | [optional] 
 **eventType** | [**EpisodeHistoryEventType**](.md)|  | [optional] 
 **includeSeries** | **bool**|  | [optional] [default to false]
 **includeEpisode** | **bool**|  | [optional] [default to false]

### Return type

[**BuiltList&lt;HistoryResource&gt;**](HistoryResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3HistorySinceGet**
> BuiltList<HistoryResource> apiV3HistorySinceGet(date, eventType, includeSeries, includeEpisode)



### Example
```dart
import 'package:sonarr/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = Sonarr().getHistoryApi();
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | 
final EpisodeHistoryEventType eventType = ; // EpisodeHistoryEventType | 
final bool includeSeries = true; // bool | 
final bool includeEpisode = true; // bool | 

try {
    final response = api.apiV3HistorySinceGet(date, eventType, includeSeries, includeEpisode);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HistoryApi->apiV3HistorySinceGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**|  | [optional] 
 **eventType** | [**EpisodeHistoryEventType**](.md)|  | [optional] 
 **includeSeries** | **bool**|  | [optional] [default to false]
 **includeEpisode** | **bool**|  | [optional] [default to false]

### Return type

[**BuiltList&lt;HistoryResource&gt;**](HistoryResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

