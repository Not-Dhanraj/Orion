//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:jelly_api/lib/auth/api_key_auth.dart';
import 'package:jelly_api/lib/auth/basic_auth.dart';
import 'package:jelly_api/lib/auth/bearer_auth.dart';
import 'package:jelly_api/lib/auth/oauth.dart';
import 'package:jelly_api/lib/api/activity_log_api.dart';
import 'package:jelly_api/lib/api/api_key_api.dart';
import 'package:jelly_api/lib/api/artists_api.dart';
import 'package:jelly_api/lib/api/audio_api.dart';
import 'package:jelly_api/lib/api/backup_api.dart';
import 'package:jelly_api/lib/api/branding_api.dart';
import 'package:jelly_api/lib/api/channels_api.dart';
import 'package:jelly_api/lib/api/client_log_api.dart';
import 'package:jelly_api/lib/api/collection_api.dart';
import 'package:jelly_api/lib/api/configuration_api.dart';
import 'package:jelly_api/lib/api/dashboard_api.dart';
import 'package:jelly_api/lib/api/devices_api.dart';
import 'package:jelly_api/lib/api/display_preferences_api.dart';
import 'package:jelly_api/lib/api/dynamic_hls_api.dart';
import 'package:jelly_api/lib/api/environment_api.dart';
import 'package:jelly_api/lib/api/filter_api.dart';
import 'package:jelly_api/lib/api/genres_api.dart';
import 'package:jelly_api/lib/api/hls_segment_api.dart';
import 'package:jelly_api/lib/api/image_api.dart';
import 'package:jelly_api/lib/api/instant_mix_api.dart';
import 'package:jelly_api/lib/api/item_lookup_api.dart';
import 'package:jelly_api/lib/api/item_refresh_api.dart';
import 'package:jelly_api/lib/api/item_update_api.dart';
import 'package:jelly_api/lib/api/items_api.dart';
import 'package:jelly_api/lib/api/library_api.dart';
import 'package:jelly_api/lib/api/library_structure_api.dart';
import 'package:jelly_api/lib/api/live_tv_api.dart';
import 'package:jelly_api/lib/api/localization_api.dart';
import 'package:jelly_api/lib/api/lyrics_api.dart';
import 'package:jelly_api/lib/api/media_info_api.dart';
import 'package:jelly_api/lib/api/media_segments_api.dart';
import 'package:jelly_api/lib/api/movies_api.dart';
import 'package:jelly_api/lib/api/music_genres_api.dart';
import 'package:jelly_api/lib/api/package_api.dart';
import 'package:jelly_api/lib/api/persons_api.dart';
import 'package:jelly_api/lib/api/playlists_api.dart';
import 'package:jelly_api/lib/api/playstate_api.dart';
import 'package:jelly_api/lib/api/plugins_api.dart';
import 'package:jelly_api/lib/api/quick_connect_api.dart';
import 'package:jelly_api/lib/api/remote_image_api.dart';
import 'package:jelly_api/lib/api/scheduled_tasks_api.dart';
import 'package:jelly_api/lib/api/search_api.dart';
import 'package:jelly_api/lib/api/session_api.dart';
import 'package:jelly_api/lib/api/startup_api.dart';
import 'package:jelly_api/lib/api/studios_api.dart';
import 'package:jelly_api/lib/api/subtitle_api.dart';
import 'package:jelly_api/lib/api/suggestions_api.dart';
import 'package:jelly_api/lib/api/sync_play_api.dart';
import 'package:jelly_api/lib/api/system_api.dart';
import 'package:jelly_api/lib/api/time_sync_api.dart';
import 'package:jelly_api/lib/api/tmdb_api.dart';
import 'package:jelly_api/lib/api/trailers_api.dart';
import 'package:jelly_api/lib/api/trickplay_api.dart';
import 'package:jelly_api/lib/api/tv_shows_api.dart';
import 'package:jelly_api/lib/api/universal_audio_api.dart';
import 'package:jelly_api/lib/api/user_api.dart';
import 'package:jelly_api/lib/api/user_library_api.dart';
import 'package:jelly_api/lib/api/user_views_api.dart';
import 'package:jelly_api/lib/api/video_attachments_api.dart';
import 'package:jelly_api/lib/api/videos_api.dart';
import 'package:jelly_api/lib/api/years_api.dart';

class JellyApi {
  static const String basePath = r'http://localhost';

  final Dio dio;
  JellyApi({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : 
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
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get ActivityLogApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ActivityLogApi getActivityLogApi() {
    return ActivityLogApi(dio);
  }

  /// Get ApiKeyApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApiKeyApi getApiKeyApi() {
    return ApiKeyApi(dio);
  }

  /// Get ArtistsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ArtistsApi getArtistsApi() {
    return ArtistsApi(dio);
  }

  /// Get AudioApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AudioApi getAudioApi() {
    return AudioApi(dio);
  }

  /// Get BackupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BackupApi getBackupApi() {
    return BackupApi(dio);
  }

  /// Get BrandingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BrandingApi getBrandingApi() {
    return BrandingApi(dio);
  }

  /// Get ChannelsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ChannelsApi getChannelsApi() {
    return ChannelsApi(dio);
  }

  /// Get ClientLogApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ClientLogApi getClientLogApi() {
    return ClientLogApi(dio);
  }

  /// Get CollectionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CollectionApi getCollectionApi() {
    return CollectionApi(dio);
  }

  /// Get ConfigurationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConfigurationApi getConfigurationApi() {
    return ConfigurationApi(dio);
  }

  /// Get DashboardApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DashboardApi getDashboardApi() {
    return DashboardApi(dio);
  }

  /// Get DevicesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DevicesApi getDevicesApi() {
    return DevicesApi(dio);
  }

  /// Get DisplayPreferencesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DisplayPreferencesApi getDisplayPreferencesApi() {
    return DisplayPreferencesApi(dio);
  }

  /// Get DynamicHlsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DynamicHlsApi getDynamicHlsApi() {
    return DynamicHlsApi(dio);
  }

  /// Get EnvironmentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EnvironmentApi getEnvironmentApi() {
    return EnvironmentApi(dio);
  }

  /// Get FilterApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FilterApi getFilterApi() {
    return FilterApi(dio);
  }

  /// Get GenresApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GenresApi getGenresApi() {
    return GenresApi(dio);
  }

  /// Get HlsSegmentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HlsSegmentApi getHlsSegmentApi() {
    return HlsSegmentApi(dio);
  }

  /// Get ImageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ImageApi getImageApi() {
    return ImageApi(dio);
  }

  /// Get InstantMixApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InstantMixApi getInstantMixApi() {
    return InstantMixApi(dio);
  }

  /// Get ItemLookupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ItemLookupApi getItemLookupApi() {
    return ItemLookupApi(dio);
  }

  /// Get ItemRefreshApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ItemRefreshApi getItemRefreshApi() {
    return ItemRefreshApi(dio);
  }

  /// Get ItemUpdateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ItemUpdateApi getItemUpdateApi() {
    return ItemUpdateApi(dio);
  }

  /// Get ItemsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ItemsApi getItemsApi() {
    return ItemsApi(dio);
  }

  /// Get LibraryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LibraryApi getLibraryApi() {
    return LibraryApi(dio);
  }

  /// Get LibraryStructureApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LibraryStructureApi getLibraryStructureApi() {
    return LibraryStructureApi(dio);
  }

  /// Get LiveTvApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LiveTvApi getLiveTvApi() {
    return LiveTvApi(dio);
  }

  /// Get LocalizationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LocalizationApi getLocalizationApi() {
    return LocalizationApi(dio);
  }

  /// Get LyricsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LyricsApi getLyricsApi() {
    return LyricsApi(dio);
  }

  /// Get MediaInfoApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MediaInfoApi getMediaInfoApi() {
    return MediaInfoApi(dio);
  }

  /// Get MediaSegmentsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MediaSegmentsApi getMediaSegmentsApi() {
    return MediaSegmentsApi(dio);
  }

  /// Get MoviesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MoviesApi getMoviesApi() {
    return MoviesApi(dio);
  }

  /// Get MusicGenresApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MusicGenresApi getMusicGenresApi() {
    return MusicGenresApi(dio);
  }

  /// Get PackageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PackageApi getPackageApi() {
    return PackageApi(dio);
  }

  /// Get PersonsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PersonsApi getPersonsApi() {
    return PersonsApi(dio);
  }

  /// Get PlaylistsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PlaylistsApi getPlaylistsApi() {
    return PlaylistsApi(dio);
  }

  /// Get PlaystateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PlaystateApi getPlaystateApi() {
    return PlaystateApi(dio);
  }

  /// Get PluginsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PluginsApi getPluginsApi() {
    return PluginsApi(dio);
  }

  /// Get QuickConnectApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QuickConnectApi getQuickConnectApi() {
    return QuickConnectApi(dio);
  }

  /// Get RemoteImageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RemoteImageApi getRemoteImageApi() {
    return RemoteImageApi(dio);
  }

  /// Get ScheduledTasksApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ScheduledTasksApi getScheduledTasksApi() {
    return ScheduledTasksApi(dio);
  }

  /// Get SearchApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SearchApi getSearchApi() {
    return SearchApi(dio);
  }

  /// Get SessionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SessionApi getSessionApi() {
    return SessionApi(dio);
  }

  /// Get StartupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StartupApi getStartupApi() {
    return StartupApi(dio);
  }

  /// Get StudiosApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StudiosApi getStudiosApi() {
    return StudiosApi(dio);
  }

  /// Get SubtitleApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SubtitleApi getSubtitleApi() {
    return SubtitleApi(dio);
  }

  /// Get SuggestionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SuggestionsApi getSuggestionsApi() {
    return SuggestionsApi(dio);
  }

  /// Get SyncPlayApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SyncPlayApi getSyncPlayApi() {
    return SyncPlayApi(dio);
  }

  /// Get SystemApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SystemApi getSystemApi() {
    return SystemApi(dio);
  }

  /// Get TimeSyncApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TimeSyncApi getTimeSyncApi() {
    return TimeSyncApi(dio);
  }

  /// Get TmdbApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TmdbApi getTmdbApi() {
    return TmdbApi(dio);
  }

  /// Get TrailersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TrailersApi getTrailersApi() {
    return TrailersApi(dio);
  }

  /// Get TrickplayApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TrickplayApi getTrickplayApi() {
    return TrickplayApi(dio);
  }

  /// Get TvShowsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TvShowsApi getTvShowsApi() {
    return TvShowsApi(dio);
  }

  /// Get UniversalAudioApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UniversalAudioApi getUniversalAudioApi() {
    return UniversalAudioApi(dio);
  }

  /// Get UserApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserApi getUserApi() {
    return UserApi(dio);
  }

  /// Get UserLibraryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserLibraryApi getUserLibraryApi() {
    return UserLibraryApi(dio);
  }

  /// Get UserViewsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserViewsApi getUserViewsApi() {
    return UserViewsApi(dio);
  }

  /// Get VideoAttachmentsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VideoAttachmentsApi getVideoAttachmentsApi() {
    return VideoAttachmentsApi(dio);
  }

  /// Get VideosApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VideosApi getVideosApi() {
    return VideosApi(dio);
  }

  /// Get YearsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  YearsApi getYearsApi() {
    return YearsApi(dio);
  }
}
