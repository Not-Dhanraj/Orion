# sonarr.api.QualityDefinitionApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3QualitydefinitionGet**](QualityDefinitionApi.md#apiv3qualitydefinitionget) | **GET** /api/v3/qualitydefinition | 
[**apiV3QualitydefinitionIdGet**](QualityDefinitionApi.md#apiv3qualitydefinitionidget) | **GET** /api/v3/qualitydefinition/{id} | 
[**apiV3QualitydefinitionIdPut**](QualityDefinitionApi.md#apiv3qualitydefinitionidput) | **PUT** /api/v3/qualitydefinition/{id} | 
[**apiV3QualitydefinitionLimitsGet**](QualityDefinitionApi.md#apiv3qualitydefinitionlimitsget) | **GET** /api/v3/qualitydefinition/limits | 
[**apiV3QualitydefinitionUpdatePut**](QualityDefinitionApi.md#apiv3qualitydefinitionupdateput) | **PUT** /api/v3/qualitydefinition/update | 


# **apiV3QualitydefinitionGet**
> BuiltList<QualityDefinitionResource> apiV3QualitydefinitionGet()



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

final api = Sonarr().getQualityDefinitionApi();

try {
    final response = api.apiV3QualitydefinitionGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling QualityDefinitionApi->apiV3QualitydefinitionGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;QualityDefinitionResource&gt;**](QualityDefinitionResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QualitydefinitionIdGet**
> QualityDefinitionResource apiV3QualitydefinitionIdGet(id)



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

final api = Sonarr().getQualityDefinitionApi();
final int id = 56; // int | 

try {
    final response = api.apiV3QualitydefinitionIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QualityDefinitionApi->apiV3QualitydefinitionIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**QualityDefinitionResource**](QualityDefinitionResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QualitydefinitionIdPut**
> QualityDefinitionResource apiV3QualitydefinitionIdPut(id, qualityDefinitionResource)



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

final api = Sonarr().getQualityDefinitionApi();
final String id = id_example; // String | 
final QualityDefinitionResource qualityDefinitionResource = ; // QualityDefinitionResource | 

try {
    final response = api.apiV3QualitydefinitionIdPut(id, qualityDefinitionResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QualityDefinitionApi->apiV3QualitydefinitionIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **qualityDefinitionResource** | [**QualityDefinitionResource**](QualityDefinitionResource.md)|  | [optional] 

### Return type

[**QualityDefinitionResource**](QualityDefinitionResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QualitydefinitionLimitsGet**
> QualityDefinitionLimitsResource apiV3QualitydefinitionLimitsGet()



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

final api = Sonarr().getQualityDefinitionApi();

try {
    final response = api.apiV3QualitydefinitionLimitsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling QualityDefinitionApi->apiV3QualitydefinitionLimitsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QualityDefinitionLimitsResource**](QualityDefinitionLimitsResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3QualitydefinitionUpdatePut**
> apiV3QualitydefinitionUpdatePut(qualityDefinitionResource)



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

final api = Sonarr().getQualityDefinitionApi();
final BuiltList<QualityDefinitionResource> qualityDefinitionResource = ; // BuiltList<QualityDefinitionResource> | 

try {
    api.apiV3QualitydefinitionUpdatePut(qualityDefinitionResource);
} catch on DioException (e) {
    print('Exception when calling QualityDefinitionApi->apiV3QualitydefinitionUpdatePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qualityDefinitionResource** | [**BuiltList&lt;QualityDefinitionResource&gt;**](QualityDefinitionResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

