# sonarr_api.api.SeriesLookupApi

## Load the API package
```dart
import 'package:sonarr_api/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3SeriesLookupGet**](SeriesLookupApi.md#apiv3serieslookupget) | **GET** /api/v3/series/lookup | 


# **apiV3SeriesLookupGet**
> List<SeriesResource> apiV3SeriesLookupGet(term)



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

final api = SonarrApi().getSeriesLookupApi();
final String term = term_example; // String | 

try {
    final response = api.apiV3SeriesLookupGet(term);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SeriesLookupApi->apiV3SeriesLookupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **term** | **String**|  | [optional] 

### Return type

[**List&lt;SeriesResource&gt;**](SeriesResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

