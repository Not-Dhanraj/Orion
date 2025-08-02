# radarr.api.ImportListMoviesApi

## Load the API package
```dart
import 'package:radarr/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ImportlistMovieGet**](ImportListMoviesApi.md#apiv3importlistmovieget) | **GET** /api/v3/importlist/movie | 
[**apiV3ImportlistMoviePost**](ImportListMoviesApi.md#apiv3importlistmoviepost) | **POST** /api/v3/importlist/movie | 


# **apiV3ImportlistMovieGet**
> apiV3ImportlistMovieGet(includeRecommendations, includeTrending, includePopular)



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

final api = Radarr().getImportListMoviesApi();
final bool includeRecommendations = true; // bool | 
final bool includeTrending = true; // bool | 
final bool includePopular = true; // bool | 

try {
    api.apiV3ImportlistMovieGet(includeRecommendations, includeTrending, includePopular);
} catch on DioException (e) {
    print('Exception when calling ImportListMoviesApi->apiV3ImportlistMovieGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeRecommendations** | **bool**|  | [optional] [default to false]
 **includeTrending** | **bool**|  | [optional] [default to false]
 **includePopular** | **bool**|  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ImportlistMoviePost**
> apiV3ImportlistMoviePost(movieResource)



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

final api = Radarr().getImportListMoviesApi();
final BuiltList<MovieResource> movieResource = ; // BuiltList<MovieResource> | 

try {
    api.apiV3ImportlistMoviePost(movieResource);
} catch on DioException (e) {
    print('Exception when calling ImportListMoviesApi->apiV3ImportlistMoviePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **movieResource** | [**BuiltList&lt;MovieResource&gt;**](MovieResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

