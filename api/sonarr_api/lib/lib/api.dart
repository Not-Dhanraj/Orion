//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:sonarr_api/lib/auth/api_key_auth.dart';
import 'package:sonarr_api/lib/auth/basic_auth.dart';
import 'package:sonarr_api/lib/auth/bearer_auth.dart';
import 'package:sonarr_api/lib/auth/oauth.dart';
import 'package:sonarr_api/lib/api/api_info_api.dart';
import 'package:sonarr_api/lib/api/authentication_api.dart';
import 'package:sonarr_api/lib/api/auto_tagging_api.dart';
import 'package:sonarr_api/lib/api/backup_api.dart';
import 'package:sonarr_api/lib/api/blocklist_api.dart';
import 'package:sonarr_api/lib/api/calendar_api.dart';
import 'package:sonarr_api/lib/api/calendar_feed_api.dart';
import 'package:sonarr_api/lib/api/command_api.dart';
import 'package:sonarr_api/lib/api/custom_filter_api.dart';
import 'package:sonarr_api/lib/api/custom_format_api.dart';
import 'package:sonarr_api/lib/api/cutoff_api.dart';
import 'package:sonarr_api/lib/api/delay_profile_api.dart';
import 'package:sonarr_api/lib/api/disk_space_api.dart';
import 'package:sonarr_api/lib/api/download_client_api.dart';
import 'package:sonarr_api/lib/api/download_client_config_api.dart';
import 'package:sonarr_api/lib/api/episode_api.dart';
import 'package:sonarr_api/lib/api/episode_file_api.dart';
import 'package:sonarr_api/lib/api/file_system_api.dart';
import 'package:sonarr_api/lib/api/health_api.dart';
import 'package:sonarr_api/lib/api/history_api.dart';
import 'package:sonarr_api/lib/api/host_config_api.dart';
import 'package:sonarr_api/lib/api/import_list_api.dart';
import 'package:sonarr_api/lib/api/import_list_config_api.dart';
import 'package:sonarr_api/lib/api/import_list_exclusion_api.dart';
import 'package:sonarr_api/lib/api/indexer_api.dart';
import 'package:sonarr_api/lib/api/indexer_config_api.dart';
import 'package:sonarr_api/lib/api/indexer_flag_api.dart';
import 'package:sonarr_api/lib/api/language_api.dart';
import 'package:sonarr_api/lib/api/language_profile_api.dart';
import 'package:sonarr_api/lib/api/language_profile_schema_api.dart';
import 'package:sonarr_api/lib/api/localization_api.dart';
import 'package:sonarr_api/lib/api/log_api.dart';
import 'package:sonarr_api/lib/api/log_file_api.dart';
import 'package:sonarr_api/lib/api/manual_import_api.dart';
import 'package:sonarr_api/lib/api/media_cover_api.dart';
import 'package:sonarr_api/lib/api/media_management_config_api.dart';
import 'package:sonarr_api/lib/api/metadata_api.dart';
import 'package:sonarr_api/lib/api/missing_api.dart';
import 'package:sonarr_api/lib/api/naming_config_api.dart';
import 'package:sonarr_api/lib/api/notification_api.dart';
import 'package:sonarr_api/lib/api/parse_api.dart';
import 'package:sonarr_api/lib/api/ping_api.dart';
import 'package:sonarr_api/lib/api/quality_definition_api.dart';
import 'package:sonarr_api/lib/api/quality_profile_api.dart';
import 'package:sonarr_api/lib/api/quality_profile_schema_api.dart';
import 'package:sonarr_api/lib/api/queue_api.dart';
import 'package:sonarr_api/lib/api/queue_action_api.dart';
import 'package:sonarr_api/lib/api/queue_details_api.dart';
import 'package:sonarr_api/lib/api/queue_status_api.dart';
import 'package:sonarr_api/lib/api/release_api.dart';
import 'package:sonarr_api/lib/api/release_profile_api.dart';
import 'package:sonarr_api/lib/api/release_push_api.dart';
import 'package:sonarr_api/lib/api/remote_path_mapping_api.dart';
import 'package:sonarr_api/lib/api/rename_episode_api.dart';
import 'package:sonarr_api/lib/api/root_folder_api.dart';
import 'package:sonarr_api/lib/api/season_pass_api.dart';
import 'package:sonarr_api/lib/api/series_api.dart';
import 'package:sonarr_api/lib/api/series_editor_api.dart';
import 'package:sonarr_api/lib/api/series_folder_api.dart';
import 'package:sonarr_api/lib/api/series_import_api.dart';
import 'package:sonarr_api/lib/api/series_lookup_api.dart';
import 'package:sonarr_api/lib/api/static_resource_api.dart';
import 'package:sonarr_api/lib/api/system_api.dart';
import 'package:sonarr_api/lib/api/tag_api.dart';
import 'package:sonarr_api/lib/api/tag_details_api.dart';
import 'package:sonarr_api/lib/api/task_api.dart';
import 'package:sonarr_api/lib/api/ui_config_api.dart';
import 'package:sonarr_api/lib/api/update_api.dart';
import 'package:sonarr_api/lib/api/update_log_file_api.dart';

class SonarrApi {
  static const String basePath = r'http://localhost:8989';

  final Dio dio;
  SonarrApi({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  }) : this.dio =
           dio ?? Dio(BaseOptions(baseUrl: basePathOverride ?? basePath)) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
                  as OAuthInterceptor)
              .tokens[name] =
          token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
                  as BearerAuthInterceptor)
              .tokens[name] =
          token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(
        username,
        password,
      );
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere(
                    (element) => element is ApiKeyAuthInterceptor,
                  )
                  as ApiKeyAuthInterceptor)
              .apiKeys[name] =
          apiKey;
    }
  }

  /// Get ApiInfoApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApiInfoApi getApiInfoApi() {
    return ApiInfoApi(dio);
  }

  /// Get AuthenticationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthenticationApi getAuthenticationApi() {
    return AuthenticationApi(dio);
  }

  /// Get AutoTaggingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AutoTaggingApi getAutoTaggingApi() {
    return AutoTaggingApi(dio);
  }

  /// Get BackupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BackupApi getBackupApi() {
    return BackupApi(dio);
  }

  /// Get BlocklistApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BlocklistApi getBlocklistApi() {
    return BlocklistApi(dio);
  }

  /// Get CalendarApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CalendarApi getCalendarApi() {
    return CalendarApi(dio);
  }

  /// Get CalendarFeedApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CalendarFeedApi getCalendarFeedApi() {
    return CalendarFeedApi(dio);
  }

  /// Get CommandApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CommandApi getCommandApi() {
    return CommandApi(dio);
  }

  /// Get CustomFilterApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomFilterApi getCustomFilterApi() {
    return CustomFilterApi(dio);
  }

  /// Get CustomFormatApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomFormatApi getCustomFormatApi() {
    return CustomFormatApi(dio);
  }

  /// Get CutoffApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CutoffApi getCutoffApi() {
    return CutoffApi(dio);
  }

  /// Get DelayProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DelayProfileApi getDelayProfileApi() {
    return DelayProfileApi(dio);
  }

  /// Get DiskSpaceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DiskSpaceApi getDiskSpaceApi() {
    return DiskSpaceApi(dio);
  }

  /// Get DownloadClientApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DownloadClientApi getDownloadClientApi() {
    return DownloadClientApi(dio);
  }

  /// Get DownloadClientConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DownloadClientConfigApi getDownloadClientConfigApi() {
    return DownloadClientConfigApi(dio);
  }

  /// Get EpisodeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EpisodeApi getEpisodeApi() {
    return EpisodeApi(dio);
  }

  /// Get EpisodeFileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EpisodeFileApi getEpisodeFileApi() {
    return EpisodeFileApi(dio);
  }

  /// Get FileSystemApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FileSystemApi getFileSystemApi() {
    return FileSystemApi(dio);
  }

  /// Get HealthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HealthApi getHealthApi() {
    return HealthApi(dio);
  }

  /// Get HistoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HistoryApi getHistoryApi() {
    return HistoryApi(dio);
  }

  /// Get HostConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HostConfigApi getHostConfigApi() {
    return HostConfigApi(dio);
  }

  /// Get ImportListApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImportListApi getImportListApi() {
    return ImportListApi(dio);
  }

  /// Get ImportListConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImportListConfigApi getImportListConfigApi() {
    return ImportListConfigApi(dio);
  }

  /// Get ImportListExclusionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImportListExclusionApi getImportListExclusionApi() {
    return ImportListExclusionApi(dio);
  }

  /// Get IndexerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IndexerApi getIndexerApi() {
    return IndexerApi(dio);
  }

  /// Get IndexerConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IndexerConfigApi getIndexerConfigApi() {
    return IndexerConfigApi(dio);
  }

  /// Get IndexerFlagApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IndexerFlagApi getIndexerFlagApi() {
    return IndexerFlagApi(dio);
  }

  /// Get LanguageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LanguageApi getLanguageApi() {
    return LanguageApi(dio);
  }

  /// Get LanguageProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LanguageProfileApi getLanguageProfileApi() {
    return LanguageProfileApi(dio);
  }

  /// Get LanguageProfileSchemaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LanguageProfileSchemaApi getLanguageProfileSchemaApi() {
    return LanguageProfileSchemaApi(dio);
  }

  /// Get LocalizationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LocalizationApi getLocalizationApi() {
    return LocalizationApi(dio);
  }

  /// Get LogApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LogApi getLogApi() {
    return LogApi(dio);
  }

  /// Get LogFileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LogFileApi getLogFileApi() {
    return LogFileApi(dio);
  }

  /// Get ManualImportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ManualImportApi getManualImportApi() {
    return ManualImportApi(dio);
  }

  /// Get MediaCoverApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MediaCoverApi getMediaCoverApi() {
    return MediaCoverApi(dio);
  }

  /// Get MediaManagementConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MediaManagementConfigApi getMediaManagementConfigApi() {
    return MediaManagementConfigApi(dio);
  }

  /// Get MetadataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MetadataApi getMetadataApi() {
    return MetadataApi(dio);
  }

  /// Get MissingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MissingApi getMissingApi() {
    return MissingApi(dio);
  }

  /// Get NamingConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NamingConfigApi getNamingConfigApi() {
    return NamingConfigApi(dio);
  }

  /// Get NotificationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationApi getNotificationApi() {
    return NotificationApi(dio);
  }

  /// Get ParseApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ParseApi getParseApi() {
    return ParseApi(dio);
  }

  /// Get PingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PingApi getPingApi() {
    return PingApi(dio);
  }

  /// Get QualityDefinitionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QualityDefinitionApi getQualityDefinitionApi() {
    return QualityDefinitionApi(dio);
  }

  /// Get QualityProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QualityProfileApi getQualityProfileApi() {
    return QualityProfileApi(dio);
  }

  /// Get QualityProfileSchemaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QualityProfileSchemaApi getQualityProfileSchemaApi() {
    return QualityProfileSchemaApi(dio);
  }

  /// Get QueueApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueApi getQueueApi() {
    return QueueApi(dio);
  }

  /// Get QueueActionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueActionApi getQueueActionApi() {
    return QueueActionApi(dio);
  }

  /// Get QueueDetailsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueDetailsApi getQueueDetailsApi() {
    return QueueDetailsApi(dio);
  }

  /// Get QueueStatusApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueStatusApi getQueueStatusApi() {
    return QueueStatusApi(dio);
  }

  /// Get ReleaseApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReleaseApi getReleaseApi() {
    return ReleaseApi(dio);
  }

  /// Get ReleaseProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReleaseProfileApi getReleaseProfileApi() {
    return ReleaseProfileApi(dio);
  }

  /// Get ReleasePushApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReleasePushApi getReleasePushApi() {
    return ReleasePushApi(dio);
  }

  /// Get RemotePathMappingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RemotePathMappingApi getRemotePathMappingApi() {
    return RemotePathMappingApi(dio);
  }

  /// Get RenameEpisodeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RenameEpisodeApi getRenameEpisodeApi() {
    return RenameEpisodeApi(dio);
  }

  /// Get RootFolderApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RootFolderApi getRootFolderApi() {
    return RootFolderApi(dio);
  }

  /// Get SeasonPassApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeasonPassApi getSeasonPassApi() {
    return SeasonPassApi(dio);
  }

  /// Get SeriesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesApi getSeriesApi() {
    return SeriesApi(dio);
  }

  /// Get SeriesEditorApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesEditorApi getSeriesEditorApi() {
    return SeriesEditorApi(dio);
  }

  /// Get SeriesFolderApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesFolderApi getSeriesFolderApi() {
    return SeriesFolderApi(dio);
  }

  /// Get SeriesImportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesImportApi getSeriesImportApi() {
    return SeriesImportApi(dio);
  }

  /// Get SeriesLookupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesLookupApi getSeriesLookupApi() {
    return SeriesLookupApi(dio);
  }

  /// Get StaticResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StaticResourceApi getStaticResourceApi() {
    return StaticResourceApi(dio);
  }

  /// Get SystemApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SystemApi getSystemApi() {
    return SystemApi(dio);
  }

  /// Get TagApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TagApi getTagApi() {
    return TagApi(dio);
  }

  /// Get TagDetailsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TagDetailsApi getTagDetailsApi() {
    return TagDetailsApi(dio);
  }

  /// Get TaskApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TaskApi getTaskApi() {
    return TaskApi(dio);
  }

  /// Get UiConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UiConfigApi getUiConfigApi() {
    return UiConfigApi(dio);
  }

  /// Get UpdateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UpdateApi getUpdateApi() {
    return UpdateApi(dio);
  }

  /// Get UpdateLogFileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UpdateLogFileApi getUpdateLogFileApi() {
    return UpdateLogFileApi(dio);
  }
}
