//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:sonarr/src/serializers.dart';
import 'package:sonarr/src/auth/api_key_auth.dart';
import 'package:sonarr/src/auth/basic_auth.dart';
import 'package:sonarr/src/auth/bearer_auth.dart';
import 'package:sonarr/src/auth/oauth.dart';
import 'package:sonarr/src/api/api_info_api.dart';
import 'package:sonarr/src/api/authentication_api.dart';
import 'package:sonarr/src/api/auto_tagging_api.dart';
import 'package:sonarr/src/api/backup_api.dart';
import 'package:sonarr/src/api/blocklist_api.dart';
import 'package:sonarr/src/api/calendar_api.dart';
import 'package:sonarr/src/api/calendar_feed_api.dart';
import 'package:sonarr/src/api/command_api.dart';
import 'package:sonarr/src/api/custom_filter_api.dart';
import 'package:sonarr/src/api/custom_format_api.dart';
import 'package:sonarr/src/api/cutoff_api.dart';
import 'package:sonarr/src/api/delay_profile_api.dart';
import 'package:sonarr/src/api/disk_space_api.dart';
import 'package:sonarr/src/api/download_client_api.dart';
import 'package:sonarr/src/api/download_client_config_api.dart';
import 'package:sonarr/src/api/episode_api.dart';
import 'package:sonarr/src/api/episode_file_api.dart';
import 'package:sonarr/src/api/file_system_api.dart';
import 'package:sonarr/src/api/health_api.dart';
import 'package:sonarr/src/api/history_api.dart';
import 'package:sonarr/src/api/host_config_api.dart';
import 'package:sonarr/src/api/import_list_api.dart';
import 'package:sonarr/src/api/import_list_config_api.dart';
import 'package:sonarr/src/api/import_list_exclusion_api.dart';
import 'package:sonarr/src/api/indexer_api.dart';
import 'package:sonarr/src/api/indexer_config_api.dart';
import 'package:sonarr/src/api/indexer_flag_api.dart';
import 'package:sonarr/src/api/language_api.dart';
import 'package:sonarr/src/api/language_profile_api.dart';
import 'package:sonarr/src/api/language_profile_schema_api.dart';
import 'package:sonarr/src/api/localization_api.dart';
import 'package:sonarr/src/api/log_api.dart';
import 'package:sonarr/src/api/log_file_api.dart';
import 'package:sonarr/src/api/manual_import_api.dart';
import 'package:sonarr/src/api/media_cover_api.dart';
import 'package:sonarr/src/api/media_management_config_api.dart';
import 'package:sonarr/src/api/metadata_api.dart';
import 'package:sonarr/src/api/missing_api.dart';
import 'package:sonarr/src/api/naming_config_api.dart';
import 'package:sonarr/src/api/notification_api.dart';
import 'package:sonarr/src/api/parse_api.dart';
import 'package:sonarr/src/api/ping_api.dart';
import 'package:sonarr/src/api/quality_definition_api.dart';
import 'package:sonarr/src/api/quality_profile_api.dart';
import 'package:sonarr/src/api/quality_profile_schema_api.dart';
import 'package:sonarr/src/api/queue_api.dart';
import 'package:sonarr/src/api/queue_action_api.dart';
import 'package:sonarr/src/api/queue_details_api.dart';
import 'package:sonarr/src/api/queue_status_api.dart';
import 'package:sonarr/src/api/release_api.dart';
import 'package:sonarr/src/api/release_profile_api.dart';
import 'package:sonarr/src/api/release_push_api.dart';
import 'package:sonarr/src/api/remote_path_mapping_api.dart';
import 'package:sonarr/src/api/rename_episode_api.dart';
import 'package:sonarr/src/api/root_folder_api.dart';
import 'package:sonarr/src/api/season_pass_api.dart';
import 'package:sonarr/src/api/series_api.dart';
import 'package:sonarr/src/api/series_editor_api.dart';
import 'package:sonarr/src/api/series_folder_api.dart';
import 'package:sonarr/src/api/series_import_api.dart';
import 'package:sonarr/src/api/series_lookup_api.dart';
import 'package:sonarr/src/api/static_resource_api.dart';
import 'package:sonarr/src/api/system_api.dart';
import 'package:sonarr/src/api/tag_api.dart';
import 'package:sonarr/src/api/tag_details_api.dart';
import 'package:sonarr/src/api/task_api.dart';
import 'package:sonarr/src/api/ui_config_api.dart';
import 'package:sonarr/src/api/update_api.dart';
import 'package:sonarr/src/api/update_log_file_api.dart';

class Sonarr {
  static const String basePath = r'http://localhost:8989';

  final Dio dio;
  final Serializers serializers;

  Sonarr({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
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
          .tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
              as BearerAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this
                  .dio
                  .interceptors
                  .firstWhere((element) => element is ApiKeyAuthInterceptor)
              as ApiKeyAuthInterceptor)
          .apiKeys[name] = apiKey;
    }
  }

  /// Get ApiInfoApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApiInfoApi getApiInfoApi() {
    return ApiInfoApi(dio, serializers);
  }

  /// Get AuthenticationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthenticationApi getAuthenticationApi() {
    return AuthenticationApi(dio, serializers);
  }

  /// Get AutoTaggingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AutoTaggingApi getAutoTaggingApi() {
    return AutoTaggingApi(dio, serializers);
  }

  /// Get BackupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BackupApi getBackupApi() {
    return BackupApi(dio, serializers);
  }

  /// Get BlocklistApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BlocklistApi getBlocklistApi() {
    return BlocklistApi(dio, serializers);
  }

  /// Get CalendarApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CalendarApi getCalendarApi() {
    return CalendarApi(dio, serializers);
  }

  /// Get CalendarFeedApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CalendarFeedApi getCalendarFeedApi() {
    return CalendarFeedApi(dio, serializers);
  }

  /// Get CommandApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CommandApi getCommandApi() {
    return CommandApi(dio, serializers);
  }

  /// Get CustomFilterApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomFilterApi getCustomFilterApi() {
    return CustomFilterApi(dio, serializers);
  }

  /// Get CustomFormatApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CustomFormatApi getCustomFormatApi() {
    return CustomFormatApi(dio, serializers);
  }

  /// Get CutoffApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CutoffApi getCutoffApi() {
    return CutoffApi(dio, serializers);
  }

  /// Get DelayProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DelayProfileApi getDelayProfileApi() {
    return DelayProfileApi(dio, serializers);
  }

  /// Get DiskSpaceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DiskSpaceApi getDiskSpaceApi() {
    return DiskSpaceApi(dio, serializers);
  }

  /// Get DownloadClientApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DownloadClientApi getDownloadClientApi() {
    return DownloadClientApi(dio, serializers);
  }

  /// Get DownloadClientConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DownloadClientConfigApi getDownloadClientConfigApi() {
    return DownloadClientConfigApi(dio, serializers);
  }

  /// Get EpisodeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EpisodeApi getEpisodeApi() {
    return EpisodeApi(dio, serializers);
  }

  /// Get EpisodeFileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EpisodeFileApi getEpisodeFileApi() {
    return EpisodeFileApi(dio, serializers);
  }

  /// Get FileSystemApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FileSystemApi getFileSystemApi() {
    return FileSystemApi(dio, serializers);
  }

  /// Get HealthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HealthApi getHealthApi() {
    return HealthApi(dio, serializers);
  }

  /// Get HistoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HistoryApi getHistoryApi() {
    return HistoryApi(dio, serializers);
  }

  /// Get HostConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HostConfigApi getHostConfigApi() {
    return HostConfigApi(dio, serializers);
  }

  /// Get ImportListApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImportListApi getImportListApi() {
    return ImportListApi(dio, serializers);
  }

  /// Get ImportListConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImportListConfigApi getImportListConfigApi() {
    return ImportListConfigApi(dio, serializers);
  }

  /// Get ImportListExclusionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImportListExclusionApi getImportListExclusionApi() {
    return ImportListExclusionApi(dio, serializers);
  }

  /// Get IndexerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IndexerApi getIndexerApi() {
    return IndexerApi(dio, serializers);
  }

  /// Get IndexerConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IndexerConfigApi getIndexerConfigApi() {
    return IndexerConfigApi(dio, serializers);
  }

  /// Get IndexerFlagApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IndexerFlagApi getIndexerFlagApi() {
    return IndexerFlagApi(dio, serializers);
  }

  /// Get LanguageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LanguageApi getLanguageApi() {
    return LanguageApi(dio, serializers);
  }

  /// Get LanguageProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LanguageProfileApi getLanguageProfileApi() {
    return LanguageProfileApi(dio, serializers);
  }

  /// Get LanguageProfileSchemaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LanguageProfileSchemaApi getLanguageProfileSchemaApi() {
    return LanguageProfileSchemaApi(dio, serializers);
  }

  /// Get LocalizationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LocalizationApi getLocalizationApi() {
    return LocalizationApi(dio, serializers);
  }

  /// Get LogApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LogApi getLogApi() {
    return LogApi(dio, serializers);
  }

  /// Get LogFileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LogFileApi getLogFileApi() {
    return LogFileApi(dio, serializers);
  }

  /// Get ManualImportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ManualImportApi getManualImportApi() {
    return ManualImportApi(dio, serializers);
  }

  /// Get MediaCoverApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MediaCoverApi getMediaCoverApi() {
    return MediaCoverApi(dio, serializers);
  }

  /// Get MediaManagementConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MediaManagementConfigApi getMediaManagementConfigApi() {
    return MediaManagementConfigApi(dio, serializers);
  }

  /// Get MetadataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MetadataApi getMetadataApi() {
    return MetadataApi(dio, serializers);
  }

  /// Get MissingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MissingApi getMissingApi() {
    return MissingApi(dio, serializers);
  }

  /// Get NamingConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NamingConfigApi getNamingConfigApi() {
    return NamingConfigApi(dio, serializers);
  }

  /// Get NotificationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationApi getNotificationApi() {
    return NotificationApi(dio, serializers);
  }

  /// Get ParseApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ParseApi getParseApi() {
    return ParseApi(dio, serializers);
  }

  /// Get PingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PingApi getPingApi() {
    return PingApi(dio, serializers);
  }

  /// Get QualityDefinitionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QualityDefinitionApi getQualityDefinitionApi() {
    return QualityDefinitionApi(dio, serializers);
  }

  /// Get QualityProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QualityProfileApi getQualityProfileApi() {
    return QualityProfileApi(dio, serializers);
  }

  /// Get QualityProfileSchemaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QualityProfileSchemaApi getQualityProfileSchemaApi() {
    return QualityProfileSchemaApi(dio, serializers);
  }

  /// Get QueueApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueApi getQueueApi() {
    return QueueApi(dio, serializers);
  }

  /// Get QueueActionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueActionApi getQueueActionApi() {
    return QueueActionApi(dio, serializers);
  }

  /// Get QueueDetailsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueDetailsApi getQueueDetailsApi() {
    return QueueDetailsApi(dio, serializers);
  }

  /// Get QueueStatusApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueStatusApi getQueueStatusApi() {
    return QueueStatusApi(dio, serializers);
  }

  /// Get ReleaseApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReleaseApi getReleaseApi() {
    return ReleaseApi(dio, serializers);
  }

  /// Get ReleaseProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReleaseProfileApi getReleaseProfileApi() {
    return ReleaseProfileApi(dio, serializers);
  }

  /// Get ReleasePushApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReleasePushApi getReleasePushApi() {
    return ReleasePushApi(dio, serializers);
  }

  /// Get RemotePathMappingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RemotePathMappingApi getRemotePathMappingApi() {
    return RemotePathMappingApi(dio, serializers);
  }

  /// Get RenameEpisodeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RenameEpisodeApi getRenameEpisodeApi() {
    return RenameEpisodeApi(dio, serializers);
  }

  /// Get RootFolderApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RootFolderApi getRootFolderApi() {
    return RootFolderApi(dio, serializers);
  }

  /// Get SeasonPassApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeasonPassApi getSeasonPassApi() {
    return SeasonPassApi(dio, serializers);
  }

  /// Get SeriesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesApi getSeriesApi() {
    return SeriesApi(dio, serializers);
  }

  /// Get SeriesEditorApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesEditorApi getSeriesEditorApi() {
    return SeriesEditorApi(dio, serializers);
  }

  /// Get SeriesFolderApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesFolderApi getSeriesFolderApi() {
    return SeriesFolderApi(dio, serializers);
  }

  /// Get SeriesImportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesImportApi getSeriesImportApi() {
    return SeriesImportApi(dio, serializers);
  }

  /// Get SeriesLookupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesLookupApi getSeriesLookupApi() {
    return SeriesLookupApi(dio, serializers);
  }

  /// Get StaticResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StaticResourceApi getStaticResourceApi() {
    return StaticResourceApi(dio, serializers);
  }

  /// Get SystemApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SystemApi getSystemApi() {
    return SystemApi(dio, serializers);
  }

  /// Get TagApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TagApi getTagApi() {
    return TagApi(dio, serializers);
  }

  /// Get TagDetailsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TagDetailsApi getTagDetailsApi() {
    return TagDetailsApi(dio, serializers);
  }

  /// Get TaskApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TaskApi getTaskApi() {
    return TaskApi(dio, serializers);
  }

  /// Get UiConfigApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UiConfigApi getUiConfigApi() {
    return UiConfigApi(dio, serializers);
  }

  /// Get UpdateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UpdateApi getUpdateApi() {
    return UpdateApi(dio, serializers);
  }

  /// Get UpdateLogFileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UpdateLogFileApi getUpdateLogFileApi() {
    return UpdateLogFileApi(dio, serializers);
  }
}
