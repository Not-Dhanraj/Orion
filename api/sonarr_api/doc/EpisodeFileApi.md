# sonarr.api.EpisodeFileApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3EpisodefileBulkDelete**](EpisodeFileApi.md#apiv3episodefilebulkdelete) | **DELETE** /api/v3/episodefile/bulk | 
[**apiV3EpisodefileBulkPut**](EpisodeFileApi.md#apiv3episodefilebulkput) | **PUT** /api/v3/episodefile/bulk | 
[**apiV3EpisodefileEditorPut**](EpisodeFileApi.md#apiv3episodefileeditorput) | **PUT** /api/v3/episodefile/editor | 
[**apiV3EpisodefileGet**](EpisodeFileApi.md#apiv3episodefileget) | **GET** /api/v3/episodefile | 
[**apiV3EpisodefileIdDelete**](EpisodeFileApi.md#apiv3episodefileiddelete) | **DELETE** /api/v3/episodefile/{id} | 
[**apiV3EpisodefileIdGet**](EpisodeFileApi.md#apiv3episodefileidget) | **GET** /api/v3/episodefile/{id} | 
[**apiV3EpisodefileIdPut**](EpisodeFileApi.md#apiv3episodefileidput) | **PUT** /api/v3/episodefile/{id} | 


# **apiV3EpisodefileBulkDelete**
> apiV3EpisodefileBulkDelete(episodeFileListResource)



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

final api = Sonarr().getEpisodeFileApi();
final EpisodeFileListResource episodeFileListResource = ; // EpisodeFileListResource | 

try {
    api.apiV3EpisodefileBulkDelete(episodeFileListResource);
} catch on DioException (e) {
    print('Exception when calling EpisodeFileApi->apiV3EpisodefileBulkDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **episodeFileListResource** | [**EpisodeFileListResource**](EpisodeFileListResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3EpisodefileBulkPut**
> apiV3EpisodefileBulkPut(episodeFileResource)



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

final api = Sonarr().getEpisodeFileApi();
final BuiltList<EpisodeFileResource> episodeFileResource = ; // BuiltList<EpisodeFileResource> | 

try {
    api.apiV3EpisodefileBulkPut(episodeFileResource);
} catch on DioException (e) {
    print('Exception when calling EpisodeFileApi->apiV3EpisodefileBulkPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **episodeFileResource** | [**BuiltList&lt;EpisodeFileResource&gt;**](EpisodeFileResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3EpisodefileEditorPut**
> apiV3EpisodefileEditorPut(episodeFileListResource)



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

final api = Sonarr().getEpisodeFileApi();
final EpisodeFileListResource episodeFileListResource = ; // EpisodeFileListResource | 

try {
    api.apiV3EpisodefileEditorPut(episodeFileListResource);
} catch on DioException (e) {
    print('Exception when calling EpisodeFileApi->apiV3EpisodefileEditorPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **episodeFileListResource** | [**EpisodeFileListResource**](EpisodeFileListResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3EpisodefileGet**
> BuiltList<EpisodeFileResource> apiV3EpisodefileGet(seriesId, episodeFileIds)



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

final api = Sonarr().getEpisodeFileApi();
final int seriesId = 56; // int | 
final BuiltList<int> episodeFileIds = ; // BuiltList<int> | 

try {
    final response = api.apiV3EpisodefileGet(seriesId, episodeFileIds);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EpisodeFileApi->apiV3EpisodefileGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seriesId** | **int**|  | [optional] 
 **episodeFileIds** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 

### Return type

[**BuiltList&lt;EpisodeFileResource&gt;**](EpisodeFileResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3EpisodefileIdDelete**
> apiV3EpisodefileIdDelete(id)



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

final api = Sonarr().getEpisodeFileApi();
final int id = 56; // int | 

try {
    api.apiV3EpisodefileIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling EpisodeFileApi->apiV3EpisodefileIdDelete: $e\n');
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

# **apiV3EpisodefileIdGet**
> EpisodeFileResource apiV3EpisodefileIdGet(id)



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

final api = Sonarr().getEpisodeFileApi();
final int id = 56; // int | 

try {
    final response = api.apiV3EpisodefileIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EpisodeFileApi->apiV3EpisodefileIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**EpisodeFileResource**](EpisodeFileResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3EpisodefileIdPut**
> EpisodeFileResource apiV3EpisodefileIdPut(id, episodeFileResource)



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

final api = Sonarr().getEpisodeFileApi();
final String id = id_example; // String | 
final EpisodeFileResource episodeFileResource = ; // EpisodeFileResource | 

try {
    final response = api.apiV3EpisodefileIdPut(id, episodeFileResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EpisodeFileApi->apiV3EpisodefileIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **episodeFileResource** | [**EpisodeFileResource**](EpisodeFileResource.md)|  | [optional] 

### Return type

[**EpisodeFileResource**](EpisodeFileResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

