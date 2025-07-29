// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracked_download_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrackedDownloadStatus _$ok = const TrackedDownloadStatus._('ok');
const TrackedDownloadStatus _$warning =
    const TrackedDownloadStatus._('warning');
const TrackedDownloadStatus _$error = const TrackedDownloadStatus._('error');

TrackedDownloadStatus _$valueOf(String name) {
  switch (name) {
    case 'ok':
      return _$ok;
    case 'warning':
      return _$warning;
    case 'error':
      return _$error;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TrackedDownloadStatus> _$values =
    BuiltSet<TrackedDownloadStatus>(const <TrackedDownloadStatus>[
  _$ok,
  _$warning,
  _$error,
]);

class _$TrackedDownloadStatusMeta {
  const _$TrackedDownloadStatusMeta();
  TrackedDownloadStatus get ok => _$ok;
  TrackedDownloadStatus get warning => _$warning;
  TrackedDownloadStatus get error => _$error;
  TrackedDownloadStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<TrackedDownloadStatus> get values => _$values;
}

abstract class _$TrackedDownloadStatusMixin {
  // ignore: non_constant_identifier_names
  _$TrackedDownloadStatusMeta get TrackedDownloadStatus =>
      const _$TrackedDownloadStatusMeta();
}

Serializer<TrackedDownloadStatus> _$trackedDownloadStatusSerializer =
    _$TrackedDownloadStatusSerializer();

class _$TrackedDownloadStatusSerializer
    implements PrimitiveSerializer<TrackedDownloadStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'warning': 'warning',
    'error': 'error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'warning': 'warning',
    'error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[TrackedDownloadStatus];
  @override
  final String wireName = 'TrackedDownloadStatus';

  @override
  Object serialize(Serializers serializers, TrackedDownloadStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TrackedDownloadStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrackedDownloadStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
