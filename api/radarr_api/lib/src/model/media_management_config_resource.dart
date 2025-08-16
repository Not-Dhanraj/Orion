//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/proper_download_types.dart';
import 'package:radarr/src/model/file_date_type.dart';
import 'package:radarr/src/model/rescan_after_refresh_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_management_config_resource.g.dart';

/// MediaManagementConfigResource
///
/// Properties:
/// * [id]
/// * [autoUnmonitorPreviouslyDownloadedMovies]
/// * [recycleBin]
/// * [recycleBinCleanupDays]
/// * [downloadPropersAndRepacks]
/// * [createEmptyMovieFolders]
/// * [deleteEmptyFolders]
/// * [fileDate]
/// * [rescanAfterRefresh]
/// * [autoRenameFolders]
/// * [pathsDefaultStatic]
/// * [setPermissionsLinux]
/// * [chmodFolder]
/// * [chownGroup]
/// * [skipFreeSpaceCheckWhenImporting]
/// * [minimumFreeSpaceWhenImporting]
/// * [copyUsingHardlinks]
/// * [useScriptImport]
/// * [scriptImportPath]
/// * [importExtraFiles]
/// * [extraFileExtensions]
/// * [enableMediaInfo]
@BuiltValue()
abstract class MediaManagementConfigResource
    implements
        Built<MediaManagementConfigResource,
            MediaManagementConfigResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'autoUnmonitorPreviouslyDownloadedMovies')
  bool? get autoUnmonitorPreviouslyDownloadedMovies;

  @BuiltValueField(wireName: r'recycleBin')
  String? get recycleBin;

  @BuiltValueField(wireName: r'recycleBinCleanupDays')
  int? get recycleBinCleanupDays;

  @BuiltValueField(wireName: r'downloadPropersAndRepacks')
  ProperDownloadTypes? get downloadPropersAndRepacks;
  // enum downloadPropersAndRepacksEnum {  preferAndUpgrade,  doNotUpgrade,  doNotPrefer,  };

  @BuiltValueField(wireName: r'createEmptyMovieFolders')
  bool? get createEmptyMovieFolders;

  @BuiltValueField(wireName: r'deleteEmptyFolders')
  bool? get deleteEmptyFolders;

  @BuiltValueField(wireName: r'fileDate')
  FileDateType? get fileDate;
  // enum fileDateEnum {  none,  cinemas,  release,  };

  @BuiltValueField(wireName: r'rescanAfterRefresh')
  RescanAfterRefreshType? get rescanAfterRefresh;
  // enum rescanAfterRefreshEnum {  always,  afterManual,  never,  };

  @BuiltValueField(wireName: r'autoRenameFolders')
  bool? get autoRenameFolders;

  @BuiltValueField(wireName: r'pathsDefaultStatic')
  bool? get pathsDefaultStatic;

  @BuiltValueField(wireName: r'setPermissionsLinux')
  bool? get setPermissionsLinux;

  @BuiltValueField(wireName: r'chmodFolder')
  String? get chmodFolder;

  @BuiltValueField(wireName: r'chownGroup')
  String? get chownGroup;

  @BuiltValueField(wireName: r'skipFreeSpaceCheckWhenImporting')
  bool? get skipFreeSpaceCheckWhenImporting;

  @BuiltValueField(wireName: r'minimumFreeSpaceWhenImporting')
  int? get minimumFreeSpaceWhenImporting;

  @BuiltValueField(wireName: r'copyUsingHardlinks')
  bool? get copyUsingHardlinks;

  @BuiltValueField(wireName: r'useScriptImport')
  bool? get useScriptImport;

  @BuiltValueField(wireName: r'scriptImportPath')
  String? get scriptImportPath;

  @BuiltValueField(wireName: r'importExtraFiles')
  bool? get importExtraFiles;

  @BuiltValueField(wireName: r'extraFileExtensions')
  String? get extraFileExtensions;

  @BuiltValueField(wireName: r'enableMediaInfo')
  bool? get enableMediaInfo;

  MediaManagementConfigResource._();

  factory MediaManagementConfigResource(
          [void updates(MediaManagementConfigResourceBuilder b)]) =
      _$MediaManagementConfigResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaManagementConfigResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaManagementConfigResource> get serializer =>
      _$MediaManagementConfigResourceSerializer();
}

class _$MediaManagementConfigResourceSerializer
    implements PrimitiveSerializer<MediaManagementConfigResource> {
  @override
  final Iterable<Type> types = const [
    MediaManagementConfigResource,
    _$MediaManagementConfigResource
  ];

  @override
  final String wireName = r'MediaManagementConfigResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaManagementConfigResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.autoUnmonitorPreviouslyDownloadedMovies != null) {
      yield r'autoUnmonitorPreviouslyDownloadedMovies';
      yield serializers.serialize(
        object.autoUnmonitorPreviouslyDownloadedMovies,
        specifiedType: const FullType(bool),
      );
    }
    if (object.recycleBin != null) {
      yield r'recycleBin';
      yield serializers.serialize(
        object.recycleBin,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recycleBinCleanupDays != null) {
      yield r'recycleBinCleanupDays';
      yield serializers.serialize(
        object.recycleBinCleanupDays,
        specifiedType: const FullType(int),
      );
    }
    if (object.downloadPropersAndRepacks != null) {
      yield r'downloadPropersAndRepacks';
      yield serializers.serialize(
        object.downloadPropersAndRepacks,
        specifiedType: const FullType(ProperDownloadTypes),
      );
    }
    if (object.createEmptyMovieFolders != null) {
      yield r'createEmptyMovieFolders';
      yield serializers.serialize(
        object.createEmptyMovieFolders,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deleteEmptyFolders != null) {
      yield r'deleteEmptyFolders';
      yield serializers.serialize(
        object.deleteEmptyFolders,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fileDate != null) {
      yield r'fileDate';
      yield serializers.serialize(
        object.fileDate,
        specifiedType: const FullType(FileDateType),
      );
    }
    if (object.rescanAfterRefresh != null) {
      yield r'rescanAfterRefresh';
      yield serializers.serialize(
        object.rescanAfterRefresh,
        specifiedType: const FullType(RescanAfterRefreshType),
      );
    }
    if (object.autoRenameFolders != null) {
      yield r'autoRenameFolders';
      yield serializers.serialize(
        object.autoRenameFolders,
        specifiedType: const FullType(bool),
      );
    }
    if (object.pathsDefaultStatic != null) {
      yield r'pathsDefaultStatic';
      yield serializers.serialize(
        object.pathsDefaultStatic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.setPermissionsLinux != null) {
      yield r'setPermissionsLinux';
      yield serializers.serialize(
        object.setPermissionsLinux,
        specifiedType: const FullType(bool),
      );
    }
    if (object.chmodFolder != null) {
      yield r'chmodFolder';
      yield serializers.serialize(
        object.chmodFolder,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.chownGroup != null) {
      yield r'chownGroup';
      yield serializers.serialize(
        object.chownGroup,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.skipFreeSpaceCheckWhenImporting != null) {
      yield r'skipFreeSpaceCheckWhenImporting';
      yield serializers.serialize(
        object.skipFreeSpaceCheckWhenImporting,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minimumFreeSpaceWhenImporting != null) {
      yield r'minimumFreeSpaceWhenImporting';
      yield serializers.serialize(
        object.minimumFreeSpaceWhenImporting,
        specifiedType: const FullType(int),
      );
    }
    if (object.copyUsingHardlinks != null) {
      yield r'copyUsingHardlinks';
      yield serializers.serialize(
        object.copyUsingHardlinks,
        specifiedType: const FullType(bool),
      );
    }
    if (object.useScriptImport != null) {
      yield r'useScriptImport';
      yield serializers.serialize(
        object.useScriptImport,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scriptImportPath != null) {
      yield r'scriptImportPath';
      yield serializers.serialize(
        object.scriptImportPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.importExtraFiles != null) {
      yield r'importExtraFiles';
      yield serializers.serialize(
        object.importExtraFiles,
        specifiedType: const FullType(bool),
      );
    }
    if (object.extraFileExtensions != null) {
      yield r'extraFileExtensions';
      yield serializers.serialize(
        object.extraFileExtensions,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.enableMediaInfo != null) {
      yield r'enableMediaInfo';
      yield serializers.serialize(
        object.enableMediaInfo,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaManagementConfigResource object, {
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
    required MediaManagementConfigResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'autoUnmonitorPreviouslyDownloadedMovies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoUnmonitorPreviouslyDownloadedMovies = valueDes;
          break;
        case r'recycleBin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recycleBin = valueDes;
          break;
        case r'recycleBinCleanupDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.recycleBinCleanupDays = valueDes;
          break;
        case r'downloadPropersAndRepacks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProperDownloadTypes),
          ) as ProperDownloadTypes;
          result.downloadPropersAndRepacks = valueDes;
          break;
        case r'createEmptyMovieFolders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.createEmptyMovieFolders = valueDes;
          break;
        case r'deleteEmptyFolders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deleteEmptyFolders = valueDes;
          break;
        case r'fileDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileDateType),
          ) as FileDateType;
          result.fileDate = valueDes;
          break;
        case r'rescanAfterRefresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RescanAfterRefreshType),
          ) as RescanAfterRefreshType;
          result.rescanAfterRefresh = valueDes;
          break;
        case r'autoRenameFolders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoRenameFolders = valueDes;
          break;
        case r'pathsDefaultStatic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.pathsDefaultStatic = valueDes;
          break;
        case r'setPermissionsLinux':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.setPermissionsLinux = valueDes;
          break;
        case r'chmodFolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chmodFolder = valueDes;
          break;
        case r'chownGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chownGroup = valueDes;
          break;
        case r'skipFreeSpaceCheckWhenImporting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.skipFreeSpaceCheckWhenImporting = valueDes;
          break;
        case r'minimumFreeSpaceWhenImporting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minimumFreeSpaceWhenImporting = valueDes;
          break;
        case r'copyUsingHardlinks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.copyUsingHardlinks = valueDes;
          break;
        case r'useScriptImport':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useScriptImport = valueDes;
          break;
        case r'scriptImportPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.scriptImportPath = valueDes;
          break;
        case r'importExtraFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.importExtraFiles = valueDes;
          break;
        case r'extraFileExtensions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.extraFileExtensions = valueDes;
          break;
        case r'enableMediaInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableMediaInfo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaManagementConfigResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaManagementConfigResourceBuilder();
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
