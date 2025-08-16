//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'download_protocol.g.dart';

class DownloadProtocol extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unknown')
  static const DownloadProtocol unknown = _$unknown;
  @BuiltValueEnumConst(wireName: r'usenet')
  static const DownloadProtocol usenet = _$usenet;
  @BuiltValueEnumConst(wireName: r'torrent')
  static const DownloadProtocol torrent = _$torrent;

  static Serializer<DownloadProtocol> get serializer =>
      _$downloadProtocolSerializer;

  const DownloadProtocol._(String name) : super(name);

  static BuiltSet<DownloadProtocol> get values => _$values;
  static DownloadProtocol valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DownloadProtocolMixin = Object with _$DownloadProtocolMixin;
