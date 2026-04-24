import 'package:jelly_api/lib/model/access_schedule.dart';
import 'package:jelly_api/lib/model/activity_log_entry.dart';
import 'package:jelly_api/lib/model/activity_log_entry_message.dart';
import 'package:jelly_api/lib/model/activity_log_entry_query_result.dart';
import 'package:jelly_api/lib/model/activity_log_entry_start_message.dart';
import 'package:jelly_api/lib/model/activity_log_entry_stop_message.dart';
import 'package:jelly_api/lib/model/add_virtual_folder_dto.dart';
import 'package:jelly_api/lib/model/album_info.dart';
import 'package:jelly_api/lib/model/album_info_remote_search_query.dart';
import 'package:jelly_api/lib/model/all_theme_media_result.dart';
import 'package:jelly_api/lib/model/artist_info.dart';
import 'package:jelly_api/lib/model/artist_info_remote_search_query.dart';
import 'package:jelly_api/lib/model/authenticate_user_by_name.dart';
import 'package:jelly_api/lib/model/authentication_info.dart';
import 'package:jelly_api/lib/model/authentication_info_query_result.dart';
import 'package:jelly_api/lib/model/authentication_result.dart';
import 'package:jelly_api/lib/model/backup_manifest_dto.dart';
import 'package:jelly_api/lib/model/backup_options_dto.dart';
import 'package:jelly_api/lib/model/backup_restore_request_dto.dart';
import 'package:jelly_api/lib/model/base_item_dto.dart';
import 'package:jelly_api/lib/model/base_item_dto_image_blur_hashes.dart';
import 'package:jelly_api/lib/model/base_item_dto_query_result.dart';
import 'package:jelly_api/lib/model/base_item_person.dart';
import 'package:jelly_api/lib/model/base_item_person_image_blur_hashes.dart';
import 'package:jelly_api/lib/model/book_info.dart';
import 'package:jelly_api/lib/model/book_info_remote_search_query.dart';
import 'package:jelly_api/lib/model/box_set_info.dart';
import 'package:jelly_api/lib/model/box_set_info_remote_search_query.dart';
import 'package:jelly_api/lib/model/branding_options_dto.dart';
import 'package:jelly_api/lib/model/buffer_request_dto.dart';
import 'package:jelly_api/lib/model/cast_receiver_application.dart';
import 'package:jelly_api/lib/model/channel_features.dart';
import 'package:jelly_api/lib/model/channel_mapping_options_dto.dart';
import 'package:jelly_api/lib/model/chapter_info.dart';
import 'package:jelly_api/lib/model/client_capabilities_dto.dart';
import 'package:jelly_api/lib/model/client_log_document_response_dto.dart';
import 'package:jelly_api/lib/model/codec_profile.dart';
import 'package:jelly_api/lib/model/collection_creation_result.dart';
import 'package:jelly_api/lib/model/config_image_types.dart';
import 'package:jelly_api/lib/model/configuration_page_info.dart';
import 'package:jelly_api/lib/model/container_profile.dart';
import 'package:jelly_api/lib/model/country_info.dart';
import 'package:jelly_api/lib/model/create_playlist_dto.dart';
import 'package:jelly_api/lib/model/create_user_by_name.dart';
import 'package:jelly_api/lib/model/culture_dto.dart';
import 'package:jelly_api/lib/model/custom_database_option.dart';
import 'package:jelly_api/lib/model/custom_database_options.dart';
import 'package:jelly_api/lib/model/database_configuration_options.dart';
import 'package:jelly_api/lib/model/default_directory_browser_info_dto.dart';
import 'package:jelly_api/lib/model/device_info_dto.dart';
import 'package:jelly_api/lib/model/device_info_dto_query_result.dart';
import 'package:jelly_api/lib/model/device_options_dto.dart';
import 'package:jelly_api/lib/model/device_profile.dart';
import 'package:jelly_api/lib/model/direct_play_profile.dart';
import 'package:jelly_api/lib/model/display_preferences_dto.dart';
import 'package:jelly_api/lib/model/encoding_options.dart';
import 'package:jelly_api/lib/model/end_point_info.dart';
import 'package:jelly_api/lib/model/external_id_info.dart';
import 'package:jelly_api/lib/model/external_url.dart';
import 'package:jelly_api/lib/model/file_system_entry_info.dart';
import 'package:jelly_api/lib/model/folder_storage_dto.dart';
import 'package:jelly_api/lib/model/font_file.dart';
import 'package:jelly_api/lib/model/force_keep_alive_message.dart';
import 'package:jelly_api/lib/model/forgot_password_dto.dart';
import 'package:jelly_api/lib/model/forgot_password_pin_dto.dart';
import 'package:jelly_api/lib/model/forgot_password_result.dart';
import 'package:jelly_api/lib/model/general_command.dart';
import 'package:jelly_api/lib/model/general_command_message.dart';
import 'package:jelly_api/lib/model/get_programs_dto.dart';
import 'package:jelly_api/lib/model/group_info_dto.dart';
import 'package:jelly_api/lib/model/group_state_update.dart';
import 'package:jelly_api/lib/model/group_update.dart';
import 'package:jelly_api/lib/model/guide_info.dart';
import 'package:jelly_api/lib/model/i_plugin.dart';
import 'package:jelly_api/lib/model/ignore_wait_request_dto.dart';
import 'package:jelly_api/lib/model/image_info.dart';
import 'package:jelly_api/lib/model/image_option.dart';
import 'package:jelly_api/lib/model/image_provider_info.dart';
import 'package:jelly_api/lib/model/inbound_keep_alive_message.dart';
import 'package:jelly_api/lib/model/inbound_web_socket_message.dart';
import 'package:jelly_api/lib/model/installation_info.dart';
import 'package:jelly_api/lib/model/item_counts.dart';
import 'package:jelly_api/lib/model/join_group_request_dto.dart';
import 'package:jelly_api/lib/model/library_changed_message.dart';
import 'package:jelly_api/lib/model/library_option_info_dto.dart';
import 'package:jelly_api/lib/model/library_options.dart';
import 'package:jelly_api/lib/model/library_options_result_dto.dart';
import 'package:jelly_api/lib/model/library_storage_dto.dart';
import 'package:jelly_api/lib/model/library_type_options_dto.dart';
import 'package:jelly_api/lib/model/library_update_info.dart';
import 'package:jelly_api/lib/model/listings_provider_info.dart';
import 'package:jelly_api/lib/model/live_stream_response.dart';
import 'package:jelly_api/lib/model/live_tv_info.dart';
import 'package:jelly_api/lib/model/live_tv_options.dart';
import 'package:jelly_api/lib/model/live_tv_service_info.dart';
import 'package:jelly_api/lib/model/localization_option.dart';
import 'package:jelly_api/lib/model/log_file.dart';
import 'package:jelly_api/lib/model/lyric_dto.dart';
import 'package:jelly_api/lib/model/lyric_line.dart';
import 'package:jelly_api/lib/model/lyric_line_cue.dart';
import 'package:jelly_api/lib/model/lyric_metadata.dart';
import 'package:jelly_api/lib/model/media_attachment.dart';
import 'package:jelly_api/lib/model/media_path_dto.dart';
import 'package:jelly_api/lib/model/media_path_info.dart';
import 'package:jelly_api/lib/model/media_segment_dto.dart';
import 'package:jelly_api/lib/model/media_segment_dto_query_result.dart';
import 'package:jelly_api/lib/model/media_source_info.dart';
import 'package:jelly_api/lib/model/media_stream.dart';
import 'package:jelly_api/lib/model/media_update_info_dto.dart';
import 'package:jelly_api/lib/model/media_update_info_path_dto.dart';
import 'package:jelly_api/lib/model/media_url.dart';
import 'package:jelly_api/lib/model/message_command.dart';
import 'package:jelly_api/lib/model/metadata_configuration.dart';
import 'package:jelly_api/lib/model/metadata_editor_info.dart';
import 'package:jelly_api/lib/model/metadata_options.dart';
import 'package:jelly_api/lib/model/move_playlist_item_request_dto.dart';
import 'package:jelly_api/lib/model/movie_info.dart';
import 'package:jelly_api/lib/model/movie_info_remote_search_query.dart';
import 'package:jelly_api/lib/model/music_video_info.dart';
import 'package:jelly_api/lib/model/music_video_info_remote_search_query.dart';
import 'package:jelly_api/lib/model/name_guid_pair.dart';
import 'package:jelly_api/lib/model/name_id_pair.dart';
import 'package:jelly_api/lib/model/name_value_pair.dart';
import 'package:jelly_api/lib/model/network_configuration.dart';
import 'package:jelly_api/lib/model/new_group_request_dto.dart';
import 'package:jelly_api/lib/model/next_item_request_dto.dart';
import 'package:jelly_api/lib/model/open_live_stream_dto.dart';
import 'package:jelly_api/lib/model/outbound_keep_alive_message.dart';
import 'package:jelly_api/lib/model/outbound_web_socket_message.dart';
import 'package:jelly_api/lib/model/package_info.dart';
import 'package:jelly_api/lib/model/parental_rating.dart';
import 'package:jelly_api/lib/model/parental_rating_score.dart';
import 'package:jelly_api/lib/model/path_substitution.dart';
import 'package:jelly_api/lib/model/person_lookup_info.dart';
import 'package:jelly_api/lib/model/person_lookup_info_remote_search_query.dart';
import 'package:jelly_api/lib/model/pin_redeem_result.dart';
import 'package:jelly_api/lib/model/ping_request_dto.dart';
import 'package:jelly_api/lib/model/play_message.dart';
import 'package:jelly_api/lib/model/play_queue_update.dart';
import 'package:jelly_api/lib/model/play_request.dart';
import 'package:jelly_api/lib/model/play_request_dto.dart';
import 'package:jelly_api/lib/model/playback_info_dto.dart';
import 'package:jelly_api/lib/model/playback_info_response.dart';
import 'package:jelly_api/lib/model/playback_progress_info.dart';
import 'package:jelly_api/lib/model/playback_start_info.dart';
import 'package:jelly_api/lib/model/playback_stop_info.dart';
import 'package:jelly_api/lib/model/player_state_info.dart';
import 'package:jelly_api/lib/model/playlist_creation_result.dart';
import 'package:jelly_api/lib/model/playlist_dto.dart';
import 'package:jelly_api/lib/model/playlist_user_permissions.dart';
import 'package:jelly_api/lib/model/playstate_message.dart';
import 'package:jelly_api/lib/model/playstate_request.dart';
import 'package:jelly_api/lib/model/plugin_info.dart';
import 'package:jelly_api/lib/model/plugin_installation_cancelled_message.dart';
import 'package:jelly_api/lib/model/plugin_installation_completed_message.dart';
import 'package:jelly_api/lib/model/plugin_installation_failed_message.dart';
import 'package:jelly_api/lib/model/plugin_installing_message.dart';
import 'package:jelly_api/lib/model/plugin_uninstalled_message.dart';
import 'package:jelly_api/lib/model/previous_item_request_dto.dart';
import 'package:jelly_api/lib/model/problem_details.dart';
import 'package:jelly_api/lib/model/profile_condition.dart';
import 'package:jelly_api/lib/model/public_system_info.dart';
import 'package:jelly_api/lib/model/query_filters.dart';
import 'package:jelly_api/lib/model/query_filters_legacy.dart';
import 'package:jelly_api/lib/model/queue_item.dart';
import 'package:jelly_api/lib/model/queue_request_dto.dart';
import 'package:jelly_api/lib/model/quick_connect_dto.dart';
import 'package:jelly_api/lib/model/quick_connect_result.dart';
import 'package:jelly_api/lib/model/ready_request_dto.dart';
import 'package:jelly_api/lib/model/recommendation_dto.dart';
import 'package:jelly_api/lib/model/refresh_progress_message.dart';
import 'package:jelly_api/lib/model/remote_image_info.dart';
import 'package:jelly_api/lib/model/remote_image_result.dart';
import 'package:jelly_api/lib/model/remote_lyric_info_dto.dart';
import 'package:jelly_api/lib/model/remote_search_result.dart';
import 'package:jelly_api/lib/model/remote_subtitle_info.dart';
import 'package:jelly_api/lib/model/remove_from_playlist_request_dto.dart';
import 'package:jelly_api/lib/model/repository_info.dart';
import 'package:jelly_api/lib/model/restart_required_message.dart';
import 'package:jelly_api/lib/model/scheduled_task_ended_message.dart';
import 'package:jelly_api/lib/model/scheduled_tasks_info_message.dart';
import 'package:jelly_api/lib/model/scheduled_tasks_info_start_message.dart';
import 'package:jelly_api/lib/model/scheduled_tasks_info_stop_message.dart';
import 'package:jelly_api/lib/model/search_hint.dart';
import 'package:jelly_api/lib/model/search_hint_result.dart';
import 'package:jelly_api/lib/model/seek_request_dto.dart';
import 'package:jelly_api/lib/model/send_command.dart';
import 'package:jelly_api/lib/model/series_info.dart';
import 'package:jelly_api/lib/model/series_info_remote_search_query.dart';
import 'package:jelly_api/lib/model/series_timer_cancelled_message.dart';
import 'package:jelly_api/lib/model/series_timer_created_message.dart';
import 'package:jelly_api/lib/model/series_timer_info_dto.dart';
import 'package:jelly_api/lib/model/series_timer_info_dto_query_result.dart';
import 'package:jelly_api/lib/model/server_configuration.dart';
import 'package:jelly_api/lib/model/server_discovery_info.dart';
import 'package:jelly_api/lib/model/server_restarting_message.dart';
import 'package:jelly_api/lib/model/server_shutting_down_message.dart';
import 'package:jelly_api/lib/model/session_info_dto.dart';
import 'package:jelly_api/lib/model/session_user_info.dart';
import 'package:jelly_api/lib/model/sessions_message.dart';
import 'package:jelly_api/lib/model/sessions_start_message.dart';
import 'package:jelly_api/lib/model/sessions_stop_message.dart';
import 'package:jelly_api/lib/model/set_channel_mapping_dto.dart';
import 'package:jelly_api/lib/model/set_playlist_item_request_dto.dart';
import 'package:jelly_api/lib/model/set_repeat_mode_request_dto.dart';
import 'package:jelly_api/lib/model/set_shuffle_mode_request_dto.dart';
import 'package:jelly_api/lib/model/song_info.dart';
import 'package:jelly_api/lib/model/special_view_option_dto.dart';
import 'package:jelly_api/lib/model/startup_configuration_dto.dart';
import 'package:jelly_api/lib/model/startup_remote_access_dto.dart';
import 'package:jelly_api/lib/model/startup_user_dto.dart';
import 'package:jelly_api/lib/model/subtitle_options.dart';
import 'package:jelly_api/lib/model/subtitle_profile.dart';
import 'package:jelly_api/lib/model/sync_play_command_message.dart';
import 'package:jelly_api/lib/model/sync_play_group_does_not_exist_update.dart';
import 'package:jelly_api/lib/model/sync_play_group_joined_update.dart';
import 'package:jelly_api/lib/model/sync_play_group_left_update.dart';
import 'package:jelly_api/lib/model/sync_play_group_update_message.dart';
import 'package:jelly_api/lib/model/sync_play_library_access_denied_update.dart';
import 'package:jelly_api/lib/model/sync_play_not_in_group_update.dart';
import 'package:jelly_api/lib/model/sync_play_play_queue_update.dart';
import 'package:jelly_api/lib/model/sync_play_queue_item.dart';
import 'package:jelly_api/lib/model/sync_play_state_update.dart';
import 'package:jelly_api/lib/model/sync_play_user_joined_update.dart';
import 'package:jelly_api/lib/model/sync_play_user_left_update.dart';
import 'package:jelly_api/lib/model/system_info.dart';
import 'package:jelly_api/lib/model/system_storage_dto.dart';
import 'package:jelly_api/lib/model/task_info.dart';
import 'package:jelly_api/lib/model/task_result.dart';
import 'package:jelly_api/lib/model/task_trigger_info.dart';
import 'package:jelly_api/lib/model/theme_media_result.dart';
import 'package:jelly_api/lib/model/timer_cancelled_message.dart';
import 'package:jelly_api/lib/model/timer_created_message.dart';
import 'package:jelly_api/lib/model/timer_event_info.dart';
import 'package:jelly_api/lib/model/timer_info_dto.dart';
import 'package:jelly_api/lib/model/timer_info_dto_query_result.dart';
import 'package:jelly_api/lib/model/trailer_info.dart';
import 'package:jelly_api/lib/model/trailer_info_remote_search_query.dart';
import 'package:jelly_api/lib/model/transcoding_info.dart';
import 'package:jelly_api/lib/model/transcoding_profile.dart';
import 'package:jelly_api/lib/model/trickplay_info_dto.dart';
import 'package:jelly_api/lib/model/trickplay_options.dart';
import 'package:jelly_api/lib/model/tuner_channel_mapping.dart';
import 'package:jelly_api/lib/model/tuner_host_info.dart';
import 'package:jelly_api/lib/model/type_options.dart';
import 'package:jelly_api/lib/model/update_library_options_dto.dart';
import 'package:jelly_api/lib/model/update_media_path_request_dto.dart';
import 'package:jelly_api/lib/model/update_playlist_dto.dart';
import 'package:jelly_api/lib/model/update_playlist_user_dto.dart';
import 'package:jelly_api/lib/model/update_user_item_data_dto.dart';
import 'package:jelly_api/lib/model/update_user_password.dart';
import 'package:jelly_api/lib/model/upload_subtitle_dto.dart';
import 'package:jelly_api/lib/model/user_configuration.dart';
import 'package:jelly_api/lib/model/user_data_change_info.dart';
import 'package:jelly_api/lib/model/user_data_changed_message.dart';
import 'package:jelly_api/lib/model/user_deleted_message.dart';
import 'package:jelly_api/lib/model/user_dto.dart';
import 'package:jelly_api/lib/model/user_item_data_dto.dart';
import 'package:jelly_api/lib/model/user_policy.dart';
import 'package:jelly_api/lib/model/user_updated_message.dart';
import 'package:jelly_api/lib/model/utc_time_response.dart';
import 'package:jelly_api/lib/model/validate_path_dto.dart';
import 'package:jelly_api/lib/model/version_info.dart';
import 'package:jelly_api/lib/model/virtual_folder_info.dart';
import 'package:jelly_api/lib/model/web_socket_message.dart';
import 'package:jelly_api/lib/model/xbmc_metadata_options.dart';

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
        case 'AccessSchedule':
          return AccessSchedule.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ActivityLogEntry':
          return ActivityLogEntry.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ActivityLogEntryMessage':
          return ActivityLogEntryMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ActivityLogEntryQueryResult':
          return ActivityLogEntryQueryResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ActivityLogEntryStartMessage':
          return ActivityLogEntryStartMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ActivityLogEntryStopMessage':
          return ActivityLogEntryStopMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AddVirtualFolderDto':
          return AddVirtualFolderDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AlbumInfo':
          return AlbumInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AlbumInfoRemoteSearchQuery':
          return AlbumInfoRemoteSearchQuery.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AllThemeMediaResult':
          return AllThemeMediaResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ArtistInfo':
          return ArtistInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ArtistInfoRemoteSearchQuery':
          return ArtistInfoRemoteSearchQuery.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AudioSpatialFormat':
          
          
        case 'AuthenticateUserByName':
          return AuthenticateUserByName.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AuthenticationInfo':
          return AuthenticationInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AuthenticationInfoQueryResult':
          return AuthenticationInfoQueryResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AuthenticationResult':
          return AuthenticationResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupManifestDto':
          return BackupManifestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupOptionsDto':
          return BackupOptionsDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BackupRestoreRequestDto':
          return BackupRestoreRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseItemDto':
          return BaseItemDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseItemDtoImageBlurHashes':
          return BaseItemDtoImageBlurHashes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseItemDtoQueryResult':
          return BaseItemDtoQueryResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseItemKind':
          
          
        case 'BaseItemPerson':
          return BaseItemPerson.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseItemPersonImageBlurHashes':
          return BaseItemPersonImageBlurHashes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BookInfo':
          return BookInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BookInfoRemoteSearchQuery':
          return BookInfoRemoteSearchQuery.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BoxSetInfo':
          return BoxSetInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BoxSetInfoRemoteSearchQuery':
          return BoxSetInfoRemoteSearchQuery.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BrandingOptionsDto':
          return BrandingOptionsDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BufferRequestDto':
          return BufferRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CastReceiverApplication':
          return CastReceiverApplication.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChannelFeatures':
          return ChannelFeatures.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChannelItemSortField':
          
          
        case 'ChannelMappingOptionsDto':
          return ChannelMappingOptionsDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChannelMediaContentType':
          
          
        case 'ChannelMediaType':
          
          
        case 'ChannelType':
          
          
        case 'ChapterInfo':
          return ChapterInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientCapabilitiesDto':
          return ClientCapabilitiesDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ClientLogDocumentResponseDto':
          return ClientLogDocumentResponseDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CodecProfile':
          return CodecProfile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CodecType':
          
          
        case 'CollectionCreationResult':
          return CollectionCreationResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CollectionType':
          
          
        case 'CollectionTypeOptions':
          
          
        case 'ConfigImageTypes':
          return ConfigImageTypes.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConfigurationPageInfo':
          return ConfigurationPageInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ContainerProfile':
          return ContainerProfile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CountryInfo':
          return CountryInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreatePlaylistDto':
          return CreatePlaylistDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateUserByName':
          return CreateUserByName.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CultureDto':
          return CultureDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomDatabaseOption':
          return CustomDatabaseOption.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomDatabaseOptions':
          return CustomDatabaseOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DatabaseConfigurationOptions':
          return DatabaseConfigurationOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DatabaseLockingBehaviorTypes':
          
          
        case 'DayOfWeek':
          
          
        case 'DayPattern':
          
          
        case 'DefaultDirectoryBrowserInfoDto':
          return DefaultDirectoryBrowserInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeinterlaceMethod':
          
          
        case 'DeviceInfoDto':
          return DeviceInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeviceInfoDtoQueryResult':
          return DeviceInfoDtoQueryResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeviceOptionsDto':
          return DeviceOptionsDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeviceProfile':
          return DeviceProfile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DirectPlayProfile':
          return DirectPlayProfile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DisplayPreferencesDto':
          return DisplayPreferencesDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DlnaProfileType':
          
          
        case 'DownMixStereoAlgorithms':
          
          
        case 'DynamicDayOfWeek':
          
          
        case 'EmbeddedSubtitleOptions':
          
          
        case 'EncoderPreset':
          
          
        case 'EncodingContext':
          
          
        case 'EncodingOptions':
          return EncodingOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EndPointInfo':
          return EndPointInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ExternalIdInfo':
          return ExternalIdInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ExternalIdMediaType':
          
          
        case 'ExternalUrl':
          return ExternalUrl.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ExtraType':
          
          
        case 'FileSystemEntryInfo':
          return FileSystemEntryInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'FileSystemEntryType':
          
          
        case 'FolderStorageDto':
          return FolderStorageDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'FontFile':
          return FontFile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ForceKeepAliveMessage':
          return ForceKeepAliveMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ForgotPasswordAction':
          
          
        case 'ForgotPasswordDto':
          return ForgotPasswordDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ForgotPasswordPinDto':
          return ForgotPasswordPinDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ForgotPasswordResult':
          return ForgotPasswordResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GeneralCommand':
          return GeneralCommand.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GeneralCommandMessage':
          return GeneralCommandMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GeneralCommandType':
          
          
        case 'GetProgramsDto':
          return GetProgramsDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GroupInfoDto':
          return GroupInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GroupQueueMode':
          
          
        case 'GroupRepeatMode':
          
          
        case 'GroupShuffleMode':
          
          
        case 'GroupStateType':
          
          
        case 'GroupStateUpdate':
          return GroupStateUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GroupUpdate':
          return GroupUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GroupUpdateType':
          
          
        case 'GuideInfo':
          return GuideInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HardwareAccelerationType':
          
          
        case 'IPlugin':
          return IPlugin.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'IgnoreWaitRequestDto':
          return IgnoreWaitRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImageFormat':
          
          
        case 'ImageInfo':
          return ImageInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImageOption':
          return ImageOption.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImageOrientation':
          
          
        case 'ImageProviderInfo':
          return ImageProviderInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImageResolution':
          
          
        case 'ImageSavingConvention':
          
          
        case 'ImageType':
          
          
        case 'InboundKeepAliveMessage':
          return InboundKeepAliveMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InboundWebSocketMessage':
          return InboundWebSocketMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InstallationInfo':
          return InstallationInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'IsoType':
          
          
        case 'ItemCounts':
          return ItemCounts.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ItemFields':
          
          
        case 'ItemFilter':
          
          
        case 'ItemSortBy':
          
          
        case 'JoinGroupRequestDto':
          return JoinGroupRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'KeepUntil':
          
          
        case 'LibraryChangedMessage':
          return LibraryChangedMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LibraryOptionInfoDto':
          return LibraryOptionInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LibraryOptions':
          return LibraryOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LibraryOptionsResultDto':
          return LibraryOptionsResultDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LibraryStorageDto':
          return LibraryStorageDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LibraryTypeOptionsDto':
          return LibraryTypeOptionsDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LibraryUpdateInfo':
          return LibraryUpdateInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ListingsProviderInfo':
          return ListingsProviderInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LiveStreamResponse':
          return LiveStreamResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LiveTvInfo':
          return LiveTvInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LiveTvOptions':
          return LiveTvOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LiveTvServiceInfo':
          return LiveTvServiceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LiveTvServiceStatus':
          
          
        case 'LocalizationOption':
          return LocalizationOption.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LocationType':
          
          
        case 'LogFile':
          return LogFile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogLevel':
          
          
        case 'LyricDto':
          return LyricDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LyricLine':
          return LyricLine.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LyricLineCue':
          return LyricLineCue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LyricMetadata':
          return LyricMetadata.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaAttachment':
          return MediaAttachment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaPathDto':
          return MediaPathDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaPathInfo':
          return MediaPathInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaProtocol':
          
          
        case 'MediaSegmentDto':
          return MediaSegmentDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaSegmentDtoQueryResult':
          return MediaSegmentDtoQueryResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaSegmentType':
          
          
        case 'MediaSourceInfo':
          return MediaSourceInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaSourceType':
          
          
        case 'MediaStream':
          return MediaStream.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaStreamProtocol':
          
          
        case 'MediaStreamType':
          
          
        case 'MediaType':
          
          
        case 'MediaUpdateInfoDto':
          return MediaUpdateInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaUpdateInfoPathDto':
          return MediaUpdateInfoPathDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaUrl':
          return MediaUrl.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MessageCommand':
          return MessageCommand.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MetadataConfiguration':
          return MetadataConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MetadataEditorInfo':
          return MetadataEditorInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MetadataField':
          
          
        case 'MetadataOptions':
          return MetadataOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MetadataRefreshMode':
          
          
        case 'MovePlaylistItemRequestDto':
          return MovePlaylistItemRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MovieInfo':
          return MovieInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MovieInfoRemoteSearchQuery':
          return MovieInfoRemoteSearchQuery.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MusicVideoInfo':
          return MusicVideoInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MusicVideoInfoRemoteSearchQuery':
          return MusicVideoInfoRemoteSearchQuery.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NameGuidPair':
          return NameGuidPair.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NameIdPair':
          return NameIdPair.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NameValuePair':
          return NameValuePair.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NetworkConfiguration':
          return NetworkConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NewGroupRequestDto':
          return NewGroupRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NextItemRequestDto':
          return NextItemRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OpenLiveStreamDto':
          return OpenLiveStreamDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OutboundKeepAliveMessage':
          return OutboundKeepAliveMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OutboundWebSocketMessage':
          return OutboundWebSocketMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PackageInfo':
          return PackageInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ParentalRating':
          return ParentalRating.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ParentalRatingScore':
          return ParentalRatingScore.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PathSubstitution':
          return PathSubstitution.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PersonKind':
          
          
        case 'PersonLookupInfo':
          return PersonLookupInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PersonLookupInfoRemoteSearchQuery':
          return PersonLookupInfoRemoteSearchQuery.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PinRedeemResult':
          return PinRedeemResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PingRequestDto':
          return PingRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlayAccess':
          
          
        case 'PlayCommand':
          
          
        case 'PlayMessage':
          return PlayMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlayMethod':
          
          
        case 'PlayQueueUpdate':
          return PlayQueueUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlayQueueUpdateReason':
          
          
        case 'PlayRequest':
          return PlayRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlayRequestDto':
          return PlayRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaybackErrorCode':
          
          
        case 'PlaybackInfoDto':
          return PlaybackInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaybackInfoResponse':
          return PlaybackInfoResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaybackOrder':
          
          
        case 'PlaybackProgressInfo':
          return PlaybackProgressInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaybackRequestType':
          
          
        case 'PlaybackStartInfo':
          return PlaybackStartInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaybackStopInfo':
          return PlaybackStopInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlayerStateInfo':
          return PlayerStateInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaylistCreationResult':
          return PlaylistCreationResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaylistDto':
          return PlaylistDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaylistUserPermissions':
          return PlaylistUserPermissions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaystateCommand':
          
          
        case 'PlaystateMessage':
          return PlaystateMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PlaystateRequest':
          return PlaystateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PluginInfo':
          return PluginInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PluginInstallationCancelledMessage':
          return PluginInstallationCancelledMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PluginInstallationCompletedMessage':
          return PluginInstallationCompletedMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PluginInstallationFailedMessage':
          return PluginInstallationFailedMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PluginInstallingMessage':
          return PluginInstallingMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PluginStatus':
          
          
        case 'PluginUninstalledMessage':
          return PluginUninstalledMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PreviousItemRequestDto':
          return PreviousItemRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProblemDetails':
          return ProblemDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProcessPriorityClass':
          
          
        case 'ProfileCondition':
          return ProfileCondition.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProfileConditionType':
          
          
        case 'ProfileConditionValue':
          
          
        case 'ProgramAudio':
          
          
        case 'PublicSystemInfo':
          return PublicSystemInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueryFilters':
          return QueryFilters.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueryFiltersLegacy':
          return QueryFiltersLegacy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueueItem':
          return QueueItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueueRequestDto':
          return QueueRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickConnectDto':
          return QuickConnectDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QuickConnectResult':
          return QuickConnectResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RatingType':
          
          
        case 'ReadyRequestDto':
          return ReadyRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RecommendationDto':
          return RecommendationDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RecommendationType':
          
          
        case 'RecordingStatus':
          
          
        case 'RefreshProgressMessage':
          return RefreshProgressMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RemoteImageInfo':
          return RemoteImageInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RemoteImageResult':
          return RemoteImageResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RemoteLyricInfoDto':
          return RemoteLyricInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RemoteSearchResult':
          return RemoteSearchResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RemoteSubtitleInfo':
          return RemoteSubtitleInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RemoveFromPlaylistRequestDto':
          return RemoveFromPlaylistRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RepeatMode':
          
          
        case 'RepositoryInfo':
          return RepositoryInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RestartRequiredMessage':
          return RestartRequiredMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScheduledTaskEndedMessage':
          return ScheduledTaskEndedMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScheduledTasksInfoMessage':
          return ScheduledTasksInfoMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScheduledTasksInfoStartMessage':
          return ScheduledTasksInfoStartMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScheduledTasksInfoStopMessage':
          return ScheduledTasksInfoStopMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScrollDirection':
          
          
        case 'SearchHint':
          return SearchHint.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SearchHintResult':
          return SearchHintResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SeekRequestDto':
          return SeekRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SendCommand':
          return SendCommand.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SendCommandType':
          
          
        case 'SeriesInfo':
          return SeriesInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SeriesInfoRemoteSearchQuery':
          return SeriesInfoRemoteSearchQuery.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SeriesStatus':
          
          
        case 'SeriesTimerCancelledMessage':
          return SeriesTimerCancelledMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SeriesTimerCreatedMessage':
          return SeriesTimerCreatedMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SeriesTimerInfoDto':
          return SeriesTimerInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SeriesTimerInfoDtoQueryResult':
          return SeriesTimerInfoDtoQueryResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerConfiguration':
          return ServerConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerDiscoveryInfo':
          return ServerDiscoveryInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerRestartingMessage':
          return ServerRestartingMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ServerShuttingDownMessage':
          return ServerShuttingDownMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SessionInfoDto':
          return SessionInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SessionMessageType':
          
          
        case 'SessionUserInfo':
          return SessionUserInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SessionsMessage':
          return SessionsMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SessionsStartMessage':
          return SessionsStartMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SessionsStopMessage':
          return SessionsStopMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SetChannelMappingDto':
          return SetChannelMappingDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SetPlaylistItemRequestDto':
          return SetPlaylistItemRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SetRepeatModeRequestDto':
          return SetRepeatModeRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SetShuffleModeRequestDto':
          return SetShuffleModeRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SongInfo':
          return SongInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SortOrder':
          
          
        case 'SpecialViewOptionDto':
          return SpecialViewOptionDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StartupConfigurationDto':
          return StartupConfigurationDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StartupRemoteAccessDto':
          return StartupRemoteAccessDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StartupUserDto':
          return StartupUserDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SubtitleDeliveryMethod':
          
          
        case 'SubtitleOptions':
          return SubtitleOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SubtitlePlaybackMode':
          
          
        case 'SubtitleProfile':
          return SubtitleProfile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayCommandMessage':
          return SyncPlayCommandMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayGroupDoesNotExistUpdate':
          return SyncPlayGroupDoesNotExistUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayGroupJoinedUpdate':
          return SyncPlayGroupJoinedUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayGroupLeftUpdate':
          return SyncPlayGroupLeftUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayGroupUpdateMessage':
          return SyncPlayGroupUpdateMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayLibraryAccessDeniedUpdate':
          return SyncPlayLibraryAccessDeniedUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayNotInGroupUpdate':
          return SyncPlayNotInGroupUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayPlayQueueUpdate':
          return SyncPlayPlayQueueUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayQueueItem':
          return SyncPlayQueueItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayStateUpdate':
          return SyncPlayStateUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayUserAccessType':
          
          
        case 'SyncPlayUserJoinedUpdate':
          return SyncPlayUserJoinedUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SyncPlayUserLeftUpdate':
          return SyncPlayUserLeftUpdate.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SystemInfo':
          return SystemInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SystemStorageDto':
          return SystemStorageDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TaskCompletionStatus':
          
          
        case 'TaskInfo':
          return TaskInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TaskResult':
          return TaskResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TaskState':
          
          
        case 'TaskTriggerInfo':
          return TaskTriggerInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TaskTriggerInfoType':
          
          
        case 'ThemeMediaResult':
          return ThemeMediaResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TimerCancelledMessage':
          return TimerCancelledMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TimerCreatedMessage':
          return TimerCreatedMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TimerEventInfo':
          return TimerEventInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TimerInfoDto':
          return TimerInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TimerInfoDtoQueryResult':
          return TimerInfoDtoQueryResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TonemappingAlgorithm':
          
          
        case 'TonemappingMode':
          
          
        case 'TonemappingRange':
          
          
        case 'TrailerInfo':
          return TrailerInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TrailerInfoRemoteSearchQuery':
          return TrailerInfoRemoteSearchQuery.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TranscodeReason':
          
          
        case 'TranscodeSeekInfo':
          
          
        case 'TranscodingInfo':
          return TranscodingInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TranscodingProfile':
          return TranscodingProfile.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TransportStreamTimestamp':
          
          
        case 'TrickplayInfoDto':
          return TrickplayInfoDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TrickplayOptions':
          return TrickplayOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TrickplayScanBehavior':
          
          
        case 'TunerChannelMapping':
          return TunerChannelMapping.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TunerHostInfo':
          return TunerHostInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TypeOptions':
          return TypeOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UnratedItem':
          
          
        case 'UpdateLibraryOptionsDto':
          return UpdateLibraryOptionsDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateMediaPathRequestDto':
          return UpdateMediaPathRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdatePlaylistDto':
          return UpdatePlaylistDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdatePlaylistUserDto':
          return UpdatePlaylistUserDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateUserItemDataDto':
          return UpdateUserItemDataDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateUserPassword':
          return UpdateUserPassword.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UploadSubtitleDto':
          return UploadSubtitleDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserConfiguration':
          return UserConfiguration.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserDataChangeInfo':
          return UserDataChangeInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserDataChangedMessage':
          return UserDataChangedMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserDeletedMessage':
          return UserDeletedMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserDto':
          return UserDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserItemDataDto':
          return UserItemDataDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserPolicy':
          return UserPolicy.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserUpdatedMessage':
          return UserUpdatedMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UtcTimeResponse':
          return UtcTimeResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ValidatePathDto':
          return ValidatePathDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VersionInfo':
          return VersionInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Video3DFormat':
          
          
        case 'VideoRange':
          
          
        case 'VideoRangeType':
          
          
        case 'VideoType':
          
          
        case 'VirtualFolderInfo':
          return VirtualFolderInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'WebSocketMessage':
          return WebSocketMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'XbmcMetadataOptions':
          return XbmcMetadataOptions.fromJson(value as Map<String, dynamic>) as ReturnType;
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