# sonarr.api.IndexerApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3IndexerActionNamePost**](IndexerApi.md#apiv3indexeractionnamepost) | **POST** /api/v3/indexer/action/{name} | 
[**apiV3IndexerBulkDelete**](IndexerApi.md#apiv3indexerbulkdelete) | **DELETE** /api/v3/indexer/bulk | 
[**apiV3IndexerBulkPut**](IndexerApi.md#apiv3indexerbulkput) | **PUT** /api/v3/indexer/bulk | 
[**apiV3IndexerGet**](IndexerApi.md#apiv3indexerget) | **GET** /api/v3/indexer | 
[**apiV3IndexerIdDelete**](IndexerApi.md#apiv3indexeriddelete) | **DELETE** /api/v3/indexer/{id} | 
[**apiV3IndexerIdGet**](IndexerApi.md#apiv3indexeridget) | **GET** /api/v3/indexer/{id} | 
[**apiV3IndexerIdPut**](IndexerApi.md#apiv3indexeridput) | **PUT** /api/v3/indexer/{id} | 
[**apiV3IndexerPost**](IndexerApi.md#apiv3indexerpost) | **POST** /api/v3/indexer | 
[**apiV3IndexerSchemaGet**](IndexerApi.md#apiv3indexerschemaget) | **GET** /api/v3/indexer/schema | 
[**apiV3IndexerTestPost**](IndexerApi.md#apiv3indexertestpost) | **POST** /api/v3/indexer/test | 
[**apiV3IndexerTestallPost**](IndexerApi.md#apiv3indexertestallpost) | **POST** /api/v3/indexer/testall | 


# **apiV3IndexerActionNamePost**
> apiV3IndexerActionNamePost(name, indexerResource)



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

final api = Sonarr().getIndexerApi();
final String name = name_example; // String | 
final IndexerResource indexerResource = ; // IndexerResource | 

try {
    api.apiV3IndexerActionNamePost(name, indexerResource);
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerActionNamePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **indexerResource** | [**IndexerResource**](IndexerResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3IndexerBulkDelete**
> apiV3IndexerBulkDelete(indexerBulkResource)



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

final api = Sonarr().getIndexerApi();
final IndexerBulkResource indexerBulkResource = ; // IndexerBulkResource | 

try {
    api.apiV3IndexerBulkDelete(indexerBulkResource);
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerBulkDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexerBulkResource** | [**IndexerBulkResource**](IndexerBulkResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3IndexerBulkPut**
> IndexerResource apiV3IndexerBulkPut(indexerBulkResource)



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

final api = Sonarr().getIndexerApi();
final IndexerBulkResource indexerBulkResource = ; // IndexerBulkResource | 

try {
    final response = api.apiV3IndexerBulkPut(indexerBulkResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerBulkPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexerBulkResource** | [**IndexerBulkResource**](IndexerBulkResource.md)|  | [optional] 

### Return type

[**IndexerResource**](IndexerResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3IndexerGet**
> BuiltList<IndexerResource> apiV3IndexerGet()



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

final api = Sonarr().getIndexerApi();

try {
    final response = api.apiV3IndexerGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;IndexerResource&gt;**](IndexerResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3IndexerIdDelete**
> apiV3IndexerIdDelete(id)



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

final api = Sonarr().getIndexerApi();
final int id = 56; // int | 

try {
    api.apiV3IndexerIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3IndexerIdGet**
> IndexerResource apiV3IndexerIdGet(id)



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

final api = Sonarr().getIndexerApi();
final int id = 56; // int | 

try {
    final response = api.apiV3IndexerIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**IndexerResource**](IndexerResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3IndexerIdPut**
> IndexerResource apiV3IndexerIdPut(id, forceSave, indexerResource)



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

final api = Sonarr().getIndexerApi();
final int id = 56; // int | 
final bool forceSave = true; // bool | 
final IndexerResource indexerResource = ; // IndexerResource | 

try {
    final response = api.apiV3IndexerIdPut(id, forceSave, indexerResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **forceSave** | **bool**|  | [optional] [default to false]
 **indexerResource** | [**IndexerResource**](IndexerResource.md)|  | [optional] 

### Return type

[**IndexerResource**](IndexerResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3IndexerPost**
> IndexerResource apiV3IndexerPost(forceSave, indexerResource)



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

final api = Sonarr().getIndexerApi();
final bool forceSave = true; // bool | 
final IndexerResource indexerResource = ; // IndexerResource | 

try {
    final response = api.apiV3IndexerPost(forceSave, indexerResource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forceSave** | **bool**|  | [optional] [default to false]
 **indexerResource** | [**IndexerResource**](IndexerResource.md)|  | [optional] 

### Return type

[**IndexerResource**](IndexerResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3IndexerSchemaGet**
> BuiltList<IndexerResource> apiV3IndexerSchemaGet()



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

final api = Sonarr().getIndexerApi();

try {
    final response = api.apiV3IndexerSchemaGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerSchemaGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;IndexerResource&gt;**](IndexerResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3IndexerTestPost**
> apiV3IndexerTestPost(forceTest, indexerResource)



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

final api = Sonarr().getIndexerApi();
final bool forceTest = true; // bool | 
final IndexerResource indexerResource = ; // IndexerResource | 

try {
    api.apiV3IndexerTestPost(forceTest, indexerResource);
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerTestPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forceTest** | **bool**|  | [optional] [default to false]
 **indexerResource** | [**IndexerResource**](IndexerResource.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3IndexerTestallPost**
> apiV3IndexerTestallPost()



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

final api = Sonarr().getIndexerApi();

try {
    api.apiV3IndexerTestallPost();
} catch on DioException (e) {
    print('Exception when calling IndexerApi->apiV3IndexerTestallPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

