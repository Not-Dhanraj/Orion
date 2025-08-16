//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tracked_download_status.g.dart';

class TrackedDownloadStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const TrackedDownloadStatus ok = _$ok;
  @BuiltValueEnumConst(wireName: r'warning')
  static const TrackedDownloadStatus warning = _$warning;
  @BuiltValueEnumConst(wireName: r'error')
  static const TrackedDownloadStatus error = _$error;

  static Serializer<TrackedDownloadStatus> get serializer =>
      _$trackedDownloadStatusSerializer;

  const TrackedDownloadStatus._(String name) : super(name);

  static BuiltSet<TrackedDownloadStatus> get values => _$values;
  static TrackedDownloadStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TrackedDownloadStatusMixin = Object
    with _$TrackedDownloadStatusMixin;
