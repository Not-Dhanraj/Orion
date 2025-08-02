# radarr.api.HistoryApi

## Load the API package
```dart
import 'package:radarr/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3HistoryFailedIdPost**](HistoryApi.md#apiv3historyfailedidpost) | **POST** /api/v3/history/failed/{id} | 
[**apiV3HistoryGet**](HistoryApi.md#apiv3historyget) | **GET** /api/v3/history | 
[**apiV3HistoryMovieGet**](HistoryApi.md#apiv3historymovieget) | **GET** /api/v3/history/movie | 
[**apiV3HistorySinceGet**](HistoryApi.md#apiv3historysinceget) | **GET** /api/v3/history/since | 


# **apiV3HistoryFailedIdPost**
> apiV3HistoryFailedIdPost(id)



### Example
```dart
import 'package:radarr/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = Radarr().getHistoryApi();
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
> HistoryResourcePagingResource apiV3HistoryGet(page, pageSize, sortKey, sortDirection, includeMovie, eventType, downloadId, movieIds, languages, quality)



### Example
```dart
import 'package:radarr/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = Radarr().getHistoryApi();
final int page = 56; // int | 
final int pageSize = 56; // int | 
final String sortKey = sortKey_example; // String | 
final SortDirection sortDirection = ; // SortDirection | 
final bool includeMovie = true; // bool | 
final BuiltList<int> eventType = ; // BuiltList<int> | 
final String downloadId = downloadId_example; // String | 
final BuiltList<int> movieIds = ; // BuiltList<int> | 
final BuiltList<int> languages = ; // BuiltList<int> | 
final BuiltList<int> quality = ; // BuiltList<int> | 

try {
    final response = api.apiV3HistoryGet(page, pageSize, sortKey, sortDirection, includeMovie, eventType, downloadId, movieIds, languages, quality);
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
 **includeMovie** | **bool**|  | [optional] 
 **eventType** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
 **downloadId** | **String**|  | [optional] 
 **movieIds** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
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

# **apiV3HistoryMovieGet**
> BuiltList<HistoryResource> apiV3HistoryMovieGet(movieId, eventType, includeMovie)



### Example
```dart
import 'package:radarr/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = Radarr().getHistoryApi();
final int movieId = 56; // int | 
final MovieHistoryEventType eventType = ; // MovieHistoryEventType | 
final bool includeMovie = true; // bool | 

try {
    final response = api.apiV3HistoryMovieGet(movieId, eventType, includeMovie);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HistoryApi->apiV3HistoryMovieGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **movieId** | **int**|  | [optional] 
 **eventType** | [**MovieHistoryEventType**](.md)|  | [optional] 
 **includeMovie** | **bool**|  | [optional] [default to false]

### Return type

[**BuiltList&lt;HistoryResource&gt;**](HistoryResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3HistorySinceGet**
> BuiltList<HistoryResource> apiV3HistorySinceGet(date, eventType, includeMovie)



### Example
```dart
import 'package:radarr/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = Radarr().getHistoryApi();
final DateTime date = 2013-10-20T19:20:30+01:00; // DateTime | 
final MovieHistoryEventType eventType = ; // MovieHistoryEventType | 
final bool includeMovie = true; // bool | 

try {
    final response = api.apiV3HistorySinceGet(date, eventType, includeMovie);
    print(response);
} catch on DioException (e) {
    print('Exception when calling HistoryApi->apiV3HistorySinceGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**|  | [optional] 
 **eventType** | [**MovieHistoryEventType**](.md)|  | [optional] 
 **includeMovie** | **bool**|  | [optional] [default to false]

### Return type

[**BuiltList&lt;HistoryResource&gt;**](HistoryResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

