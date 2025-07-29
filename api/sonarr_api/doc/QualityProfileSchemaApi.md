# sonarr.api.QualityProfileSchemaApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3QualityprofileSchemaGet**](QualityProfileSchemaApi.md#apiv3qualityprofileschemaget) | **GET** /api/v3/qualityprofile/schema | 


# **apiV3QualityprofileSchemaGet**
> QualityProfileResource apiV3QualityprofileSchemaGet()



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

final api = Sonarr().getQualityProfileSchemaApi();

try {
    final response = api.apiV3QualityprofileSchemaGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling QualityProfileSchemaApi->apiV3QualityprofileSchemaGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QualityProfileResource**](QualityProfileResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

