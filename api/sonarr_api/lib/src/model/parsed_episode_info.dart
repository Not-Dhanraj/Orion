//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/release_type.dart';
import 'package:sonarr/src/model/series_title_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:sonarr/src/model/quality_model.dart';
import 'package:sonarr/src/model/language.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parsed_episode_info.g.dart';

/// ParsedEpisodeInfo
///
/// Properties:
/// * [releaseTitle]
/// * [seriesTitle]
/// * [seriesTitleInfo]
/// * [quality]
/// * [seasonNumber]
/// * [episodeNumbers]
/// * [absoluteEpisodeNumbers]
/// * [specialAbsoluteEpisodeNumbers]
/// * [airDate]
/// * [languages]
/// * [fullSeason]
/// * [isPartialSeason]
/// * [isMultiSeason]
/// * [isSeasonExtra]
/// * [isSplitEpisode]
/// * [isMiniSeries]
/// * [special]
/// * [releaseGroup]
/// * [releaseHash]
/// * [seasonPart]
/// * [releaseTokens]
/// * [dailyPart]
/// * [isDaily]
/// * [isAbsoluteNumbering]
/// * [isPossibleSpecialEpisode]
/// * [isPossibleSceneSeasonSpecial]
/// * [releaseType]
@BuiltValue()
abstract class ParsedEpisodeInfo
    implements Built<ParsedEpisodeInfo, ParsedEpisodeInfoBuilder> {
  @BuiltValueField(wireName: r'releaseTitle')
  String? get releaseTitle;

  @BuiltValueField(wireName: r'seriesTitle')
  String? get seriesTitle;

  @BuiltValueField(wireName: r'seriesTitleInfo')
  SeriesTitleInfo? get seriesTitleInfo;

  @BuiltValueField(wireName: r'quality')
  QualityModel? get quality;

  @BuiltValueField(wireName: r'seasonNumber')
  int? get seasonNumber;

  @BuiltValueField(wireName: r'episodeNumbers')
  BuiltList<int>? get episodeNumbers;

  @BuiltValueField(wireName: r'absoluteEpisodeNumbers')
  BuiltList<int>? get absoluteEpisodeNumbers;

  @BuiltValueField(wireName: r'specialAbsoluteEpisodeNumbers')
  BuiltList<double>? get specialAbsoluteEpisodeNumbers;

  @BuiltValueField(wireName: r'airDate')
  String? get airDate;

  @BuiltValueField(wireName: r'languages')
  BuiltList<Language>? get languages;

  @BuiltValueField(wireName: r'fullSeason')
  bool? get fullSeason;

  @BuiltValueField(wireName: r'isPartialSeason')
  bool? get isPartialSeason;

  @BuiltValueField(wireName: r'isMultiSeason')
  bool? get isMultiSeason;

  @BuiltValueField(wireName: r'isSeasonExtra')
  bool? get isSeasonExtra;

  @BuiltValueField(wireName: r'isSplitEpisode')
  bool? get isSplitEpisode;

  @BuiltValueField(wireName: r'isMiniSeries')
  bool? get isMiniSeries;

  @BuiltValueField(wireName: r'special')
  bool? get special;

  @BuiltValueField(wireName: r'releaseGroup')
  String? get releaseGroup;

  @BuiltValueField(wireName: r'releaseHash')
  String? get releaseHash;

  @BuiltValueField(wireName: r'seasonPart')
  int? get seasonPart;

  @BuiltValueField(wireName: r'releaseTokens')
  String? get releaseTokens;

  @BuiltValueField(wireName: r'dailyPart')
  int? get dailyPart;

  @BuiltValueField(wireName: r'isDaily')
  bool? get isDaily;

  @BuiltValueField(wireName: r'isAbsoluteNumbering')
  bool? get isAbsoluteNumbering;

  @BuiltValueField(wireName: r'isPossibleSpecialEpisode')
  bool? get isPossibleSpecialEpisode;

  @BuiltValueField(wireName: r'isPossibleSceneSeasonSpecial')
  bool? get isPossibleSceneSeasonSpecial;

  @BuiltValueField(wireName: r'releaseType')
  ReleaseType? get releaseType;
  // enum releaseTypeEnum {  unknown,  singleEpisode,  multiEpisode,  seasonPack,  };

  ParsedEpisodeInfo._();

  factory ParsedEpisodeInfo([void updates(ParsedEpisodeInfoBuilder b)]) =
      _$ParsedEpisodeInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParsedEpisodeInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParsedEpisodeInfo> get serializer =>
      _$ParsedEpisodeInfoSerializer();
}

class _$ParsedEpisodeInfoSerializer
    implements PrimitiveSerializer<ParsedEpisodeInfo> {
  @override
  final Iterable<Type> types = const [ParsedEpisodeInfo, _$ParsedEpisodeInfo];

  @override
  final String wireName = r'ParsedEpisodeInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParsedEpisodeInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.releaseTitle != null) {
      yield r'releaseTitle';
      yield serializers.serialize(
        object.releaseTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seriesTitle != null) {
      yield r'seriesTitle';
      yield serializers.serialize(
        object.seriesTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seriesTitleInfo != null) {
      yield r'seriesTitleInfo';
      yield serializers.serialize(
        object.seriesTitleInfo,
        specifiedType: const FullType(SeriesTitleInfo),
      );
    }
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType(QualityModel),
      );
    }
    if (object.seasonNumber != null) {
      yield r'seasonNumber';
      yield serializers.serialize(
        object.seasonNumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.episodeNumbers != null) {
      yield r'episodeNumbers';
      yield serializers.serialize(
        object.episodeNumbers,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.absoluteEpisodeNumbers != null) {
      yield r'absoluteEpisodeNumbers';
      yield serializers.serialize(
        object.absoluteEpisodeNumbers,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.specialAbsoluteEpisodeNumbers != null) {
      yield r'specialAbsoluteEpisodeNumbers';
      yield serializers.serialize(
        object.specialAbsoluteEpisodeNumbers,
        specifiedType: const FullType.nullable(BuiltList, [FullType(double)]),
      );
    }
    if (object.airDate != null) {
      yield r'airDate';
      yield serializers.serialize(
        object.airDate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Language)]),
      );
    }
    if (object.fullSeason != null) {
      yield r'fullSeason';
      yield serializers.serialize(
        object.fullSeason,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isPartialSeason != null) {
      yield r'isPartialSeason';
      yield serializers.serialize(
        object.isPartialSeason,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isMultiSeason != null) {
      yield r'isMultiSeason';
      yield serializers.serialize(
        object.isMultiSeason,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSeasonExtra != null) {
      yield r'isSeasonExtra';
      yield serializers.serialize(
        object.isSeasonExtra,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSplitEpisode != null) {
      yield r'isSplitEpisode';
      yield serializers.serialize(
        object.isSplitEpisode,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isMiniSeries != null) {
      yield r'isMiniSeries';
      yield serializers.serialize(
        object.isMiniSeries,
        specifiedType: const FullType(bool),
      );
    }
    if (object.special != null) {
      yield r'special';
      yield serializers.serialize(
        object.special,
        specifiedType: const FullType(bool),
      );
    }
    if (object.releaseGroup != null) {
      yield r'releaseGroup';
      yield serializers.serialize(
        object.releaseGroup,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.releaseHash != null) {
      yield r'releaseHash';
      yield serializers.serialize(
        object.releaseHash,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seasonPart != null) {
      yield r'seasonPart';
      yield serializers.serialize(
        object.seasonPart,
        specifiedType: const FullType(int),
      );
    }
    if (object.releaseTokens != null) {
      yield r'releaseTokens';
      yield serializers.serialize(
        object.releaseTokens,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.dailyPart != null) {
      yield r'dailyPart';
      yield serializers.serialize(
        object.dailyPart,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.isDaily != null) {
      yield r'isDaily';
      yield serializers.serialize(
        object.isDaily,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isAbsoluteNumbering != null) {
      yield r'isAbsoluteNumbering';
      yield serializers.serialize(
        object.isAbsoluteNumbering,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isPossibleSpecialEpisode != null) {
      yield r'isPossibleSpecialEpisode';
      yield serializers.serialize(
        object.isPossibleSpecialEpisode,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isPossibleSceneSeasonSpecial != null) {
      yield r'isPossibleSceneSeasonSpecial';
      yield serializers.serialize(
        object.isPossibleSceneSeasonSpecial,
        specifiedType: const FullType(bool),
      );
    }
    if (object.releaseType != null) {
      yield r'releaseType';
      yield serializers.serialize(
        object.releaseType,
        specifiedType: const FullType(ReleaseType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParsedEpisodeInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParsedEpisodeInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'releaseTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseTitle = valueDes;
          break;
        case r'seriesTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.seriesTitle = valueDes;
          break;
        case r'seriesTitleInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesTitleInfo),
          ) as SeriesTitleInfo;
          result.seriesTitleInfo.replace(valueDes);
          break;
        case r'quality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QualityModel),
          ) as QualityModel;
          result.quality.replace(valueDes);
          break;
        case r'seasonNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seasonNumber = valueDes;
          break;
        case r'episodeNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.episodeNumbers.replace(valueDes);
          break;
        case r'absoluteEpisodeNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.absoluteEpisodeNumbers.replace(valueDes);
          break;
        case r'specialAbsoluteEpisodeNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(double)]),
          ) as BuiltList<double>?;
          if (valueDes == null) continue;
          result.specialAbsoluteEpisodeNumbers.replace(valueDes);
          break;
        case r'airDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.airDate = valueDes;
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Language)]),
          ) as BuiltList<Language>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'fullSeason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.fullSeason = valueDes;
          break;
        case r'isPartialSeason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPartialSeason = valueDes;
          break;
        case r'isMultiSeason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isMultiSeason = valueDes;
          break;
        case r'isSeasonExtra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSeasonExtra = valueDes;
          break;
        case r'isSplitEpisode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSplitEpisode = valueDes;
          break;
        case r'isMiniSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isMiniSeries = valueDes;
          break;
        case r'special':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.special = valueDes;
          break;
        case r'releaseGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseGroup = valueDes;
          break;
        case r'releaseHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseHash = valueDes;
          break;
        case r'seasonPart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seasonPart = valueDes;
          break;
        case r'releaseTokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.releaseTokens = valueDes;
          break;
        case r'dailyPart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.dailyPart = valueDes;
          break;
        case r'isDaily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDaily = valueDes;
          break;
        case r'isAbsoluteNumbering':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAbsoluteNumbering = valueDes;
          break;
        case r'isPossibleSpecialEpisode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPossibleSpecialEpisode = valueDes;
          break;
        case r'isPossibleSceneSeasonSpecial':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPossibleSceneSeasonSpecial = valueDes;
          break;
        case r'releaseType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReleaseType),
          ) as ReleaseType;
          result.releaseType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParsedEpisodeInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParsedEpisodeInfoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
