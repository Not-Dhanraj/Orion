# radarr.api.ManualImportApi

## Load the API package
```dart
import 'package:radarr/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ManualimportGet**](ManualImportApi.md#apiv3manualimportget) | **GET** /api/v3/manualimport | 
[**apiV3ManualimportPost**](ManualImportApi.md#apiv3manualimportpost) | **POST** /api/v3/manualimport | 


# **apiV3ManualimportGet**
> BuiltList<ManualImportResource> apiV3ManualimportGet(folder, downloadId, movieId, filterExistingFiles)



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

final api = Radarr().getManualImportApi();
final String folder = folder_example; // String | 
final String downloadId = downloadId_example; // String | 
final int movieId = 56; // int | 
final bool filterExistingFiles = true; // bool | 

try {
    final response = api.apiV3ManualimportGet(folder, downloadId, movieId, filterExistingFiles);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ManualImportApi->apiV3ManualimportGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**|  | [optional] 
 **downloadId** | **String**|  | [optional] 
 **movieId** | **int**|  | [optional] 
 **filterExistingFiles** | **bool**|  | [optional] [default to true]

### Return type

[**BuiltList&lt;ManualImportResource&gt;**](ManualImportResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ManualimportPost**
> apiV3ManualimportPost(manualImportReprocessResource)



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

final api = Radarr().getManualImportApi();
final BuiltList<ManualImportReprocessResource> manualImportReprocessResource = ; // BuiltList<ManualImportReprocessResource> | 

try {
    api.apiV3ManualimportPost(manualImportReprocessResource);
} catch on DioException (e) {
    print('Exception when calling ManualImportApi->apiV3ManualimportPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manualImportReprocessResource** | [**BuiltList&lt;ManualImportReprocessResource&gt;**](ManualImportReprocessResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

