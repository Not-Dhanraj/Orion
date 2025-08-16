# sonarr.api.SeriesApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3SeriesGet**](SeriesApi.md#apiv3seriesget) | **GET** /api/v3/series | 
[**apiV3SeriesIdDelete**](SeriesApi.md#apiv3seriesiddelete) | **DELETE** /api/v3/series/{id} | 
[**apiV3SeriesIdGet**](SeriesApi.md#apiv3seriesidget) | **GET** /api/v3/series/{id} | 
[**apiV3SeriesIdPut**](SeriesApi.md#apiv3seriesidput) | **PUT** /api/v3/series/{id} | 
[**apiV3SeriesPost**](SeriesApi.md#apiv3seriespost) | **POST** /api/v3/series | 


# **apiV3SeriesGet**
> BuiltList<SeriesResource> apiV3SeriesGet(tvdbId, includeSeasonImages)



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

final api = Sonarr().getSeriesApi();
final int tvdbId = 56; // int | 
final bool includeSeasonImages = true; // bool | 

try {
    final response = api.apiV3SeriesGet(tvdbId, includeSeasonImages);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SeriesApi->apiV3SeriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tvdbId** | **int**|  | [optional] 
 **includeSeasonImages** | **bool**|  | [optional] [default to false]

### Return type

[**BuiltList&lt;SeriesResource&gt;**](SeriesResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3SeriesIdDelete**
> apiV3SeriesIdDelete(id, deleteFiles, addImportListExclusion)



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

final api = Sonarr().getSeriesApi();
final int id = 56; // int | 
final bool deleteFiles = true; // bool | 
final bool addImportListExclusion = true; // bool | 

try {
    api.apiV3SeriesIdDelete(id, deleteFiles, addImportListExclusion);
} catch on DioException (e) {
    print('Exception when calling SeriesApi->apiV3SeriesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **deleteFiles** | **bool**|  | [optional] [default to false]
 **addImportListExclusion** | **bool**|  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3SeriesIdGet**
> SeriesResource apiV3SeriesIdGet(id, includeSeasonImages)



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

final api = Sonarr().getSeriesApi();
final int id = 56; // int | 
final bool includeSeasonImages = true; // bool | 

try {
    final response = api.apiV3SeriesIdGet(id, includeSeasonImages);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SeriesApi->apiV3SeriesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **includeSeasonImages** | **bool**|  | [optional] [default to false]

### Return type

[**SeriesResource**](SeriesResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3SeriesIdPut**
> SeriesResource apiV3SeriesIdPut(id, moveFiles, seriesResource)



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

final api = Sonarr().getSeriesApi();
final String id = id_example; // String | 
final bool moveFiles = true; // bool | 
final SeriesResource seriesResource = ; // SeriesResource | 

try {
    final response = api.apiV3SeriesIdPut(id, moveFiles, seriesResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SeriesApi->apiV3SeriesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **moveFiles** | **bool**|  | [optional] [default to false]
 **seriesResource** | [**SeriesResource**](SeriesResource.md)|  | [optional] 

### Return type

[**SeriesResource**](SeriesResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3SeriesPost**
> SeriesResource apiV3SeriesPost(seriesResource)



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

final api = Sonarr().getSeriesApi();
final SeriesResource seriesResource = ; // SeriesResource | 

try {
    final response = api.apiV3SeriesPost(seriesResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SeriesApi->apiV3SeriesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seriesResource** | [**SeriesResource**](SeriesResource.md)|  | [optional] 

### Return type

[**SeriesResource**](SeriesResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

