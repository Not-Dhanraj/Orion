# sonarr.api.DownloadClientConfigApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ConfigDownloadclientGet**](DownloadClientConfigApi.md#apiv3configdownloadclientget) | **GET** /api/v3/config/downloadclient | 
[**apiV3ConfigDownloadclientIdGet**](DownloadClientConfigApi.md#apiv3configdownloadclientidget) | **GET** /api/v3/config/downloadclient/{id} | 
[**apiV3ConfigDownloadclientIdPut**](DownloadClientConfigApi.md#apiv3configdownloadclientidput) | **PUT** /api/v3/config/downloadclient/{id} | 


# **apiV3ConfigDownloadclientGet**
> DownloadClientConfigResource apiV3ConfigDownloadclientGet()



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

final api = Sonarr().getDownloadClientConfigApi();

try {
    final response = api.apiV3ConfigDownloadclientGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DownloadClientConfigApi->apiV3ConfigDownloadclientGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DownloadClientConfigResource**](DownloadClientConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigDownloadclientIdGet**
> DownloadClientConfigResource apiV3ConfigDownloadclientIdGet(id)



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

final api = Sonarr().getDownloadClientConfigApi();
final int id = 56; // int | 

try {
    final response = api.apiV3ConfigDownloadclientIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DownloadClientConfigApi->apiV3ConfigDownloadclientIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**DownloadClientConfigResource**](DownloadClientConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigDownloadclientIdPut**
> DownloadClientConfigResource apiV3ConfigDownloadclientIdPut(id, downloadClientConfigResource)



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

final api = Sonarr().getDownloadClientConfigApi();
final String id = id_example; // String | 
final DownloadClientConfigResource downloadClientConfigResource = ; // DownloadClientConfigResource | 

try {
    final response = api.apiV3ConfigDownloadclientIdPut(id, downloadClientConfigResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DownloadClientConfigApi->apiV3ConfigDownloadclientIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **downloadClientConfigResource** | [**DownloadClientConfigResource**](DownloadClientConfigResource.md)|  | [optional] 

### Return type

[**DownloadClientConfigResource**](DownloadClientConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

