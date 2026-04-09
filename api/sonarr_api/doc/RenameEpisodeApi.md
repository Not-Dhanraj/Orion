# sonarr_api.api.RenameEpisodeApi

## Load the API package
```dart
import 'package:sonarr_api/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3RenameGet**](RenameEpisodeApi.md#apiv3renameget) | **GET** /api/v3/rename | 


# **apiV3RenameGet**
> List<RenameEpisodeResource> apiV3RenameGet(seriesId, seasonNumber)



### Example
```dart
import 'package:sonarr_api/api.dart';
// TODO Configure API key authorization: apikey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apikey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: X-Api-Key
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('X-Api-Key').apiKeyPrefix = 'Bearer';

final api = SonarrApi().getRenameEpisodeApi();
final int seriesId = 56; // int | 
final int seasonNumber = 56; // int | 

try {
    final response = api.apiV3RenameGet(seriesId, seasonNumber);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RenameEpisodeApi->apiV3RenameGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seriesId** | **int**|  | [optional] 
 **seasonNumber** | **int**|  | [optional] 

### Return type

[**List&lt;RenameEpisodeResource&gt;**](RenameEpisodeResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

