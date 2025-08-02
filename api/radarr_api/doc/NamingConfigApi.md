# radarr.api.NamingConfigApi

## Load the API package
```dart
import 'package:radarr/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ConfigNamingExamplesGet**](NamingConfigApi.md#apiv3confignamingexamplesget) | **GET** /api/v3/config/naming/examples | 
[**apiV3ConfigNamingGet**](NamingConfigApi.md#apiv3confignamingget) | **GET** /api/v3/config/naming | 
[**apiV3ConfigNamingIdGet**](NamingConfigApi.md#apiv3confignamingidget) | **GET** /api/v3/config/naming/{id} | 
[**apiV3ConfigNamingIdPut**](NamingConfigApi.md#apiv3confignamingidput) | **PUT** /api/v3/config/naming/{id} | 


# **apiV3ConfigNamingExamplesGet**
> apiV3ConfigNamingExamplesGet(renameMovies, replaceIllegalCharacters, colonReplacementFormat, standardMovieFormat, movieFolderFormat, id, resourceName)



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

final api = Radarr().getNamingConfigApi();
final bool renameMovies = true; // bool | 
final bool replaceIllegalCharacters = true; // bool | 
final ColonReplacementFormat colonReplacementFormat = ; // ColonReplacementFormat | 
final String standardMovieFormat = standardMovieFormat_example; // String | 
final String movieFolderFormat = movieFolderFormat_example; // String | 
final int id = 56; // int | 
final String resourceName = resourceName_example; // String | 

try {
    api.apiV3ConfigNamingExamplesGet(renameMovies, replaceIllegalCharacters, colonReplacementFormat, standardMovieFormat, movieFolderFormat, id, resourceName);
} catch on DioException (e) {
    print('Exception when calling NamingConfigApi->apiV3ConfigNamingExamplesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **renameMovies** | **bool**|  | [optional] 
 **replaceIllegalCharacters** | **bool**|  | [optional] 
 **colonReplacementFormat** | [**ColonReplacementFormat**](.md)|  | [optional] 
 **standardMovieFormat** | **String**|  | [optional] 
 **movieFolderFormat** | **String**|  | [optional] 
 **id** | **int**|  | [optional] 
 **resourceName** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigNamingGet**
> NamingConfigResource apiV3ConfigNamingGet()



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

final api = Radarr().getNamingConfigApi();

try {
    final response = api.apiV3ConfigNamingGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling NamingConfigApi->apiV3ConfigNamingGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NamingConfigResource**](NamingConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigNamingIdGet**
> NamingConfigResource apiV3ConfigNamingIdGet(id)



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

final api = Radarr().getNamingConfigApi();
final int id = 56; // int | 

try {
    final response = api.apiV3ConfigNamingIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NamingConfigApi->apiV3ConfigNamingIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**NamingConfigResource**](NamingConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigNamingIdPut**
> NamingConfigResource apiV3ConfigNamingIdPut(id, namingConfigResource)



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

final api = Radarr().getNamingConfigApi();
final String id = id_example; // String | 
final NamingConfigResource namingConfigResource = ; // NamingConfigResource | 

try {
    final response = api.apiV3ConfigNamingIdPut(id, namingConfigResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NamingConfigApi->apiV3ConfigNamingIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **namingConfigResource** | [**NamingConfigResource**](NamingConfigResource.md)|  | [optional] 

### Return type

[**NamingConfigResource**](NamingConfigResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

