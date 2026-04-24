# jelly_api.api.LocalizationApi

## Load the API package
```dart
import 'package:jelly_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCountries**](LocalizationApi.md#getcountries) | **GET** /Localization/Countries | Gets known countries.
[**getCultures**](LocalizationApi.md#getcultures) | **GET** /Localization/Cultures | Gets known cultures.
[**getLocalizationOptions**](LocalizationApi.md#getlocalizationoptions) | **GET** /Localization/Options | Gets localization options.
[**getParentalRatings**](LocalizationApi.md#getparentalratings) | **GET** /Localization/ParentalRatings | Gets known parental ratings.


# **getCountries**
> List<CountryInfo> getCountries()

Gets known countries.

### Example
```dart
import 'package:jelly_api/api.dart';
// TODO Configure API key authorization: CustomAuthentication
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKeyPrefix = 'Bearer';

final api = JellyApi().getLocalizationApi();

try {
    final response = api.getCountries();
    print(response);
} on DioException catch (e) {
    print('Exception when calling LocalizationApi->getCountries: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;CountryInfo&gt;**](CountryInfo.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCultures**
> List<CultureDto> getCultures()

Gets known cultures.

### Example
```dart
import 'package:jelly_api/api.dart';
// TODO Configure API key authorization: CustomAuthentication
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKeyPrefix = 'Bearer';

final api = JellyApi().getLocalizationApi();

try {
    final response = api.getCultures();
    print(response);
} on DioException catch (e) {
    print('Exception when calling LocalizationApi->getCultures: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;CultureDto&gt;**](CultureDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocalizationOptions**
> List<LocalizationOption> getLocalizationOptions()

Gets localization options.

### Example
```dart
import 'package:jelly_api/api.dart';
// TODO Configure API key authorization: CustomAuthentication
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKeyPrefix = 'Bearer';

final api = JellyApi().getLocalizationApi();

try {
    final response = api.getLocalizationOptions();
    print(response);
} on DioException catch (e) {
    print('Exception when calling LocalizationApi->getLocalizationOptions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;LocalizationOption&gt;**](LocalizationOption.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParentalRatings**
> List<ParentalRating> getParentalRatings()

Gets known parental ratings.

### Example
```dart
import 'package:jelly_api/api.dart';
// TODO Configure API key authorization: CustomAuthentication
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('CustomAuthentication').apiKeyPrefix = 'Bearer';

final api = JellyApi().getLocalizationApi();

try {
    final response = api.getParentalRatings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling LocalizationApi->getParentalRatings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;ParentalRating&gt;**](ParentalRating.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

