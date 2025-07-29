# sonarr.api.QueueDetailsApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3QueueDetailsGet**](QueueDetailsApi.md#apiv3queuedetailsget) | **GET** /api/v3/queue/details | 


# **apiV3QueueDetailsGet**
> BuiltList<QueueResource> apiV3QueueDetailsGet(seriesId, episodeIds, includeSeries, includeEpisode)



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

final api = Sonarr().getQueueDetailsApi();
final int seriesId = 56; // int | 
final BuiltList<int> episodeIds = ; // BuiltList<int> | 
final bool includeSeries = true; // bool | 
final bool includeEpisode = true; // bool | 

try {
    final response = api.apiV3QueueDetailsGet(seriesId, episodeIds, includeSeries, includeEpisode);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QueueDetailsApi->apiV3QueueDetailsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seriesId** | **int**|  | [optional] 
 **episodeIds** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
 **includeSeries** | **bool**|  | [optional] [default to false]
 **includeEpisode** | **bool**|  | [optional] [default to false]

### Return type

[**BuiltList&lt;QueueResource&gt;**](QueueResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

