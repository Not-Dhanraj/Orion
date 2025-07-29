//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_status.g.dart';

class QueueStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unknown')
  static const QueueStatus unknown = _$unknown;
  @BuiltValueEnumConst(wireName: r'queued')
  static const QueueStatus queued = _$queued;
  @BuiltValueEnumConst(wireName: r'paused')
  static const QueueStatus paused = _$paused;
  @BuiltValueEnumConst(wireName: r'downloading')
  static const QueueStatus downloading = _$downloading;
  @BuiltValueEnumConst(wireName: r'completed')
  static const QueueStatus completed = _$completed;
  @BuiltValueEnumConst(wireName: r'failed')
  static const QueueStatus failed = _$failed;
  @BuiltValueEnumConst(wireName: r'warning')
  static const QueueStatus warning = _$warning;
  @BuiltValueEnumConst(wireName: r'delay')
  static const QueueStatus delay = _$delay;
  @BuiltValueEnumConst(wireName: r'downloadClientUnavailable')
  static const QueueStatus downloadClientUnavailable =
      _$downloadClientUnavailable;
  @BuiltValueEnumConst(wireName: r'fallback')
  static const QueueStatus fallback = _$fallback;

  static Serializer<QueueStatus> get serializer => _$queueStatusSerializer;

  const QueueStatus._(String name) : super(name);

  static BuiltSet<QueueStatus> get values => _$values;
  static QueueStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QueueStatusMixin = Object with _$QueueStatusMixin;
