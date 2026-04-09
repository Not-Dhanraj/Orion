import 'package:radarr_api/lib/model/add_movie_options.dart';
import 'package:radarr_api/lib/model/alternative_title_resource.dart';
import 'package:radarr_api/lib/model/api_info_resource.dart';
import 'package:radarr_api/lib/model/auto_tagging_resource.dart';
import 'package:radarr_api/lib/model/auto_tagging_specification_schema.dart';
import 'package:radarr_api/lib/model/backup_resource.dart';
import 'package:radarr_api/lib/model/blocklist_bulk_resource.dart';
import 'package:radarr_api/lib/model/blocklist_resource.dart';
import 'package:radarr_api/lib/model/blocklist_resource_paging_resource.dart';
import 'package:radarr_api/lib/model/collection_movie_resource.dart';
import 'package:radarr_api/lib/model/collection_resource.dart';
import 'package:radarr_api/lib/model/collection_update_resource.dart';
import 'package:radarr_api/lib/model/command.dart';
import 'package:radarr_api/lib/model/command_resource.dart';
import 'package:radarr_api/lib/model/credit_resource.dart';
import 'package:radarr_api/lib/model/custom_filter_resource.dart';
import 'package:radarr_api/lib/model/custom_format_bulk_resource.dart';
import 'package:radarr_api/lib/model/custom_format_resource.dart';
import 'package:radarr_api/lib/model/custom_format_specification_schema.dart';
import 'package:radarr_api/lib/model/delay_profile_resource.dart';
import 'package:radarr_api/lib/model/disk_space_resource.dart';
import 'package:radarr_api/lib/model/download_client_bulk_resource.dart';
import 'package:radarr_api/lib/model/download_client_config_resource.dart';
import 'package:radarr_api/lib/model/download_client_resource.dart';
import 'package:radarr_api/lib/model/extra_file_resource.dart';
import 'package:radarr_api/lib/model/field.dart';
import 'package:radarr_api/lib/model/health_resource.dart';
import 'package:radarr_api/lib/model/history_resource.dart';
import 'package:radarr_api/lib/model/history_resource_paging_resource.dart';
import 'package:radarr_api/lib/model/host_config_resource.dart';
import 'package:radarr_api/lib/model/import_list_bulk_resource.dart';
import 'package:radarr_api/lib/model/import_list_config_resource.dart';
import 'package:radarr_api/lib/model/import_list_exclusion_bulk_resource.dart';
import 'package:radarr_api/lib/model/import_list_exclusion_resource.dart';
import 'package:radarr_api/lib/model/import_list_exclusion_resource_paging_resource.dart';
import 'package:radarr_api/lib/model/import_list_resource.dart';
import 'package:radarr_api/lib/model/import_rejection_resource.dart';
import 'package:radarr_api/lib/model/indexer_bulk_resource.dart';
import 'package:radarr_api/lib/model/indexer_config_resource.dart';
import 'package:radarr_api/lib/model/indexer_flag_resource.dart';
import 'package:radarr_api/lib/model/indexer_resource.dart';
import 'package:radarr_api/lib/model/language.dart';
import 'package:radarr_api/lib/model/language_resource.dart';
import 'package:radarr_api/lib/model/localization_language_resource.dart';
import 'package:radarr_api/lib/model/log_file_resource.dart';
import 'package:radarr_api/lib/model/log_resource.dart';
import 'package:radarr_api/lib/model/log_resource_paging_resource.dart';
import 'package:radarr_api/lib/model/manual_import_reprocess_resource.dart';
import 'package:radarr_api/lib/model/manual_import_resource.dart';
import 'package:radarr_api/lib/model/media_cover.dart';
import 'package:radarr_api/lib/model/media_info_resource.dart';
import 'package:radarr_api/lib/model/media_management_config_resource.dart';
import 'package:radarr_api/lib/model/metadata_config_resource.dart';
import 'package:radarr_api/lib/model/metadata_resource.dart';
import 'package:radarr_api/lib/model/movie_collection_resource.dart';
import 'package:radarr_api/lib/model/movie_editor_resource.dart';
import 'package:radarr_api/lib/model/movie_file_list_resource.dart';
import 'package:radarr_api/lib/model/movie_file_resource.dart';
import 'package:radarr_api/lib/model/movie_resource.dart';
import 'package:radarr_api/lib/model/movie_resource_paging_resource.dart';
import 'package:radarr_api/lib/model/movie_statistics_resource.dart';
import 'package:radarr_api/lib/model/naming_config_resource.dart';
import 'package:radarr_api/lib/model/notification_resource.dart';
import 'package:radarr_api/lib/model/parse_resource.dart';
import 'package:radarr_api/lib/model/parsed_movie_info.dart';
import 'package:radarr_api/lib/model/ping_resource.dart';
import 'package:radarr_api/lib/model/profile_format_item_resource.dart';
import 'package:radarr_api/lib/model/provider_message.dart';
import 'package:radarr_api/lib/model/quality.dart';
import 'package:radarr_api/lib/model/quality_definition_limits_resource.dart';
import 'package:radarr_api/lib/model/quality_definition_resource.dart';
import 'package:radarr_api/lib/model/quality_model.dart';
import 'package:radarr_api/lib/model/quality_profile_quality_item_resource.dart';
import 'package:radarr_api/lib/model/quality_profile_resource.dart';
import 'package:radarr_api/lib/model/queue_bulk_resource.dart';
import 'package:radarr_api/lib/model/queue_resource.dart';
import 'package:radarr_api/lib/model/queue_resource_paging_resource.dart';
import 'package:radarr_api/lib/model/queue_status_resource.dart';
import 'package:radarr_api/lib/model/rating_child.dart';
import 'package:radarr_api/lib/model/ratings.dart';
import 'package:radarr_api/lib/model/release_profile_resource.dart';
import 'package:radarr_api/lib/model/release_resource.dart';
import 'package:radarr_api/lib/model/remote_path_mapping_resource.dart';
import 'package:radarr_api/lib/model/rename_movie_resource.dart';
import 'package:radarr_api/lib/model/revision.dart';
import 'package:radarr_api/lib/model/root_folder_resource.dart';
import 'package:radarr_api/lib/model/select_option.dart';
import 'package:radarr_api/lib/model/system_resource.dart';
import 'package:radarr_api/lib/model/tag_details_resource.dart';
import 'package:radarr_api/lib/model/tag_resource.dart';
import 'package:radarr_api/lib/model/task_resource.dart';
import 'package:radarr_api/lib/model/tracked_download_status_message.dart';
import 'package:radarr_api/lib/model/ui_config_resource.dart';
import 'package:radarr_api/lib/model/unmapped_folder.dart';
import 'package:radarr_api/lib/model/update_changes.dart';
import 'package:radarr_api/lib/model/update_resource.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'AddMovieMethod':
          
          
        case 'AddMovieOptions':
          return AddMovieOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AlternativeTitleResource':
          return AlternativeTitleResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ApiInfoResource':
          return ApiInfoResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ApplyTags':
          
          
        case 'AuthenticationRequiredType':
          
          
        case 'AuthenticationType':
          
          
        case 'AutoTaggingResource':
          return AutoTaggingResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AutoTaggingSpecificationSchema':
          return AutoTaggingSpecificationSchema.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupResource':
          return BackupResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupType':
          
          
        case 'BlocklistBulkResource':
          return BlocklistBulkResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BlocklistResource':
          return BlocklistResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BlocklistResourcePagingResource':
          return BlocklistResourcePagingResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CalendarReleaseType':
          
          
        case 'CertificateValidationType':
          
          
        case 'CollectionMovieResource':
          return CollectionMovieResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CollectionResource':
          return CollectionResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CollectionUpdateResource':
          return CollectionUpdateResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ColonReplacementFormat':
          
          
        case 'Command':
          return Command.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CommandPriority':
          
          
        case 'CommandResource':
          return CommandResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CommandResult':
          
          
        case 'CommandStatus':
          
          
        case 'CommandTrigger':
          
          
        case 'CreditResource':
          return CreditResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreditType':
          
          
        case 'CustomFilterResource':
          return CustomFilterResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomFormatBulkResource':
          return CustomFormatBulkResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomFormatResource':
          return CustomFormatResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomFormatSpecificationSchema':
          return CustomFormatSpecificationSchema.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DatabaseType':
          
          
        case 'DelayProfileResource':
          return DelayProfileResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DiskSpaceResource':
          return DiskSpaceResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DownloadClientBulkResource':
          return DownloadClientBulkResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DownloadClientConfigResource':
          return DownloadClientConfigResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DownloadClientResource':
          return DownloadClientResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DownloadProtocol':
          
          
        case 'ExtraFileResource':
          return ExtraFileResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ExtraFileType':
          
          
        case 'Field':
          return Field.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'FileDateType':
          
          
        case 'HealthCheckResult':
          
          
        case 'HealthResource':
          return HealthResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HistoryResource':
          return HistoryResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HistoryResourcePagingResource':
          return HistoryResourcePagingResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HostConfigResource':
          return HostConfigResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImportListBulkResource':
          return ImportListBulkResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImportListConfigResource':
          return ImportListConfigResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImportListExclusionBulkResource':
          return ImportListExclusionBulkResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImportListExclusionResource':
          return ImportListExclusionResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImportListExclusionResourcePagingResource':
          return ImportListExclusionResourcePagingResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImportListResource':
          return ImportListResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImportListType':
          
          
        case 'ImportRejectionResource':
          return ImportRejectionResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'IndexerBulkResource':
          return IndexerBulkResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'IndexerConfigResource':
          return IndexerConfigResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'IndexerFlagResource':
          return IndexerFlagResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'IndexerResource':
          return IndexerResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Language':
          return Language.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LanguageResource':
          return LanguageResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LocalizationLanguageResource':
          return LocalizationLanguageResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogFileResource':
          return LogFileResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogResource':
          return LogResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogResourcePagingResource':
          return LogResourcePagingResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ManualImportReprocessResource':
          return ManualImportReprocessResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ManualImportResource':
          return ManualImportResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaCover':
          return MediaCover.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaCoverTypes':
          
          
        case 'MediaInfoResource':
          return MediaInfoResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaManagementConfigResource':
          return MediaManagementConfigResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MetadataConfigResource':
          return MetadataConfigResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MetadataResource':
          return MetadataResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Modifier':
          
          
        case 'MonitorTypes':
          
          
        case 'MovieCollectionResource':
          return MovieCollectionResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MovieEditorResource':
          return MovieEditorResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MovieFileListResource':
          return MovieFileListResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MovieFileResource':
          return MovieFileResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MovieHistoryEventType':
          
          
        case 'MovieResource':
          return MovieResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MovieResourcePagingResource':
          return MovieResourcePagingResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MovieRuntimeFormatType':
          
          
        case 'MovieStatisticsResource':
          return MovieStatisticsResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MovieStatusType':
          
          
        case 'NamingConfigResource':
          return NamingConfigResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NotificationResource':
          return NotificationResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ParseResource':
          return ParseResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ParsedMovieInfo':
          return ParsedMovieInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PingResource':
          return PingResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PrivacyLevel':
          
          
        case 'ProfileFormatItemResource':
          return ProfileFormatItemResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProperDownloadTypes':
          
          
        case 'ProviderMessage':
          return ProviderMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProviderMessageType':
          
          
        case 'ProxyType':
          
          
        case 'Quality':
          return Quality.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QualityDefinitionLimitsResource':
          return QualityDefinitionLimitsResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QualityDefinitionResource':
          return QualityDefinitionResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QualityModel':
          return QualityModel.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QualityProfileQualityItemResource':
          return QualityProfileQualityItemResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QualityProfileResource':
          return QualityProfileResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QualitySource':
          
          
        case 'QueueBulkResource':
          return QueueBulkResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueueResource':
          return QueueResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueueResourcePagingResource':
          return QueueResourcePagingResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueueStatus':
          
          
        case 'QueueStatusResource':
          return QueueStatusResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RatingChild':
          return RatingChild.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RatingType':
          
          
        case 'Ratings':
          return Ratings.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RejectionType':
          
          
        case 'ReleaseProfileResource':
          return ReleaseProfileResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReleaseResource':
          return ReleaseResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RemotePathMappingResource':
          return RemotePathMappingResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RenameMovieResource':
          return RenameMovieResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RescanAfterRefreshType':
          
          
        case 'Revision':
          return Revision.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RootFolderResource':
          return RootFolderResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RuntimeMode':
          
          
        case 'SelectOption':
          return SelectOption.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SortDirection':
          
          
        case 'SourceType':
          
          
        case 'SystemResource':
          return SystemResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TMDbCountryCode':
          
          
        case 'TagDetailsResource':
          return TagDetailsResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TagResource':
          return TagResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TaskResource':
          return TaskResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TrackedDownloadState':
          
          
        case 'TrackedDownloadStatus':
          
          
        case 'TrackedDownloadStatusMessage':
          return TrackedDownloadStatusMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UiConfigResource':
          return UiConfigResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UnmappedFolder':
          return UnmappedFolder.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateChanges':
          return UpdateChanges.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateMechanism':
          
          
        case 'UpdateResource':
          return UpdateResource.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!.trim(); // ignore: parameter_assignments
            return Map<String, BaseType>.fromIterables(
              value.keys as Iterable<String>,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    }
    throw Exception('Cannot deserialize');
  }