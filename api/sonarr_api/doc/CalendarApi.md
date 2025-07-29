# sonarr.api.CalendarApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3CalendarGet**](CalendarApi.md#apiv3calendarget) | **GET** /api/v3/calendar | 
[**apiV3CalendarIdGet**](CalendarApi.md#apiv3calendaridget) | **GET** /api/v3/calendar/{id} | 


# **apiV3CalendarGet**
> BuiltList<EpisodeResource> apiV3CalendarGet(start, end, unmonitored, includeSeries, includeEpisodeFile, includeEpisodeImages, tags)



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

final api = Sonarr().getCalendarApi();
final DateTime start = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime end = 2013-10-20T19:20:30+01:00; // DateTime | 
final bool unmonitored = true; // bool | 
final bool includeSeries = true; // bool | 
final bool includeEpisodeFile = true; // bool | 
final bool includeEpisodeImages = true; // bool | 
final String tags = tags_example; // String | 

try {
    final response = api.apiV3CalendarGet(start, end, unmonitored, includeSeries, includeEpisodeFile, includeEpisodeImages, tags);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CalendarApi->apiV3CalendarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **DateTime**|  | [optional] 
 **end** | **DateTime**|  | [optional] 
 **unmonitored** | **bool**|  | [optional] [default to false]
 **includeSeries** | **bool**|  | [optional] [default to false]
 **includeEpisodeFile** | **bool**|  | [optional] [default to false]
 **includeEpisodeImages** | **bool**|  | [optional] [default to false]
 **tags** | **String**|  | [optional] [default to '']

### Return type

[**BuiltList&lt;EpisodeResource&gt;**](EpisodeResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3CalendarIdGet**
> EpisodeResource apiV3CalendarIdGet(id)



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

final api = Sonarr().getCalendarApi();
final int id = 56; // int | 

try {
    final response = api.apiV3CalendarIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CalendarApi->apiV3CalendarIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**EpisodeResource**](EpisodeResource.md)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

