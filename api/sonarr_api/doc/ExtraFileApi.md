# sonarr_api.api.ExtraFileApi

## Load the API package
```dart
import 'package:sonarr_api/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ExtrafileGet**](ExtraFileApi.md#apiv3extrafileget) | **GET** /api/v3/extrafile | 


# **apiV3ExtrafileGet**
> List<ExtraFileResource> apiV3ExtrafileGet(movieId)



### Example
```dart
import 'package:sonarr_api/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = SonarrApi().getExtraFileApi();
final int movieId = 56; // int | 

try {
    final response = api.apiV3ExtrafileGet(movieId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ExtraFileApi->apiV3ExtrafileGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **movieId** | **int**|  | [optional] 

### Return type

[**List&lt;ExtraFileResource&gt;**](ExtraFileResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

