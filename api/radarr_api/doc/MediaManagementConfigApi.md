# radarr.api.MediaManagementConfigApi

## Load the API package
```dart
import 'package:radarr/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ConfigMediamanagementGet**](MediaManagementConfigApi.md#apiv3configmediamanagementget) | **GET** /api/v3/config/mediamanagement | 
[**apiV3ConfigMediamanagementIdGet**](MediaManagementConfigApi.md#apiv3configmediamanagementidget) | **GET** /api/v3/config/mediamanagement/{id} | 
[**apiV3ConfigMediamanagementIdPut**](MediaManagementConfigApi.md#apiv3configmediamanagementidput) | **PUT** /api/v3/config/mediamanagement/{id} | 


# **apiV3ConfigMediamanagementGet**
> MediaManagementConfigResource apiV3ConfigMediamanagementGet()



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

final api = Radarr().getMediaManagementConfigApi();

try {
    final response = api.apiV3ConfigMediamanagementGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling MediaManagementConfigApi->apiV3ConfigMediamanagementGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MediaManagementConfigResource**](MediaManagementConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigMediamanagementIdGet**
> MediaManagementConfigResource apiV3ConfigMediamanagementIdGet(id)



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

final api = Radarr().getMediaManagementConfigApi();
final int id = 56; // int | 

try {
    final response = api.apiV3ConfigMediamanagementIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MediaManagementConfigApi->apiV3ConfigMediamanagementIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**MediaManagementConfigResource**](MediaManagementConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigMediamanagementIdPut**
> MediaManagementConfigResource apiV3ConfigMediamanagementIdPut(id, mediaManagementConfigResource)



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

final api = Radarr().getMediaManagementConfigApi();
final String id = id_example; // String | 
final MediaManagementConfigResource mediaManagementConfigResource = ; // MediaManagementConfigResource | 

try {
    final response = api.apiV3ConfigMediamanagementIdPut(id, mediaManagementConfigResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MediaManagementConfigApi->apiV3ConfigMediamanagementIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **mediaManagementConfigResource** | [**MediaManagementConfigResource**](MediaManagementConfigResource.md)|  | [optional] 

### Return type

[**MediaManagementConfigResource**](MediaManagementConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

