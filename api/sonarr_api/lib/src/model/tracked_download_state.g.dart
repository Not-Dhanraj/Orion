// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracked_download_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrackedDownloadState _$downloading =
    const TrackedDownloadState._('downloading');
const TrackedDownloadState _$importBlocked =
    const TrackedDownloadState._('importBlocked');
const TrackedDownloadState _$importPending =
    const TrackedDownloadState._('importPending');
const TrackedDownloadState _$importing =
    const TrackedDownloadState._('importing');
const TrackedDownloadState _$imported =
    const TrackedDownloadState._('imported');
const TrackedDownloadState _$failedPending =
    const TrackedDownloadState._('failedPending');
const TrackedDownloadState _$failed = const TrackedDownloadState._('failed');
const TrackedDownloadState _$ignored = const TrackedDownloadState._('ignored');

TrackedDownloadState _$valueOf(String name) {
  switch (name) {
    case 'downloading':
      return _$downloading;
    case 'importBlocked':
      return _$importBlocked;
    case 'importPending':
      return _$importPending;
    case 'importing':
      return _$importing;
    case 'imported':
      return _$imported;
    case 'failedPending':
      return _$failedPending;
    case 'failed':
      return _$failed;
    case 'ignored':
      return _$ignored;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TrackedDownloadState> _$values =
    BuiltSet<TrackedDownloadState>(const <TrackedDownloadState>[
  _$downloading,
  _$importBlocked,
  _$importPending,
  _$importing,
  _$imported,
  _$failedPending,
  _$failed,
  _$ignored,
]);

class _$TrackedDownloadStateMeta {
  const _$TrackedDownloadStateMeta();
  TrackedDownloadState get downloading => _$downloading;
  TrackedDownloadState get importBlocked => _$importBlocked;
  TrackedDownloadState get importPending => _$importPending;
  TrackedDownloadState get importing => _$importing;
  TrackedDownloadState get imported => _$imported;
  TrackedDownloadState get failedPending => _$failedPending;
  TrackedDownloadState get failed => _$failed;
  TrackedDownloadState get ignored => _$ignored;
  TrackedDownloadState valueOf(String name) => _$valueOf(name);
  BuiltSet<TrackedDownloadState> get values => _$values;
}

abstract class _$TrackedDownloadStateMixin {
  // ignore: non_constant_identifier_names
  _$TrackedDownloadStateMeta get TrackedDownloadState =>
      const _$TrackedDownloadStateMeta();
}

Serializer<TrackedDownloadState> _$trackedDownloadStateSerializer =
    _$TrackedDownloadStateSerializer();

class _$TrackedDownloadStateSerializer
    implements PrimitiveSerializer<TrackedDownloadState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'downloading': 'downloading',
    'importBlocked': 'importBlocked',
    'importPending': 'importPending',
    'importing': 'importing',
    'imported': 'imported',
    'failedPending': 'failedPending',
    'failed': 'failed',
    'ignored': 'ignored',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'downloading': 'downloading',
    'importBlocked': 'importBlocked',
    'importPending': 'importPending',
    'importing': 'importing',
    'imported': 'imported',
    'failedPending': 'failedPending',
    'failed': 'failed',
    'ignored': 'ignored',
  };

  @override
  final Iterable<Type> types = const <Type>[TrackedDownloadState];
  @override
  final String wireName = 'TrackedDownloadState';

  @override
  Object serialize(Serializers serializers, TrackedDownloadState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TrackedDownloadState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrackedDownloadState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
