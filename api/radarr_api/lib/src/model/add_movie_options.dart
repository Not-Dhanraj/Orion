//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/add_movie_method.dart';
import 'package:radarr/src/model/monitor_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_movie_options.g.dart';

/// AddMovieOptions
///
/// Properties:
/// * [ignoreEpisodesWithFiles]
/// * [ignoreEpisodesWithoutFiles]
/// * [monitor]
/// * [searchForMovie]
/// * [addMethod]
@BuiltValue()
abstract class AddMovieOptions
    implements Built<AddMovieOptions, AddMovieOptionsBuilder> {
  @BuiltValueField(wireName: r'ignoreEpisodesWithFiles')
  bool? get ignoreEpisodesWithFiles;

  @BuiltValueField(wireName: r'ignoreEpisodesWithoutFiles')
  bool? get ignoreEpisodesWithoutFiles;

  @BuiltValueField(wireName: r'monitor')
  MonitorTypes? get monitor;
  // enum monitorEnum {  movieOnly,  movieAndCollection,  none,  };

  @BuiltValueField(wireName: r'searchForMovie')
  bool? get searchForMovie;

  @BuiltValueField(wireName: r'addMethod')
  AddMovieMethod? get addMethod;
  // enum addMethodEnum {  manual,  list,  collection,  };

  AddMovieOptions._();

  factory AddMovieOptions([void updates(AddMovieOptionsBuilder b)]) =
      _$AddMovieOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddMovieOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddMovieOptions> get serializer =>
      _$AddMovieOptionsSerializer();
}

class _$AddMovieOptionsSerializer
    implements PrimitiveSerializer<AddMovieOptions> {
  @override
  final Iterable<Type> types = const [AddMovieOptions, _$AddMovieOptions];

  @override
  final String wireName = r'AddMovieOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddMovieOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ignoreEpisodesWithFiles != null) {
      yield r'ignoreEpisodesWithFiles';
      yield serializers.serialize(
        object.ignoreEpisodesWithFiles,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ignoreEpisodesWithoutFiles != null) {
      yield r'ignoreEpisodesWithoutFiles';
      yield serializers.serialize(
        object.ignoreEpisodesWithoutFiles,
        specifiedType: const FullType(bool),
      );
    }
    if (object.monitor != null) {
      yield r'monitor';
      yield serializers.serialize(
        object.monitor,
        specifiedType: const FullType(MonitorTypes),
      );
    }
    if (object.searchForMovie != null) {
      yield r'searchForMovie';
      yield serializers.serialize(
        object.searchForMovie,
        specifiedType: const FullType(bool),
      );
    }
    if (object.addMethod != null) {
      yield r'addMethod';
      yield serializers.serialize(
        object.addMethod,
        specifiedType: const FullType(AddMovieMethod),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddMovieOptions object, {
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
    required AddMovieOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ignoreEpisodesWithFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreEpisodesWithFiles = valueDes;
          break;
        case r'ignoreEpisodesWithoutFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreEpisodesWithoutFiles = valueDes;
          break;
        case r'monitor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MonitorTypes),
          ) as MonitorTypes;
          result.monitor = valueDes;
          break;
        case r'searchForMovie':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.searchForMovie = valueDes;
          break;
        case r'addMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AddMovieMethod),
          ) as AddMovieMethod;
          result.addMethod = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddMovieOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddMovieOptionsBuilder();
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
