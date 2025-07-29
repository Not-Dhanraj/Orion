# sonarr.api.CalendarFeedApi

## Load the API package
```dart
import 'package:sonarr/api.dart';
```

All URIs are relative to *http://localhost:8989*

Method | HTTP request | Description
------------- | ------------- | -------------
[**feedV3CalendarSonarrIcsGet**](CalendarFeedApi.md#feedv3calendarsonarricsget) | **GET** /feed/v3/calendar/sonarr.ics | 


# **feedV3CalendarSonarrIcsGet**
> feedV3CalendarSonarrIcsGet(pastDays, futureDays, tags, unmonitored, premieresOnly, asAllDay)



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

final api = Sonarr().getCalendarFeedApi();
final int pastDays = 56; // int | 
final int futureDays = 56; // int | 
final String tags = tags_example; // String | 
final bool unmonitored = true; // bool | 
final bool premieresOnly = true; // bool | 
final bool asAllDay = true; // bool | 

try {
    api.feedV3CalendarSonarrIcsGet(pastDays, futureDays, tags, unmonitored, premieresOnly, asAllDay);
} catch on DioException (e) {
    print('Exception when calling CalendarFeedApi->feedV3CalendarSonarrIcsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pastDays** | **int**|  | [optional] [default to 7]
 **futureDays** | **int**|  | [optional] [default to 28]
 **tags** | **String**|  | [optional] [default to '']
 **unmonitored** | **bool**|  | [optional] [default to false]
 **premieresOnly** | **bool**|  | [optional] [default to false]
 **asAllDay** | **bool**|  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[apikey](../README.md#apikey), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

