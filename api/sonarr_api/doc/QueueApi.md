# sonarr.api.QueueApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3QueueBulkDelete**](QueueApi.md#apiv3queuebulkdelete) | **DELETE** /api/v3/queue/bulk | 
[**apiV3QueueGet**](QueueApi.md#apiv3queueget) | **GET** /api/v3/queue | 
[**apiV3QueueIdDelete**](QueueApi.md#apiv3queueiddelete) | **DELETE** /api/v3/queue/{id} | 


# **apiV3QueueBulkDelete**
> apiV3QueueBulkDelete(removeFromClient, blocklist, skipRedownload, changeCategory, queueBulkResource)



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

final api = Sonarr().getQueueApi();
final bool removeFromClient = true; // bool | 
final bool blocklist = true; // bool | 
final bool skipRedownload = true; // bool | 
final bool changeCategory = true; // bool | 
final QueueBulkResource queueBulkResource = ; // QueueBulkResource | 

try {
    api.apiV3QueueBulkDelete(removeFromClient, blocklist, skipRedownload, changeCategory, queueBulkResource);
} catch on DioException (e) {
    print('Exception when calling QueueApi->apiV3QueueBulkDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **removeFromClient** | **bool**|  | [optional] [default to true]
 **blocklist** | **bool**|  | [optional] [default to false]
 **skipRedownload** | **bool**|  | [optional] [default to false]
 **changeCategory** | **bool**|  | [optional] [default to false]
 **queueBulkResource** | [**QueueBulkResource**](QueueBulkResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueueGet**
> QueueResourcePagingResource apiV3QueueGet(page, pageSize, sortKey, sortDirection, includeUnknownSeriesItems, includeSeries, includeEpisode, seriesIds, protocol, languages, quality, status)



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

final api = Sonarr().getQueueApi();
final int page = 56; // int | 
final int pageSize = 56; // int | 
final String sortKey = sortKey_example; // String | 
final SortDirection sortDirection = ; // SortDirection | 
final bool includeUnknownSeriesItems = true; // bool | 
final bool includeSeries = true; // bool | 
final bool includeEpisode = true; // bool | 
final BuiltList<int> seriesIds = ; // BuiltList<int> | 
final DownloadProtocol protocol = ; // DownloadProtocol | 
final BuiltList<int> languages = ; // BuiltList<int> | 
final BuiltList<int> quality = ; // BuiltList<int> | 
final BuiltList<QueueStatus> status = ; // BuiltList<QueueStatus> | 

try {
    final response = api.apiV3QueueGet(page, pageSize, sortKey, sortDirection, includeUnknownSeriesItems, includeSeries, includeEpisode, seriesIds, protocol, languages, quality, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QueueApi->apiV3QueueGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 10]
 **sortKey** | **String**|  | [optional] 
 **sortDirection** | [**SortDirection**](.md)|  | [optional] 
 **includeUnknownSeriesItems** | **bool**|  | [optional] [default to false]
 **includeSeries** | **bool**|  | [optional] [default to false]
 **includeEpisode** | **bool**|  | [optional] [default to false]
 **seriesIds** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
 **protocol** | [**DownloadProtocol**](.md)|  | [optional] 
 **languages** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
 **quality** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
 **status** | [**BuiltList&lt;QueueStatus&gt;**](QueueStatus.md)|  | [optional] 

### Return type

[**QueueResourcePagingResource**](QueueResourcePagingResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QueueIdDelete**
> apiV3QueueIdDelete(id, removeFromClient, blocklist, skipRedownload, changeCategory)



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

final api = Sonarr().getQueueApi();
final int id = 56; // int | 
final bool removeFromClient = true; // bool | 
final bool blocklist = true; // bool | 
final bool skipRedownload = true; // bool | 
final bool changeCategory = true; // bool | 

try {
    api.apiV3QueueIdDelete(id, removeFromClient, blocklist, skipRedownload, changeCategory);
} catch on DioException (e) {
    print('Exception when calling QueueApi->apiV3QueueIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **removeFromClient** | **bool**|  | [optional] [default to true]
 **blocklist** | **bool**|  | [optional] [default to false]
 **skipRedownload** | **bool**|  | [optional] [default to false]
 **changeCategory** | **bool**|  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

