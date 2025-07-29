# sonarr.api.CutoffApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3WantedCutoffGet**](CutoffApi.md#apiv3wantedcutoffget) | **GET** /api/v3/wanted/cutoff | 
[**apiV3WantedCutoffIdGet**](CutoffApi.md#apiv3wantedcutoffidget) | **GET** /api/v3/wanted/cutoff/{id} | 


# **apiV3WantedCutoffGet**
> EpisodeResourcePagingResource apiV3WantedCutoffGet(page, pageSize, sortKey, sortDirection, includeSeries, includeEpisodeFile, includeImages, monitored)



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

final api = Sonarr().getCutoffApi();
final int page = 56; // int | 
final int pageSize = 56; // int | 
final String sortKey = sortKey_example; // String | 
final SortDirection sortDirection = ; // SortDirection | 
final bool includeSeries = true; // bool | 
final bool includeEpisodeFile = true; // bool | 
final bool includeImages = true; // bool | 
final bool monitored = true; // bool | 

try {
    final response = api.apiV3WantedCutoffGet(page, pageSize, sortKey, sortDirection, includeSeries, includeEpisodeFile, includeImages, monitored);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CutoffApi->apiV3WantedCutoffGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 10]
 **sortKey** | **String**|  | [optional] 
 **sortDirection** | [**SortDirection**](.md)|  | [optional] 
 **includeSeries** | **bool**|  | [optional] [default to false]
 **includeEpisodeFile** | **bool**|  | [optional] [default to false]
 **includeImages** | **bool**|  | [optional] [default to false]
 **monitored** | **bool**|  | [optional] [default to true]

### Return type

[**EpisodeResourcePagingResource**](EpisodeResourcePagingResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3WantedCutoffIdGet**
> EpisodeResource apiV3WantedCutoffIdGet(id)



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

final api = Sonarr().getCutoffApi();
final int id = 56; // int | 

try {
    final response = api.apiV3WantedCutoffIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CutoffApi->apiV3WantedCutoffIdGet: $e\n');
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

