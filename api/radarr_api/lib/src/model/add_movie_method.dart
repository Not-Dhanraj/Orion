//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_movie_method.g.dart';

class AddMovieMethod extends EnumClass {
  @BuiltValueEnumConst(wireName: r'manual')
  static const AddMovieMethod manual = _$manual;
  @BuiltValueEnumConst(wireName: r'list')
  static const AddMovieMethod list = _$list;
  @BuiltValueEnumConst(wireName: r'collection')
  static const AddMovieMethod collection = _$collection;

  static Serializer<AddMovieMethod> get serializer =>
      _$addMovieMethodSerializer;

  const AddMovieMethod._(String name) : super(name);

  static BuiltSet<AddMovieMethod> get values => _$values;
  static AddMovieMethod valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AddMovieMethodMixin = Object with _$AddMovieMethodMixin;
