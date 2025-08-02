# radarr.api.AlternativeTitleApi

## Load the API package
```dart
import 'package:radarr/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3AlttitleGet**](AlternativeTitleApi.md#apiv3alttitleget) | **GET** /api/v3/alttitle | 
[**apiV3AlttitleIdGet**](AlternativeTitleApi.md#apiv3alttitleidget) | **GET** /api/v3/alttitle/{id} | 


# **apiV3AlttitleGet**
> BuiltList<AlternativeTitleResource> apiV3AlttitleGet(movieId, movieMetadataId)



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

final api = Radarr().getAlternativeTitleApi();
final int movieId = 56; // int | 
final int movieMetadataId = 56; // int | 

try {
    final response = api.apiV3AlttitleGet(movieId, movieMetadataId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AlternativeTitleApi->apiV3AlttitleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **movieId** | **int**|  | [optional] 
 **movieMetadataId** | **int**|  | [optional] 

### Return type

[**BuiltList&lt;AlternativeTitleResource&gt;**](AlternativeTitleResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3AlttitleIdGet**
> AlternativeTitleResource apiV3AlttitleIdGet(id)



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

final api = Radarr().getAlternativeTitleApi();
final int id = 56; // int | 

try {
    final response = api.apiV3AlttitleIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AlternativeTitleApi->apiV3AlttitleIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**AlternativeTitleResource**](AlternativeTitleResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

