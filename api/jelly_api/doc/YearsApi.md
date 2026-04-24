# jelly_api.api.YearsApi

## Load the API package
```dart
import 'package:jelly_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getYear**](YearsApi.md#getyear) | **GET** /Years/{year} | Gets a year.
[**getYears**](YearsApi.md#getyears) | **GET** /Years | Get years.


# **getYear**
> BaseItemDto getYear(year, userId)

Gets a year.

### Example
```dart
import 'package:jelly_api/api.dart';
// TODO Configure API key authorization: CustomAuthentication
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKeyPrefix = 'Bearer';

final api = JellyApi().getYearsApi();
final int year = 56; // int | The year.
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Optional. Filter by user id, and attach user data.

try {
    final response = api.getYear(year, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling YearsApi->getYear: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**| The year. | 
 **userId** | **String**| Optional. Filter by user id, and attach user data. | [optional] 

### Return type

[**BaseItemDto**](BaseItemDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getYears**
> BaseItemDtoQueryResult getYears(startIndex, limit, sortOrder, parentId, fields, excludeItemTypes, includeItemTypes, mediaTypes, sortBy, enableUserData, imageTypeLimit, enableImageTypes, userId, recursive, enableImages)

Get years.

### Example
```dart
import 'package:jelly_api/api.dart';
// TODO Configure API key authorization: CustomAuthentication
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKeyPrefix = 'Bearer';

final api = JellyApi().getYearsApi();
final int startIndex = 56; // int | Skips over a given number of items within the results. Use for paging.
final int limit = 56; // int | Optional. The maximum number of records to return.
final List<SortOrder> sortOrder = ; // List<SortOrder> | Sort Order - Ascending,Descending.
final String parentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Specify this to localize the search to a specific item or folder. Omit to use the root.
final List<ItemFields> fields = ; // List<ItemFields> | Optional. Specify additional fields of information to return in the output.
final List<BaseItemKind> excludeItemTypes = ; // List<BaseItemKind> | Optional. If specified, results will be excluded based on item type. This allows multiple, comma delimited.
final List<BaseItemKind> includeItemTypes = ; // List<BaseItemKind> | Optional. If specified, results will be included based on item type. This allows multiple, comma delimited.
final List<MediaType> mediaTypes = ; // List<MediaType> | Optional. Filter by MediaType. Allows multiple, comma delimited.
final List<ItemSortBy> sortBy = ; // List<ItemSortBy> | Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime.
final bool enableUserData = true; // bool | Optional. Include user data.
final int imageTypeLimit = 56; // int | Optional. The max number of images to return, per image type.
final List<ImageType> enableImageTypes = ; // List<ImageType> | Optional. The image types to include in the output.
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | User Id.
final bool recursive = true; // bool | Search recursively.
final bool enableImages = true; // bool | Optional. Include image information in output.

try {
    final response = api.getYears(startIndex, limit, sortOrder, parentId, fields, excludeItemTypes, includeItemTypes, mediaTypes, sortBy, enableUserData, imageTypeLimit, enableImageTypes, userId, recursive, enableImages);
    print(response);
} on DioException catch (e) {
    print('Exception when calling YearsApi->getYears: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startIndex** | **int**| Skips over a given number of items within the results. Use for paging. | [optional] 
 **limit** | **int**| Optional. The maximum number of records to return. | [optional] 
 **sortOrder** | [**List&lt;SortOrder&gt;**](SortOrder.md)| Sort Order - Ascending,Descending. | [optional] 
 **parentId** | **String**| Specify this to localize the search to a specific item or folder. Omit to use the root. | [optional] 
 **fields** | [**List&lt;ItemFields&gt;**](ItemFields.md)| Optional. Specify additional fields of information to return in the output. | [optional] 
 **excludeItemTypes** | [**List&lt;BaseItemKind&gt;**](BaseItemKind.md)| Optional. If specified, results will be excluded based on item type. This allows multiple, comma delimited. | [optional] 
 **includeItemTypes** | [**List&lt;BaseItemKind&gt;**](BaseItemKind.md)| Optional. If specified, results will be included based on item type. This allows multiple, comma delimited. | [optional] 
 **mediaTypes** | [**List&lt;MediaType&gt;**](MediaType.md)| Optional. Filter by MediaType. Allows multiple, comma delimited. | [optional] 
 **sortBy** | [**List&lt;ItemSortBy&gt;**](ItemSortBy.md)| Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime. | [optional] 
 **enableUserData** | **bool**| Optional. Include user data. | [optional] 
 **imageTypeLimit** | **int**| Optional. The max number of images to return, per image type. | [optional] 
 **enableImageTypes** | [**List&lt;ImageType&gt;**](ImageType.md)| Optional. The image types to include in the output. | [optional] 
 **userId** | **String**| User Id. | [optional] 
 **recursive** | **bool**| Search recursively. | [optional] [default to true]
 **enableImages** | **bool**| Optional. Include image information in output. | [optional] [default to true]

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

