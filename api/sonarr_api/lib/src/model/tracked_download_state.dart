//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tracked_download_state.g.dart';

class TrackedDownloadState extends EnumClass {
  @BuiltValueEnumConst(wireName: r'downloading')
  static const TrackedDownloadState downloading = _$downloading;
  @BuiltValueEnumConst(wireName: r'importBlocked')
  static const TrackedDownloadState importBlocked = _$importBlocked;
  @BuiltValueEnumConst(wireName: r'importPending')
  static const TrackedDownloadState importPending = _$importPending;
  @BuiltValueEnumConst(wireName: r'importing')
  static const TrackedDownloadState importing = _$importing;
  @BuiltValueEnumConst(wireName: r'imported')
  static const TrackedDownloadState imported = _$imported;
  @BuiltValueEnumConst(wireName: r'failedPending')
  static const TrackedDownloadState failedPending = _$failedPending;
  @BuiltValueEnumConst(wireName: r'failed')
  static const TrackedDownloadState failed = _$failed;
  @BuiltValueEnumConst(wireName: r'ignored')
  static const TrackedDownloadState ignored = _$ignored;

  static Serializer<TrackedDownloadState> get serializer =>
      _$trackedDownloadStateSerializer;

  const TrackedDownloadState._(String name) : super(name);

  static BuiltSet<TrackedDownloadState> get values => _$values;
  static TrackedDownloadState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TrackedDownloadStateMixin = Object
    with _$TrackedDownloadStateMixin;
