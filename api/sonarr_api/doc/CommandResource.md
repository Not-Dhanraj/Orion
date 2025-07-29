# sonarr.model.CommandResource

## Load the model package
```dart
import 'package:sonarr/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **String** |  | [optional] 
**commandName** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**body** | [**Command**](Command.md) |  | [optional] 
**priority** | [**CommandPriority**](CommandPriority.md) |  | [optional] 
**status** | [**CommandStatus**](CommandStatus.md) |  | [optional] 
**result** | [**CommandResult**](CommandResult.md) |  | [optional] 
**queued** | [**DateTime**](DateTime.md) |  | [optional] 
**started** | [**DateTime**](DateTime.md) |  | [optional] 
**ended** | [**DateTime**](DateTime.md) |  | [optional] 
**duration** | **String** |  | [optional] 
**exception** | **String** |  | [optional] 
**trigger** | [**CommandTrigger**](CommandTrigger.md) |  | [optional] 
**clientUserAgent** | **String** |  | [optional] 
**stateChangeTime** | [**DateTime**](DateTime.md) |  | [optional] 
**sendUpdatesToClient** | **bool** |  | [optional] 
**updateScheduledTask** | **bool** |  | [optional] 
**lastExecutionTime** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


