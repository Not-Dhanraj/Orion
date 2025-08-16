# radarr.api.MovieImportApi

## Load the API package
```dart
import 'package:radarr/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3MovieImportPost**](MovieImportApi.md#apiv3movieimportpost) | **POST** /api/v3/movie/import | 


# **apiV3MovieImportPost**
> BuiltList<MovieResource> apiV3MovieImportPost(movieResource)



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

final api = Radarr().getMovieImportApi();
final BuiltList<MovieResource> movieResource = ; // BuiltList<MovieResource> | 

try {
    final response = api.apiV3MovieImportPost(movieResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MovieImportApi->apiV3MovieImportPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **movieResource** | [**BuiltList&lt;MovieResource&gt;**](MovieResource.md)|  | [optional] 

### Return type

[**BuiltList&lt;MovieResource&gt;**](MovieResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

