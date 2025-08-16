# radarr.api.IndexerConfigApi

## Load the API package
```dart
import 'package:radarr/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ConfigIndexerGet**](IndexerConfigApi.md#apiv3configindexerget) | **GET** /api/v3/config/indexer | 
[**apiV3ConfigIndexerIdGet**](IndexerConfigApi.md#apiv3configindexeridget) | **GET** /api/v3/config/indexer/{id} | 
[**apiV3ConfigIndexerIdPut**](IndexerConfigApi.md#apiv3configindexeridput) | **PUT** /api/v3/config/indexer/{id} | 


# **apiV3ConfigIndexerGet**
> IndexerConfigResource apiV3ConfigIndexerGet()



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

final api = Radarr().getIndexerConfigApi();

try {
    final response = api.apiV3ConfigIndexerGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexerConfigApi->apiV3ConfigIndexerGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IndexerConfigResource**](IndexerConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigIndexerIdGet**
> IndexerConfigResource apiV3ConfigIndexerIdGet(id)



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

final api = Radarr().getIndexerConfigApi();
final int id = 56; // int | 

try {
    final response = api.apiV3ConfigIndexerIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexerConfigApi->apiV3ConfigIndexerIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**IndexerConfigResource**](IndexerConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigIndexerIdPut**
> IndexerConfigResource apiV3ConfigIndexerIdPut(id, indexerConfigResource)



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

final api = Radarr().getIndexerConfigApi();
final String id = id_example; // String | 
final IndexerConfigResource indexerConfigResource = ; // IndexerConfigResource | 

try {
    final response = api.apiV3ConfigIndexerIdPut(id, indexerConfigResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexerConfigApi->apiV3ConfigIndexerIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **indexerConfigResource** | [**IndexerConfigResource**](IndexerConfigResource.md)|  | [optional] 

### Return type

[**IndexerConfigResource**](IndexerConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

