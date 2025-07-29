# sonarr.api.ReleaseApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ReleaseGet**](ReleaseApi.md#apiv3releaseget) | **GET** /api/v3/release | 
[**apiV3ReleasePost**](ReleaseApi.md#apiv3releasepost) | **POST** /api/v3/release | 


# **apiV3ReleaseGet**
> BuiltList<ReleaseResource> apiV3ReleaseGet(seriesId, episodeId, seasonNumber)



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

final api = Sonarr().getReleaseApi();
final int seriesId = 56; // int | 
final int episodeId = 56; // int | 
final int seasonNumber = 56; // int | 

try {
    final response = api.apiV3ReleaseGet(seriesId, episodeId, seasonNumber);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReleaseApi->apiV3ReleaseGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seriesId** | **int**|  | [optional] 
 **episodeId** | **int**|  | [optional] 
 **seasonNumber** | **int**|  | [optional] 

### Return type

[**BuiltList&lt;ReleaseResource&gt;**](ReleaseResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ReleasePost**
> apiV3ReleasePost(releaseResource)



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

final api = Sonarr().getReleaseApi();
final ReleaseResource releaseResource = ; // ReleaseResource | 

try {
    api.apiV3ReleasePost(releaseResource);
} catch on DioException (e) {
    print('Exception when calling ReleaseApi->apiV3ReleasePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **releaseResource** | [**ReleaseResource**](ReleaseResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

