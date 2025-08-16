// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_movie_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AddMovieMethod _$manual = const AddMovieMethod._('manual');
const AddMovieMethod _$list = const AddMovieMethod._('list');
const AddMovieMethod _$collection = const AddMovieMethod._('collection');

AddMovieMethod _$valueOf(String name) {
  switch (name) {
    case 'manual':
      return _$manual;
    case 'list':
      return _$list;
    case 'collection':
      return _$collection;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AddMovieMethod> _$values =
    BuiltSet<AddMovieMethod>(const <AddMovieMethod>[
  _$manual,
  _$list,
  _$collection,
]);

class _$AddMovieMethodMeta {
  const _$AddMovieMethodMeta();
  AddMovieMethod get manual => _$manual;
  AddMovieMethod get list => _$list;
  AddMovieMethod get collection => _$collection;
  AddMovieMethod valueOf(String name) => _$valueOf(name);
  BuiltSet<AddMovieMethod> get values => _$values;
}

abstract class _$AddMovieMethodMixin {
  // ignore: non_constant_identifier_names
  _$AddMovieMethodMeta get AddMovieMethod => const _$AddMovieMethodMeta();
}

Serializer<AddMovieMethod> _$addMovieMethodSerializer =
    _$AddMovieMethodSerializer();

class _$AddMovieMethodSerializer
    implements PrimitiveSerializer<AddMovieMethod> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'manual': 'manual',
    'list': 'list',
    'collection': 'collection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'manual': 'manual',
    'list': 'list',
    'collection': 'collection',
  };

  @override
  final Iterable<Type> types = const <Type>[AddMovieMethod];
  @override
  final String wireName = 'AddMovieMethod';

  @override
  Object serialize(Serializers serializers, AddMovieMethod object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AddMovieMethod deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AddMovieMethod.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
