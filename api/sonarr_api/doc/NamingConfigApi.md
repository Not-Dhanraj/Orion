# sonarr.api.NamingConfigApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ConfigNamingExamplesGet**](NamingConfigApi.md#apiv3confignamingexamplesget) | **GET** /api/v3/config/naming/examples | 
[**apiV3ConfigNamingGet**](NamingConfigApi.md#apiv3confignamingget) | **GET** /api/v3/config/naming | 
[**apiV3ConfigNamingIdGet**](NamingConfigApi.md#apiv3confignamingidget) | **GET** /api/v3/config/naming/{id} | 
[**apiV3ConfigNamingIdPut**](NamingConfigApi.md#apiv3confignamingidput) | **PUT** /api/v3/config/naming/{id} | 


# **apiV3ConfigNamingExamplesGet**
> apiV3ConfigNamingExamplesGet(renameEpisodes, replaceIllegalCharacters, colonReplacementFormat, customColonReplacementFormat, multiEpisodeStyle, standardEpisodeFormat, dailyEpisodeFormat, animeEpisodeFormat, seriesFolderFormat, seasonFolderFormat, specialsFolderFormat, id, resourceName)



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

final api = Sonarr().getNamingConfigApi();
final bool renameEpisodes = true; // bool | 
final bool replaceIllegalCharacters = true; // bool | 
final int colonReplacementFormat = 56; // int | 
final String customColonReplacementFormat = customColonReplacementFormat_example; // String | 
final int multiEpisodeStyle = 56; // int | 
final String standardEpisodeFormat = standardEpisodeFormat_example; // String | 
final String dailyEpisodeFormat = dailyEpisodeFormat_example; // String | 
final String animeEpisodeFormat = animeEpisodeFormat_example; // String | 
final String seriesFolderFormat = seriesFolderFormat_example; // String | 
final String seasonFolderFormat = seasonFolderFormat_example; // String | 
final String specialsFolderFormat = specialsFolderFormat_example; // String | 
final int id = 56; // int | 
final String resourceName = resourceName_example; // String | 

try {
    api.apiV3ConfigNamingExamplesGet(renameEpisodes, replaceIllegalCharacters, colonReplacementFormat, customColonReplacementFormat, multiEpisodeStyle, standardEpisodeFormat, dailyEpisodeFormat, animeEpisodeFormat, seriesFolderFormat, seasonFolderFormat, specialsFolderFormat, id, resourceName);
} catch on DioException (e) {
    print('Exception when calling NamingConfigApi->apiV3ConfigNamingExamplesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **renameEpisodes** | **bool**|  | [optional] 
 **replaceIllegalCharacters** | **bool**|  | [optional] 
 **colonReplacementFormat** | **int**|  | [optional] 
 **customColonReplacementFormat** | **String**|  | [optional] 
 **multiEpisodeStyle** | **int**|  | [optional] 
 **standardEpisodeFormat** | **String**|  | [optional] 
 **dailyEpisodeFormat** | **String**|  | [optional] 
 **animeEpisodeFormat** | **String**|  | [optional] 
 **seriesFolderFormat** | **String**|  | [optional] 
 **seasonFolderFormat** | **String**|  | [optional] 
 **specialsFolderFormat** | **String**|  | [optional] 
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
import 'package:sonarr/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = Sonarr().getNamingConfigApi();

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
import 'package:sonarr/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = Sonarr().getNamingConfigApi();
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ConfigNamingIdPut**
> NamingConfigResource apiV3ConfigNamingIdPut(id, namingConfigResource)



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

final api = Sonarr().getNamingConfigApi();
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

