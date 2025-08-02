# radarr.api.CalendarFeedApi

## Load the API package
```dart
import 'package:radarr/api.dart';
```

All URIs are relative to *http://localhost:7878*

Method | HTTP request | Description
------------- | ------------- | -------------
[**feedV3CalendarRadarrIcsGet**](CalendarFeedApi.md#feedv3calendarradarricsget) | **GET** /feed/v3/calendar/radarr.ics | 


# **feedV3CalendarRadarrIcsGet**
> feedV3CalendarRadarrIcsGet(pastDays, futureDays, tags, unmonitored, releaseTypes)



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

final api = Radarr().getCalendarFeedApi();
final int pastDays = 56; // int | 
final int futureDays = 56; // int | 
final String tags = tags_example; // String | 
final bool unmonitored = true; // bool | 
final BuiltList<CalendarReleaseType> releaseTypes = ; // BuiltList<CalendarReleaseType> | 

try {
    api.feedV3CalendarRadarrIcsGet(pastDays, futureDays, tags, unmonitored, releaseTypes);
} catch on DioException (e) {
    print('Exception when calling CalendarFeedApi->feedV3CalendarRadarrIcsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pastDays** | **int**|  | [optional] [default to 7]
 **futureDays** | **int**|  | [optional] [default to 28]
 **tags** | **String**|  | [optional] [default to '']
 **unmonitored** | **bool**|  | [optional] [default to false]
 **releaseTypes** | [**BuiltList&lt;CalendarReleaseType&gt;**](CalendarReleaseType.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

