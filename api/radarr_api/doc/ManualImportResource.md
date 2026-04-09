# radarr_api.model.ManualImportResource

## Load the model package
```dart
import 'package:radarr_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**path** | **String** |  | [optional] 
**relativePath** | **String** |  | [optional] 
**folderName** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**size** | **int** |  | [optional] 
**movie** | [**MovieResource**](MovieResource.md) |  | [optional] 
**movieFileId** | **int** |  | [optional] 
**releaseGroup** | **String** |  | [optional] 
**quality** | [**QualityModel**](QualityModel.md) |  | [optional] 
**languages** | [**List&lt;Language&gt;**](Language.md) |  | [optional] 
**qualityWeight** | **int** |  | [optional] 
**downloadId** | **String** |  | [optional] 
**customFormats** | [**List&lt;CustomFormatResource&gt;**](CustomFormatResource.md) |  | [optional] 
**customFormatScore** | **int** |  | [optional] 
**indexerFlags** | **int** |  | [optional] 
**rejections** | [**List&lt;ImportRejectionResource&gt;**](ImportRejectionResource.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


