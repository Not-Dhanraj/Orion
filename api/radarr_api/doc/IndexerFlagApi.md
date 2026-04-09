# radarr_api.api.IndexerFlagApi

## Load the API package
```dart
import 'package:radarr_api/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3IndexerflagGet**](IndexerFlagApi.md#apiv3indexerflagget) | **GET** /api/v3/indexerflag | 


# **apiV3IndexerflagGet**
> List<IndexerFlagResource> apiV3IndexerflagGet()



### Example
```dart
import 'package:radarr_api/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = RadarrApi().getIndexerFlagApi();

try {
    final response = api.apiV3IndexerflagGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling IndexerFlagApi->apiV3IndexerflagGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;IndexerFlagResource&gt;**](IndexerFlagResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

