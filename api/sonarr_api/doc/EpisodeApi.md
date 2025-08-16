# sonarr.api.EpisodeApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3EpisodeGet**](EpisodeApi.md#apiv3episodeget) | **GET** /api/v3/episode | 
[**apiV3EpisodeIdGet**](EpisodeApi.md#apiv3episodeidget) | **GET** /api/v3/episode/{id} | 
[**apiV3EpisodeIdPut**](EpisodeApi.md#apiv3episodeidput) | **PUT** /api/v3/episode/{id} | 
[**apiV3EpisodeMonitorPut**](EpisodeApi.md#apiv3episodemonitorput) | **PUT** /api/v3/episode/monitor | 


# **apiV3EpisodeGet**
> BuiltList<EpisodeResource> apiV3EpisodeGet(seriesId, seasonNumber, episodeIds, episodeFileId, includeSeries, includeEpisodeFile, includeImages)



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

final api = Sonarr().getEpisodeApi();
final int seriesId = 56; // int | 
final int seasonNumber = 56; // int | 
final BuiltList<int> episodeIds = ; // BuiltList<int> | 
final int episodeFileId = 56; // int | 
final bool includeSeries = true; // bool | 
final bool includeEpisodeFile = true; // bool | 
final bool includeImages = true; // bool | 

try {
    final response = api.apiV3EpisodeGet(seriesId, seasonNumber, episodeIds, episodeFileId, includeSeries, includeEpisodeFile, includeImages);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EpisodeApi->apiV3EpisodeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seriesId** | **int**|  | [optional] 
 **seasonNumber** | **int**|  | [optional] 
 **episodeIds** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
 **episodeFileId** | **int**|  | [optional] 
 **includeSeries** | **bool**|  | [optional] [default to false]
 **includeEpisodeFile** | **bool**|  | [optional] [default to false]
 **includeImages** | **bool**|  | [optional] [default to false]

### Return type

[**BuiltList&lt;EpisodeResource&gt;**](EpisodeResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3EpisodeIdGet**
> EpisodeResource apiV3EpisodeIdGet(id)



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

final api = Sonarr().getEpisodeApi();
final int id = 56; // int | 

try {
    final response = api.apiV3EpisodeIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EpisodeApi->apiV3EpisodeIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**EpisodeResource**](EpisodeResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3EpisodeIdPut**
> EpisodeResource apiV3EpisodeIdPut(id, episodeResource)



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

final api = Sonarr().getEpisodeApi();
final int id = 56; // int | 
final EpisodeResource episodeResource = ; // EpisodeResource | 

try {
    final response = api.apiV3EpisodeIdPut(id, episodeResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EpisodeApi->apiV3EpisodeIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **episodeResource** | [**EpisodeResource**](EpisodeResource.md)|  | [optional] 

### Return type

[**EpisodeResource**](EpisodeResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3EpisodeMonitorPut**
> apiV3EpisodeMonitorPut(includeImages, episodesMonitoredResource)



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

final api = Sonarr().getEpisodeApi();
final bool includeImages = true; // bool | 
final EpisodesMonitoredResource episodesMonitoredResource = ; // EpisodesMonitoredResource | 

try {
    api.apiV3EpisodeMonitorPut(includeImages, episodesMonitoredResource);
} catch on DioException (e) {
    print('Exception when calling EpisodeApi->apiV3EpisodeMonitorPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeImages** | **bool**|  | [optional] [default to false]
 **episodesMonitoredResource** | [**EpisodesMonitoredResource**](EpisodesMonitoredResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

