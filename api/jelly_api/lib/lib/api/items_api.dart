//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:jelly_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:jelly_api/lib/model/base_item_dto_query_result.dart';
import 'package:jelly_api/lib/model/base_item_kind.dart';
import 'package:jelly_api/lib/model/image_type.dart';
import 'package:jelly_api/lib/model/item_fields.dart';
import 'package:jelly_api/lib/model/item_filter.dart';
import 'package:jelly_api/lib/model/item_sort_by.dart';
import 'package:jelly_api/lib/model/location_type.dart';
import 'package:jelly_api/lib/model/media_type.dart';
import 'package:jelly_api/lib/model/problem_details.dart';
import 'package:jelly_api/lib/model/series_status.dart';
import 'package:jelly_api/lib/model/sort_order.dart';
import 'package:jelly_api/lib/model/update_user_item_data_dto.dart';
import 'package:jelly_api/lib/model/user_item_data_dto.dart';
import 'package:jelly_api/lib/model/video_type.dart';

class ItemsApi {

  final Dio _dio;

  const ItemsApi(this._dio);

  /// Get Item User Data.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [userId] - The user id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserItemDataDto] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserItemDataDto>> getItemUserData({ 
    required String itemId,
    String? userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/UserItems/{itemId}/UserData'.replaceAll('{' r'itemId' '}', itemId.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    UserItemDataDto? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<UserItemDataDto, UserItemDataDto>(rawData, 'UserItemDataDto', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UserItemDataDto>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets items based on a query.
  /// 
  ///
  /// Parameters:
  /// * [userId] - The user id supplied as query parameter; this is required when not using an API key.
  /// * [maxOfficialRating] - Optional filter by maximum official rating (PG, PG-13, TV-MA, etc).
  /// * [hasThemeSong] - Optional filter by items with theme songs.
  /// * [hasThemeVideo] - Optional filter by items with theme videos.
  /// * [hasSubtitles] - Optional filter by items with subtitles.
  /// * [hasSpecialFeature] - Optional filter by items with special features.
  /// * [hasTrailer] - Optional filter by items with trailers.
  /// * [adjacentTo] - Optional. Return items that are siblings of a supplied item.
  /// * [indexNumber] - Optional filter by index number.
  /// * [parentIndexNumber] - Optional filter by parent index number.
  /// * [hasParentalRating] - Optional filter by items that have or do not have a parental rating.
  /// * [isHd] - Optional filter by items that are HD or not.
  /// * [is4K] - Optional filter by items that are 4K or not.
  /// * [locationTypes] - Optional. If specified, results will be filtered based on LocationType. This allows multiple, comma delimited.
  /// * [excludeLocationTypes] - Optional. If specified, results will be filtered based on the LocationType. This allows multiple, comma delimited.
  /// * [isMissing] - Optional filter by items that are missing episodes or not.
  /// * [isUnaired] - Optional filter by items that are unaired episodes or not.
  /// * [minCommunityRating] - Optional filter by minimum community rating.
  /// * [minCriticRating] - Optional filter by minimum critic rating.
  /// * [minPremiereDate] - Optional. The minimum premiere date. Format = ISO.
  /// * [minDateLastSaved] - Optional. The minimum last saved date. Format = ISO.
  /// * [minDateLastSavedForUser] - Optional. The minimum last saved date for the current user. Format = ISO.
  /// * [maxPremiereDate] - Optional. The maximum premiere date. Format = ISO.
  /// * [hasOverview] - Optional filter by items that have an overview or not.
  /// * [hasImdbId] - Optional filter by items that have an IMDb id or not.
  /// * [hasTmdbId] - Optional filter by items that have a TMDb id or not.
  /// * [hasTvdbId] - Optional filter by items that have a TVDb id or not.
  /// * [isMovie] - Optional filter for live tv movies.
  /// * [isSeries] - Optional filter for live tv series.
  /// * [isNews] - Optional filter for live tv news.
  /// * [isKids] - Optional filter for live tv kids.
  /// * [isSports] - Optional filter for live tv sports.
  /// * [excludeItemIds] - Optional. If specified, results will be filtered by excluding item ids. This allows multiple, comma delimited.
  /// * [startIndex] - Optional. The record index to start at. All items with a lower index will be dropped from the results.
  /// * [limit] - Optional. The maximum number of records to return.
  /// * [recursive] - When searching within folders, this determines whether or not the search will be recursive. true/false.
  /// * [searchTerm] - Optional. Filter based on a search term.
  /// * [sortOrder] - Sort Order - Ascending, Descending.
  /// * [parentId] - Specify this to localize the search to a specific item or folder. Omit to use the root.
  /// * [fields] - Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines.
  /// * [excludeItemTypes] - Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited.
  /// * [includeItemTypes] - Optional. If specified, results will be filtered based on the item type. This allows multiple, comma delimited.
  /// * [filters] - Optional. Specify additional filters to apply. This allows multiple, comma delimited. Options: IsFolder, IsNotFolder, IsUnplayed, IsPlayed, IsFavorite, IsResumable, Likes, Dislikes.
  /// * [isFavorite] - Optional filter by items that are marked as favorite, or not.
  /// * [mediaTypes] - Optional filter by MediaType. Allows multiple, comma delimited.
  /// * [imageTypes] - Optional. If specified, results will be filtered based on those containing image types. This allows multiple, comma delimited.
  /// * [sortBy] - Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime.
  /// * [isPlayed] - Optional filter by items that are played, or not.
  /// * [genres] - Optional. If specified, results will be filtered based on genre. This allows multiple, pipe delimited.
  /// * [officialRatings] - Optional. If specified, results will be filtered based on OfficialRating. This allows multiple, pipe delimited.
  /// * [tags] - Optional. If specified, results will be filtered based on tag. This allows multiple, pipe delimited.
  /// * [years] - Optional. If specified, results will be filtered based on production year. This allows multiple, comma delimited.
  /// * [enableUserData] - Optional, include user data.
  /// * [imageTypeLimit] - Optional, the max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [person] - Optional. If specified, results will be filtered to include only those containing the specified person.
  /// * [personIds] - Optional. If specified, results will be filtered to include only those containing the specified person id.
  /// * [personTypes] - Optional. If specified, along with Person, results will be filtered to include only those containing the specified person and PersonType. Allows multiple, comma-delimited.
  /// * [studios] - Optional. If specified, results will be filtered based on studio. This allows multiple, pipe delimited.
  /// * [artists] - Optional. If specified, results will be filtered based on artists. This allows multiple, pipe delimited.
  /// * [excludeArtistIds] - Optional. If specified, results will be filtered based on artist id. This allows multiple, pipe delimited.
  /// * [artistIds] - Optional. If specified, results will be filtered to include only those containing the specified artist id.
  /// * [albumArtistIds] - Optional. If specified, results will be filtered to include only those containing the specified album artist id.
  /// * [contributingArtistIds] - Optional. If specified, results will be filtered to include only those containing the specified contributing artist id.
  /// * [albums] - Optional. If specified, results will be filtered based on album. This allows multiple, pipe delimited.
  /// * [albumIds] - Optional. If specified, results will be filtered based on album id. This allows multiple, pipe delimited.
  /// * [ids] - Optional. If specific items are needed, specify a list of item id's to retrieve. This allows multiple, comma delimited.
  /// * [videoTypes] - Optional filter by VideoType (videofile, dvd, bluray, iso). Allows multiple, comma delimited.
  /// * [minOfficialRating] - Optional filter by minimum official rating (PG, PG-13, TV-MA, etc).
  /// * [isLocked] - Optional filter by items that are locked.
  /// * [isPlaceHolder] - Optional filter by items that are placeholders.
  /// * [hasOfficialRating] - Optional filter by items that have official ratings.
  /// * [collapseBoxSetItems] - Whether or not to hide items behind their boxsets.
  /// * [minWidth] - Optional. Filter by the minimum width of the item.
  /// * [minHeight] - Optional. Filter by the minimum height of the item.
  /// * [maxWidth] - Optional. Filter by the maximum width of the item.
  /// * [maxHeight] - Optional. Filter by the maximum height of the item.
  /// * [is3D] - Optional filter by items that are 3D, or not.
  /// * [seriesStatus] - Optional filter by Series Status. Allows multiple, comma delimited.
  /// * [nameStartsWithOrGreater] - Optional filter by items whose name is sorted equally or greater than a given input string.
  /// * [nameStartsWith] - Optional filter by items whose name is sorted equally than a given input string.
  /// * [nameLessThan] - Optional filter by items whose name is equally or lesser than a given input string.
  /// * [studioIds] - Optional. If specified, results will be filtered based on studio id. This allows multiple, pipe delimited.
  /// * [genreIds] - Optional. If specified, results will be filtered based on genre id. This allows multiple, pipe delimited.
  /// * [enableTotalRecordCount] - Optional. Enable the total record count.
  /// * [enableImages] - Optional, include image information in output.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getItems({ 
    String? userId,
    String? maxOfficialRating,
    bool? hasThemeSong,
    bool? hasThemeVideo,
    bool? hasSubtitles,
    bool? hasSpecialFeature,
    bool? hasTrailer,
    String? adjacentTo,
    int? indexNumber,
    int? parentIndexNumber,
    bool? hasParentalRating,
    bool? isHd,
    bool? is4K,
    List<LocationType>? locationTypes,
    List<LocationType>? excludeLocationTypes,
    bool? isMissing,
    bool? isUnaired,
    double? minCommunityRating,
    double? minCriticRating,
    DateTime? minPremiereDate,
    DateTime? minDateLastSaved,
    DateTime? minDateLastSavedForUser,
    DateTime? maxPremiereDate,
    bool? hasOverview,
    bool? hasImdbId,
    bool? hasTmdbId,
    bool? hasTvdbId,
    bool? isMovie,
    bool? isSeries,
    bool? isNews,
    bool? isKids,
    bool? isSports,
    List<String>? excludeItemIds,
    int? startIndex,
    int? limit,
    bool? recursive,
    String? searchTerm,
    List<SortOrder>? sortOrder,
    String? parentId,
    List<ItemFields>? fields,
    List<BaseItemKind>? excludeItemTypes,
    List<BaseItemKind>? includeItemTypes,
    List<ItemFilter>? filters,
    bool? isFavorite,
    List<MediaType>? mediaTypes,
    List<ImageType>? imageTypes,
    List<ItemSortBy>? sortBy,
    bool? isPlayed,
    List<String>? genres,
    List<String>? officialRatings,
    List<String>? tags,
    List<int>? years,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    String? person,
    List<String>? personIds,
    List<String>? personTypes,
    List<String>? studios,
    List<String>? artists,
    List<String>? excludeArtistIds,
    List<String>? artistIds,
    List<String>? albumArtistIds,
    List<String>? contributingArtistIds,
    List<String>? albums,
    List<String>? albumIds,
    List<String>? ids,
    List<VideoType>? videoTypes,
    String? minOfficialRating,
    bool? isLocked,
    bool? isPlaceHolder,
    bool? hasOfficialRating,
    bool? collapseBoxSetItems,
    int? minWidth,
    int? minHeight,
    int? maxWidth,
    int? maxHeight,
    bool? is3D,
    List<SeriesStatus>? seriesStatus,
    String? nameStartsWithOrGreater,
    String? nameStartsWith,
    String? nameLessThan,
    List<String>? studioIds,
    List<String>? genreIds,
    bool? enableTotalRecordCount = true,
    bool? enableImages = true,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/Items';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
      if (maxOfficialRating != null) r'maxOfficialRating': maxOfficialRating,
      if (hasThemeSong != null) r'hasThemeSong': hasThemeSong,
      if (hasThemeVideo != null) r'hasThemeVideo': hasThemeVideo,
      if (hasSubtitles != null) r'hasSubtitles': hasSubtitles,
      if (hasSpecialFeature != null) r'hasSpecialFeature': hasSpecialFeature,
      if (hasTrailer != null) r'hasTrailer': hasTrailer,
      if (adjacentTo != null) r'adjacentTo': adjacentTo,
      if (indexNumber != null) r'indexNumber': indexNumber,
      if (parentIndexNumber != null) r'parentIndexNumber': parentIndexNumber,
      if (hasParentalRating != null) r'hasParentalRating': hasParentalRating,
      if (isHd != null) r'isHd': isHd,
      if (is4K != null) r'is4K': is4K,
      if (locationTypes != null) r'locationTypes': locationTypes,
      if (excludeLocationTypes != null) r'excludeLocationTypes': excludeLocationTypes,
      if (isMissing != null) r'isMissing': isMissing,
      if (isUnaired != null) r'isUnaired': isUnaired,
      if (minCommunityRating != null) r'minCommunityRating': minCommunityRating,
      if (minCriticRating != null) r'minCriticRating': minCriticRating,
      if (minPremiereDate != null) r'minPremiereDate': minPremiereDate,
      if (minDateLastSaved != null) r'minDateLastSaved': minDateLastSaved,
      if (minDateLastSavedForUser != null) r'minDateLastSavedForUser': minDateLastSavedForUser,
      if (maxPremiereDate != null) r'maxPremiereDate': maxPremiereDate,
      if (hasOverview != null) r'hasOverview': hasOverview,
      if (hasImdbId != null) r'hasImdbId': hasImdbId,
      if (hasTmdbId != null) r'hasTmdbId': hasTmdbId,
      if (hasTvdbId != null) r'hasTvdbId': hasTvdbId,
      if (isMovie != null) r'isMovie': isMovie,
      if (isSeries != null) r'isSeries': isSeries,
      if (isNews != null) r'isNews': isNews,
      if (isKids != null) r'isKids': isKids,
      if (isSports != null) r'isSports': isSports,
      if (excludeItemIds != null) r'excludeItemIds': excludeItemIds,
      if (startIndex != null) r'startIndex': startIndex,
      if (limit != null) r'limit': limit,
      if (recursive != null) r'recursive': recursive,
      if (searchTerm != null) r'searchTerm': searchTerm,
      if (sortOrder != null) r'sortOrder': sortOrder,
      if (parentId != null) r'parentId': parentId,
      if (fields != null) r'fields': fields,
      if (excludeItemTypes != null) r'excludeItemTypes': excludeItemTypes,
      if (includeItemTypes != null) r'includeItemTypes': includeItemTypes,
      if (filters != null) r'filters': filters,
      if (isFavorite != null) r'isFavorite': isFavorite,
      if (mediaTypes != null) r'mediaTypes': mediaTypes,
      if (imageTypes != null) r'imageTypes': imageTypes,
      if (sortBy != null) r'sortBy': sortBy,
      if (isPlayed != null) r'isPlayed': isPlayed,
      if (genres != null) r'genres': genres,
      if (officialRatings != null) r'officialRatings': officialRatings,
      if (tags != null) r'tags': tags,
      if (years != null) r'years': years,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
      if (person != null) r'person': person,
      if (personIds != null) r'personIds': personIds,
      if (personTypes != null) r'personTypes': personTypes,
      if (studios != null) r'studios': studios,
      if (artists != null) r'artists': artists,
      if (excludeArtistIds != null) r'excludeArtistIds': excludeArtistIds,
      if (artistIds != null) r'artistIds': artistIds,
      if (albumArtistIds != null) r'albumArtistIds': albumArtistIds,
      if (contributingArtistIds != null) r'contributingArtistIds': contributingArtistIds,
      if (albums != null) r'albums': albums,
      if (albumIds != null) r'albumIds': albumIds,
      if (ids != null) r'ids': ids,
      if (videoTypes != null) r'videoTypes': videoTypes,
      if (minOfficialRating != null) r'minOfficialRating': minOfficialRating,
      if (isLocked != null) r'isLocked': isLocked,
      if (isPlaceHolder != null) r'isPlaceHolder': isPlaceHolder,
      if (hasOfficialRating != null) r'hasOfficialRating': hasOfficialRating,
      if (collapseBoxSetItems != null) r'collapseBoxSetItems': collapseBoxSetItems,
      if (minWidth != null) r'minWidth': minWidth,
      if (minHeight != null) r'minHeight': minHeight,
      if (maxWidth != null) r'maxWidth': maxWidth,
      if (maxHeight != null) r'maxHeight': maxHeight,
      if (is3D != null) r'is3D': is3D,
      if (seriesStatus != null) r'seriesStatus': seriesStatus,
      if (nameStartsWithOrGreater != null) r'nameStartsWithOrGreater': nameStartsWithOrGreater,
      if (nameStartsWith != null) r'nameStartsWith': nameStartsWith,
      if (nameLessThan != null) r'nameLessThan': nameLessThan,
      if (studioIds != null) r'studioIds': studioIds,
      if (genreIds != null) r'genreIds': genreIds,
      if (enableTotalRecordCount != null) r'enableTotalRecordCount': enableTotalRecordCount,
      if (enableImages != null) r'enableImages': enableImages,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseItemDtoQueryResult? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(rawData, 'BaseItemDtoQueryResult', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseItemDtoQueryResult>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Gets items based on a query.
  /// 
  ///
  /// Parameters:
  /// * [userId] - The user id.
  /// * [startIndex] - The start index.
  /// * [limit] - The item limit.
  /// * [searchTerm] - The search term.
  /// * [parentId] - Specify this to localize the search to a specific item or folder. Omit to use the root.
  /// * [fields] - Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines.
  /// * [mediaTypes] - Optional. Filter by MediaType. Allows multiple, comma delimited.
  /// * [enableUserData] - Optional. Include user data.
  /// * [imageTypeLimit] - Optional. The max number of images to return, per image type.
  /// * [enableImageTypes] - Optional. The image types to include in the output.
  /// * [excludeItemTypes] - Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited.
  /// * [includeItemTypes] - Optional. If specified, results will be filtered based on the item type. This allows multiple, comma delimited.
  /// * [enableTotalRecordCount] - Optional. Enable the total record count.
  /// * [enableImages] - Optional. Include image information in output.
  /// * [excludeActiveSessions] - Optional. Whether to exclude the currently active sessions.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseItemDtoQueryResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseItemDtoQueryResult>> getResumeItems({ 
    String? userId,
    int? startIndex,
    int? limit,
    String? searchTerm,
    String? parentId,
    List<ItemFields>? fields,
    List<MediaType>? mediaTypes,
    bool? enableUserData,
    int? imageTypeLimit,
    List<ImageType>? enableImageTypes,
    List<BaseItemKind>? excludeItemTypes,
    List<BaseItemKind>? includeItemTypes,
    bool? enableTotalRecordCount = true,
    bool? enableImages = true,
    bool? excludeActiveSessions = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/UserItems/Resume';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
      if (startIndex != null) r'startIndex': startIndex,
      if (limit != null) r'limit': limit,
      if (searchTerm != null) r'searchTerm': searchTerm,
      if (parentId != null) r'parentId': parentId,
      if (fields != null) r'fields': fields,
      if (mediaTypes != null) r'mediaTypes': mediaTypes,
      if (enableUserData != null) r'enableUserData': enableUserData,
      if (imageTypeLimit != null) r'imageTypeLimit': imageTypeLimit,
      if (enableImageTypes != null) r'enableImageTypes': enableImageTypes,
      if (excludeItemTypes != null) r'excludeItemTypes': excludeItemTypes,
      if (includeItemTypes != null) r'includeItemTypes': includeItemTypes,
      if (enableTotalRecordCount != null) r'enableTotalRecordCount': enableTotalRecordCount,
      if (enableImages != null) r'enableImages': enableImages,
      if (excludeActiveSessions != null) r'excludeActiveSessions': excludeActiveSessions,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseItemDtoQueryResult? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BaseItemDtoQueryResult, BaseItemDtoQueryResult>(rawData, 'BaseItemDtoQueryResult', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseItemDtoQueryResult>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Update Item User Data.
  /// 
  ///
  /// Parameters:
  /// * [itemId] - The item id.
  /// * [updateUserItemDataDto] - New user data object.
  /// * [userId] - The user id.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserItemDataDto] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserItemDataDto>> updateItemUserData({ 
    required String itemId,
    required UpdateUserItemDataDto updateUserItemDataDto,
    String? userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/UserItems/{itemId}/UserData'.replaceAll('{' r'itemId' '}', itemId.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'CustomAuthentication',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
    };

    dynamic _bodyData;

    try {
_bodyData=jsonEncode(updateUserItemDataDto);
    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    UserItemDataDto? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<UserItemDataDto, UserItemDataDto>(rawData, 'UserItemDataDto', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UserItemDataDto>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
