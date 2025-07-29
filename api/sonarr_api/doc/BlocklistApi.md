# sonarr.api.BlocklistApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3BlocklistBulkDelete**](BlocklistApi.md#apiv3blocklistbulkdelete) | **DELETE** /api/v3/blocklist/bulk | 
[**apiV3BlocklistGet**](BlocklistApi.md#apiv3blocklistget) | **GET** /api/v3/blocklist | 
[**apiV3BlocklistIdDelete**](BlocklistApi.md#apiv3blocklistiddelete) | **DELETE** /api/v3/blocklist/{id} | 


# **apiV3BlocklistBulkDelete**
> apiV3BlocklistBulkDelete(blocklistBulkResource)



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

final api = Sonarr().getBlocklistApi();
final BlocklistBulkResource blocklistBulkResource = ; // BlocklistBulkResource | 

try {
    api.apiV3BlocklistBulkDelete(blocklistBulkResource);
} catch on DioException (e) {
    print('Exception when calling BlocklistApi->apiV3BlocklistBulkDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blocklistBulkResource** | [**BlocklistBulkResource**](BlocklistBulkResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3BlocklistGet**
> BlocklistResourcePagingResource apiV3BlocklistGet(page, pageSize, sortKey, sortDirection, seriesIds, protocols)



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

final api = Sonarr().getBlocklistApi();
final int page = 56; // int | 
final int pageSize = 56; // int | 
final String sortKey = sortKey_example; // String | 
final SortDirection sortDirection = ; // SortDirection | 
final BuiltList<int> seriesIds = ; // BuiltList<int> | 
final BuiltList<DownloadProtocol> protocols = ; // BuiltList<DownloadProtocol> | 

try {
    final response = api.apiV3BlocklistGet(page, pageSize, sortKey, sortDirection, seriesIds, protocols);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BlocklistApi->apiV3BlocklistGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 10]
 **sortKey** | **String**|  | [optional] 
 **sortDirection** | [**SortDirection**](.md)|  | [optional] 
 **seriesIds** | [**BuiltList&lt;int&gt;**](int.md)|  | [optional] 
 **protocols** | [**BuiltList&lt;DownloadProtocol&gt;**](DownloadProtocol.md)|  | [optional] 

### Return type

[**BlocklistResourcePagingResource**](BlocklistResourcePagingResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3BlocklistIdDelete**
> apiV3BlocklistIdDelete(id)



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

final api = Sonarr().getBlocklistApi();
final int id = 56; // int | 

try {
    api.apiV3BlocklistIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling BlocklistApi->apiV3BlocklistIdDelete: $e\n');
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

