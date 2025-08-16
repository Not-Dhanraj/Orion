# sonarr.api.ImportListConfigApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ConfigImportlistGet**](ImportListConfigApi.md#apiv3configimportlistget) | **GET** /api/v3/config/importlist | 
[**apiV3ConfigImportlistIdGet**](ImportListConfigApi.md#apiv3configimportlistidget) | **GET** /api/v3/config/importlist/{id} | 
[**apiV3ConfigImportlistIdPut**](ImportListConfigApi.md#apiv3configimportlistidput) | **PUT** /api/v3/config/importlist/{id} | 


# **apiV3ConfigImportlistGet**
> ImportListConfigResource apiV3ConfigImportlistGet()



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

final api = Sonarr().getImportListConfigApi();

try {
    final response = api.apiV3ConfigImportlistGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImportListConfigApi->apiV3ConfigImportlistGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ImportListConfigResource**](ImportListConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigImportlistIdGet**
> ImportListConfigResource apiV3ConfigImportlistIdGet(id)



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

final api = Sonarr().getImportListConfigApi();
final int id = 56; // int | 

try {
    final response = api.apiV3ConfigImportlistIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImportListConfigApi->apiV3ConfigImportlistIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**ImportListConfigResource**](ImportListConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigImportlistIdPut**
> ImportListConfigResource apiV3ConfigImportlistIdPut(id, importListConfigResource)



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

final api = Sonarr().getImportListConfigApi();
final String id = id_example; // String | 
final ImportListConfigResource importListConfigResource = ; // ImportListConfigResource | 

try {
    final response = api.apiV3ConfigImportlistIdPut(id, importListConfigResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImportListConfigApi->apiV3ConfigImportlistIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **importListConfigResource** | [**ImportListConfigResource**](ImportListConfigResource.md)|  | [optional] 

### Return type

[**ImportListConfigResource**](ImportListConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

