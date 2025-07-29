//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:sonarr/src/date_serializer.dart';
import 'package:sonarr/src/model/date.dart';

import 'package:sonarr/src/model/add_series_options.dart';
import 'package:sonarr/src/model/alternate_title_resource.dart';
import 'package:sonarr/src/model/apply_tags.dart';
import 'package:sonarr/src/model/authentication_required_type.dart';
import 'package:sonarr/src/model/authentication_type.dart';
import 'package:sonarr/src/model/auto_tagging_resource.dart';
import 'package:sonarr/src/model/auto_tagging_specification_schema.dart';
import 'package:sonarr/src/model/backup_resource.dart';
import 'package:sonarr/src/model/backup_type.dart';
import 'package:sonarr/src/model/blocklist_bulk_resource.dart';
import 'package:sonarr/src/model/blocklist_resource.dart';
import 'package:sonarr/src/model/blocklist_resource_paging_resource.dart';
import 'package:sonarr/src/model/certificate_validation_type.dart';
import 'package:sonarr/src/model/command.dart';
import 'package:sonarr/src/model/command_priority.dart';
import 'package:sonarr/src/model/command_resource.dart';
import 'package:sonarr/src/model/command_result.dart';
import 'package:sonarr/src/model/command_status.dart';
import 'package:sonarr/src/model/command_trigger.dart';
import 'package:sonarr/src/model/custom_filter_resource.dart';
import 'package:sonarr/src/model/custom_format_bulk_resource.dart';
import 'package:sonarr/src/model/custom_format_resource.dart';
import 'package:sonarr/src/model/custom_format_specification_schema.dart';
import 'package:sonarr/src/model/database_type.dart';
import 'package:sonarr/src/model/delay_profile_resource.dart';
import 'package:sonarr/src/model/disk_space_resource.dart';
import 'package:sonarr/src/model/download_client_bulk_resource.dart';
import 'package:sonarr/src/model/download_client_config_resource.dart';
import 'package:sonarr/src/model/download_client_resource.dart';
import 'package:sonarr/src/model/download_protocol.dart';
import 'package:sonarr/src/model/episode_file_list_resource.dart';
import 'package:sonarr/src/model/episode_file_resource.dart';
import 'package:sonarr/src/model/episode_history_event_type.dart';
import 'package:sonarr/src/model/episode_resource.dart';
import 'package:sonarr/src/model/episode_resource_paging_resource.dart';
import 'package:sonarr/src/model/episode_title_required_type.dart';
import 'package:sonarr/src/model/episodes_monitored_resource.dart';
import 'package:sonarr/src/model/field.dart';
import 'package:sonarr/src/model/file_date_type.dart';
import 'package:sonarr/src/model/health_check_result.dart';
import 'package:sonarr/src/model/health_resource.dart';
import 'package:sonarr/src/model/history_resource.dart';
import 'package:sonarr/src/model/history_resource_paging_resource.dart';
import 'package:sonarr/src/model/host_config_resource.dart';
import 'package:sonarr/src/model/http_uri.dart';
import 'package:sonarr/src/model/import_list_bulk_resource.dart';
import 'package:sonarr/src/model/import_list_config_resource.dart';
import 'package:sonarr/src/model/import_list_exclusion_bulk_resource.dart';
import 'package:sonarr/src/model/import_list_exclusion_resource.dart';
import 'package:sonarr/src/model/import_list_exclusion_resource_paging_resource.dart';
import 'package:sonarr/src/model/import_list_resource.dart';
import 'package:sonarr/src/model/import_list_type.dart';
import 'package:sonarr/src/model/import_rejection_resource.dart';
import 'package:sonarr/src/model/indexer_bulk_resource.dart';
import 'package:sonarr/src/model/indexer_config_resource.dart';
import 'package:sonarr/src/model/indexer_flag_resource.dart';
import 'package:sonarr/src/model/indexer_resource.dart';
import 'package:sonarr/src/model/language.dart';
import 'package:sonarr/src/model/language_profile_item_resource.dart';
import 'package:sonarr/src/model/language_profile_resource.dart';
import 'package:sonarr/src/model/language_resource.dart';
import 'package:sonarr/src/model/list_sync_level_type.dart';
import 'package:sonarr/src/model/localization_language_resource.dart';
import 'package:sonarr/src/model/localization_resource.dart';
import 'package:sonarr/src/model/log_file_resource.dart';
import 'package:sonarr/src/model/log_resource.dart';
import 'package:sonarr/src/model/log_resource_paging_resource.dart';
import 'package:sonarr/src/model/manual_import_reprocess_resource.dart';
import 'package:sonarr/src/model/manual_import_resource.dart';
import 'package:sonarr/src/model/media_cover.dart';
import 'package:sonarr/src/model/media_cover_types.dart';
import 'package:sonarr/src/model/media_info_resource.dart';
import 'package:sonarr/src/model/media_management_config_resource.dart';
import 'package:sonarr/src/model/metadata_resource.dart';
import 'package:sonarr/src/model/monitor_types.dart';
import 'package:sonarr/src/model/monitoring_options.dart';
import 'package:sonarr/src/model/naming_config_resource.dart';
import 'package:sonarr/src/model/new_item_monitor_types.dart';
import 'package:sonarr/src/model/notification_resource.dart';
import 'package:sonarr/src/model/parse_resource.dart';
import 'package:sonarr/src/model/parsed_episode_info.dart';
import 'package:sonarr/src/model/ping_resource.dart';
import 'package:sonarr/src/model/privacy_level.dart';
import 'package:sonarr/src/model/profile_format_item_resource.dart';
import 'package:sonarr/src/model/proper_download_types.dart';
import 'package:sonarr/src/model/provider_message.dart';
import 'package:sonarr/src/model/provider_message_type.dart';
import 'package:sonarr/src/model/proxy_type.dart';
import 'package:sonarr/src/model/quality.dart';
import 'package:sonarr/src/model/quality_definition_limits_resource.dart';
import 'package:sonarr/src/model/quality_definition_resource.dart';
import 'package:sonarr/src/model/quality_model.dart';
import 'package:sonarr/src/model/quality_profile_quality_item_resource.dart';
import 'package:sonarr/src/model/quality_profile_resource.dart';
import 'package:sonarr/src/model/quality_source.dart';
import 'package:sonarr/src/model/queue_bulk_resource.dart';
import 'package:sonarr/src/model/queue_resource.dart';
import 'package:sonarr/src/model/queue_resource_paging_resource.dart';
import 'package:sonarr/src/model/queue_status.dart';
import 'package:sonarr/src/model/queue_status_resource.dart';
import 'package:sonarr/src/model/ratings.dart';
import 'package:sonarr/src/model/rejection_type.dart';
import 'package:sonarr/src/model/release_episode_resource.dart';
import 'package:sonarr/src/model/release_profile_resource.dart';
import 'package:sonarr/src/model/release_resource.dart';
import 'package:sonarr/src/model/release_type.dart';
import 'package:sonarr/src/model/remote_path_mapping_resource.dart';
import 'package:sonarr/src/model/rename_episode_resource.dart';
import 'package:sonarr/src/model/rescan_after_refresh_type.dart';
import 'package:sonarr/src/model/revision.dart';
import 'package:sonarr/src/model/root_folder_resource.dart';
import 'package:sonarr/src/model/runtime_mode.dart';
import 'package:sonarr/src/model/season_pass_resource.dart';
import 'package:sonarr/src/model/season_pass_series_resource.dart';
import 'package:sonarr/src/model/season_resource.dart';
import 'package:sonarr/src/model/season_statistics_resource.dart';
import 'package:sonarr/src/model/select_option.dart';
import 'package:sonarr/src/model/series_editor_resource.dart';
import 'package:sonarr/src/model/series_resource.dart';
import 'package:sonarr/src/model/series_statistics_resource.dart';
import 'package:sonarr/src/model/series_status_type.dart';
import 'package:sonarr/src/model/series_title_info.dart';
import 'package:sonarr/src/model/series_types.dart';
import 'package:sonarr/src/model/sort_direction.dart';
import 'package:sonarr/src/model/system_resource.dart';
import 'package:sonarr/src/model/tag_details_resource.dart';
import 'package:sonarr/src/model/tag_resource.dart';
import 'package:sonarr/src/model/task_resource.dart';
import 'package:sonarr/src/model/tracked_download_state.dart';
import 'package:sonarr/src/model/tracked_download_status.dart';
import 'package:sonarr/src/model/tracked_download_status_message.dart';
import 'package:sonarr/src/model/ui_config_resource.dart';
import 'package:sonarr/src/model/unmapped_folder.dart';
import 'package:sonarr/src/model/update_changes.dart';
import 'package:sonarr/src/model/update_mechanism.dart';
import 'package:sonarr/src/model/update_resource.dart';

part 'serializers.g.dart';

@SerializersFor([
  AddSeriesOptions,
  AlternateTitleResource,
  ApplyTags,
  AuthenticationRequiredType,
  AuthenticationType,
  AutoTaggingResource,
  AutoTaggingSpecificationSchema,
  BackupResource,
  BackupType,
  BlocklistBulkResource,
  BlocklistResource,
  BlocklistResourcePagingResource,
  CertificateValidationType,
  Command,
  CommandPriority,
  CommandResource,
  CommandResult,
  CommandStatus,
  CommandTrigger,
  CustomFilterResource,
  CustomFormatBulkResource,
  CustomFormatResource,
  CustomFormatSpecificationSchema,
  DatabaseType,
  DelayProfileResource,
  DiskSpaceResource,
  DownloadClientBulkResource,
  DownloadClientConfigResource,
  DownloadClientResource,
  DownloadProtocol,
  EpisodeFileListResource,
  EpisodeFileResource,
  EpisodeHistoryEventType,
  EpisodeResource,
  EpisodeResourcePagingResource,
  EpisodeTitleRequiredType,
  EpisodesMonitoredResource,
  Field,
  FileDateType,
  HealthCheckResult,
  HealthResource,
  HistoryResource,
  HistoryResourcePagingResource,
  HostConfigResource,
  HttpUri,
  ImportListBulkResource,
  ImportListConfigResource,
  ImportListExclusionBulkResource,
  ImportListExclusionResource,
  ImportListExclusionResourcePagingResource,
  ImportListResource,
  ImportListType,
  ImportRejectionResource,
  IndexerBulkResource,
  IndexerConfigResource,
  IndexerFlagResource,
  IndexerResource,
  Language,
  LanguageProfileItemResource,
  LanguageProfileResource,
  LanguageResource,
  ListSyncLevelType,
  LocalizationLanguageResource,
  LocalizationResource,
  LogFileResource,
  LogResource,
  LogResourcePagingResource,
  ManualImportReprocessResource,
  ManualImportResource,
  MediaCover,
  MediaCoverTypes,
  MediaInfoResource,
  MediaManagementConfigResource,
  MetadataResource,
  MonitorTypes,
  MonitoringOptions,
  NamingConfigResource,
  NewItemMonitorTypes,
  NotificationResource,
  ParseResource,
  ParsedEpisodeInfo,
  PingResource,
  PrivacyLevel,
  ProfileFormatItemResource,
  ProperDownloadTypes,
  ProviderMessage,
  ProviderMessageType,
  ProxyType,
  Quality,
  QualityDefinitionLimitsResource,
  QualityDefinitionResource,
  QualityModel,
  QualityProfileQualityItemResource,
  QualityProfileResource,
  QualitySource,
  QueueBulkResource,
  QueueResource,
  QueueResourcePagingResource,
  QueueStatus,
  QueueStatusResource,
  Ratings,
  RejectionType,
  ReleaseEpisodeResource,
  ReleaseProfileResource,
  ReleaseResource,
  ReleaseType,
  RemotePathMappingResource,
  RenameEpisodeResource,
  RescanAfterRefreshType,
  Revision,
  RootFolderResource,
  RuntimeMode,
  SeasonPassResource,
  SeasonPassSeriesResource,
  SeasonResource,
  SeasonStatisticsResource,
  SelectOption,
  SeriesEditorResource,
  SeriesResource,
  SeriesStatisticsResource,
  SeriesStatusType,
  SeriesTitleInfo,
  SeriesTypes,
  SortDirection,
  SystemResource,
  TagDetailsResource,
  TagResource,
  TaskResource,
  TrackedDownloadState,
  TrackedDownloadStatus,
  TrackedDownloadStatusMessage,
  UiConfigResource,
  UnmappedFolder,
  UpdateChanges,
  UpdateMechanism,
  UpdateResource,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReleaseProfileResource)]),
        () => ListBuilder<ReleaseProfileResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TagDetailsResource)]),
        () => ListBuilder<TagDetailsResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DelayProfileResource)]),
        () => ListBuilder<DelayProfileResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(QueueStatus)]),
        () => ListBuilder<QueueStatus>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(BackupResource)]),
        () => ListBuilder<BackupResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CommandResource)]),
        () => ListBuilder<CommandResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ManualImportReprocessResource)]),
        () => ListBuilder<ManualImportReprocessResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(QueueResource)]),
        () => ListBuilder<QueueResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(MetadataResource)]),
        () => ListBuilder<MetadataResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RenameEpisodeResource)]),
        () => ListBuilder<RenameEpisodeResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(QualityDefinitionResource)]),
        () => ListBuilder<QualityDefinitionResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ImportListResource)]),
        () => ListBuilder<ImportListResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(NotificationResource)]),
        () => ListBuilder<NotificationResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CustomFormatResource)]),
        () => ListBuilder<CustomFormatResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TaskResource)]),
        () => ListBuilder<TaskResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(CustomFilterResource)]),
        () => ListBuilder<CustomFilterResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(LanguageResource)]),
        () => ListBuilder<LanguageResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(LogFileResource)]),
        () => ListBuilder<LogFileResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ReleaseResource)]),
        () => ListBuilder<ReleaseResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(SeriesResource)]),
        () => ListBuilder<SeriesResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AutoTaggingResource)]),
        () => ListBuilder<AutoTaggingResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(LanguageProfileResource)]),
        () => ListBuilder<LanguageProfileResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RootFolderResource)]),
        () => ListBuilder<RootFolderResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DownloadClientResource)]),
        () => ListBuilder<DownloadClientResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DownloadProtocol)]),
        () => ListBuilder<DownloadProtocol>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IndexerResource)]),
        () => ListBuilder<IndexerResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DiskSpaceResource)]),
        () => ListBuilder<DiskSpaceResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TagResource)]),
        () => ListBuilder<TagResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(EpisodeResource)]),
        () => ListBuilder<EpisodeResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ManualImportResource)]),
        () => ListBuilder<ManualImportResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(QualityProfileResource)]),
        () => ListBuilder<QualityProfileResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(int)]),
        () => ListBuilder<int>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(EpisodeFileResource)]),
        () => ListBuilder<EpisodeFileResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(HealthResource)]),
        () => ListBuilder<HealthResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ImportListExclusionResource)]),
        () => ListBuilder<ImportListExclusionResource>(),
      )
      ..addBuilderFactory(
        const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(HistoryResource)]),
        () => ListBuilder<HistoryResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(UpdateResource)]),
        () => ListBuilder<UpdateResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(RemotePathMappingResource)]),
        () => ListBuilder<RemotePathMappingResource>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(IndexerFlagResource)]),
        () => ListBuilder<IndexerFlagResource>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
