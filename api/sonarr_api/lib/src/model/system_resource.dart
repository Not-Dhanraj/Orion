//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr/src/model/database_type.dart';
import 'package:sonarr/src/model/authentication_type.dart';
import 'package:sonarr/src/model/runtime_mode.dart';
import 'package:sonarr/src/model/update_mechanism.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_resource.g.dart';

/// SystemResource
///
/// Properties:
/// * [appName]
/// * [instanceName]
/// * [version]
/// * [buildTime]
/// * [isDebug]
/// * [isProduction]
/// * [isAdmin]
/// * [isUserInteractive]
/// * [startupPath]
/// * [appData]
/// * [osName]
/// * [osVersion]
/// * [isNetCore]
/// * [isLinux]
/// * [isOsx]
/// * [isWindows]
/// * [isDocker]
/// * [mode]
/// * [branch]
/// * [authentication]
/// * [sqliteVersion]
/// * [migrationVersion]
/// * [urlBase]
/// * [runtimeVersion]
/// * [runtimeName]
/// * [startTime]
/// * [packageVersion]
/// * [packageAuthor]
/// * [packageUpdateMechanism]
/// * [packageUpdateMechanismMessage]
/// * [databaseVersion]
/// * [databaseType]
@BuiltValue()
abstract class SystemResource
    implements Built<SystemResource, SystemResourceBuilder> {
  @BuiltValueField(wireName: r'appName')
  String? get appName;

  @BuiltValueField(wireName: r'instanceName')
  String? get instanceName;

  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'buildTime')
  DateTime? get buildTime;

  @BuiltValueField(wireName: r'isDebug')
  bool? get isDebug;

  @BuiltValueField(wireName: r'isProduction')
  bool? get isProduction;

  @BuiltValueField(wireName: r'isAdmin')
  bool? get isAdmin;

  @BuiltValueField(wireName: r'isUserInteractive')
  bool? get isUserInteractive;

  @BuiltValueField(wireName: r'startupPath')
  String? get startupPath;

  @BuiltValueField(wireName: r'appData')
  String? get appData;

  @BuiltValueField(wireName: r'osName')
  String? get osName;

  @BuiltValueField(wireName: r'osVersion')
  String? get osVersion;

  @BuiltValueField(wireName: r'isNetCore')
  bool? get isNetCore;

  @BuiltValueField(wireName: r'isLinux')
  bool? get isLinux;

  @BuiltValueField(wireName: r'isOsx')
  bool? get isOsx;

  @BuiltValueField(wireName: r'isWindows')
  bool? get isWindows;

  @BuiltValueField(wireName: r'isDocker')
  bool? get isDocker;

  @BuiltValueField(wireName: r'mode')
  RuntimeMode? get mode;
  // enum modeEnum {  console,  service,  tray,  };

  @BuiltValueField(wireName: r'branch')
  String? get branch;

  @BuiltValueField(wireName: r'authentication')
  AuthenticationType? get authentication;
  // enum authenticationEnum {  none,  basic,  forms,  external,  };

  @BuiltValueField(wireName: r'sqliteVersion')
  String? get sqliteVersion;

  @BuiltValueField(wireName: r'migrationVersion')
  int? get migrationVersion;

  @BuiltValueField(wireName: r'urlBase')
  String? get urlBase;

  @BuiltValueField(wireName: r'runtimeVersion')
  String? get runtimeVersion;

  @BuiltValueField(wireName: r'runtimeName')
  String? get runtimeName;

  @BuiltValueField(wireName: r'startTime')
  DateTime? get startTime;

  @BuiltValueField(wireName: r'packageVersion')
  String? get packageVersion;

  @BuiltValueField(wireName: r'packageAuthor')
  String? get packageAuthor;

  @BuiltValueField(wireName: r'packageUpdateMechanism')
  UpdateMechanism? get packageUpdateMechanism;
  // enum packageUpdateMechanismEnum {  builtIn,  script,  external,  apt,  docker,  };

  @BuiltValueField(wireName: r'packageUpdateMechanismMessage')
  String? get packageUpdateMechanismMessage;

  @BuiltValueField(wireName: r'databaseVersion')
  String? get databaseVersion;

  @BuiltValueField(wireName: r'databaseType')
  DatabaseType? get databaseType;
  // enum databaseTypeEnum {  sqLite,  postgreSQL,  };

  SystemResource._();

  factory SystemResource([void updates(SystemResourceBuilder b)]) =
      _$SystemResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemResource> get serializer =>
      _$SystemResourceSerializer();
}

class _$SystemResourceSerializer
    implements PrimitiveSerializer<SystemResource> {
  @override
  final Iterable<Type> types = const [SystemResource, _$SystemResource];

  @override
  final String wireName = r'SystemResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.appName != null) {
      yield r'appName';
      yield serializers.serialize(
        object.appName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.instanceName != null) {
      yield r'instanceName';
      yield serializers.serialize(
        object.instanceName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buildTime != null) {
      yield r'buildTime';
      yield serializers.serialize(
        object.buildTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.isDebug != null) {
      yield r'isDebug';
      yield serializers.serialize(
        object.isDebug,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isProduction != null) {
      yield r'isProduction';
      yield serializers.serialize(
        object.isProduction,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isAdmin != null) {
      yield r'isAdmin';
      yield serializers.serialize(
        object.isAdmin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isUserInteractive != null) {
      yield r'isUserInteractive';
      yield serializers.serialize(
        object.isUserInteractive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.startupPath != null) {
      yield r'startupPath';
      yield serializers.serialize(
        object.startupPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.appData != null) {
      yield r'appData';
      yield serializers.serialize(
        object.appData,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.osName != null) {
      yield r'osName';
      yield serializers.serialize(
        object.osName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.osVersion != null) {
      yield r'osVersion';
      yield serializers.serialize(
        object.osVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isNetCore != null) {
      yield r'isNetCore';
      yield serializers.serialize(
        object.isNetCore,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isLinux != null) {
      yield r'isLinux';
      yield serializers.serialize(
        object.isLinux,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isOsx != null) {
      yield r'isOsx';
      yield serializers.serialize(
        object.isOsx,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isWindows != null) {
      yield r'isWindows';
      yield serializers.serialize(
        object.isWindows,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isDocker != null) {
      yield r'isDocker';
      yield serializers.serialize(
        object.isDocker,
        specifiedType: const FullType(bool),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(RuntimeMode),
      );
    }
    if (object.branch != null) {
      yield r'branch';
      yield serializers.serialize(
        object.branch,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.authentication != null) {
      yield r'authentication';
      yield serializers.serialize(
        object.authentication,
        specifiedType: const FullType(AuthenticationType),
      );
    }
    if (object.sqliteVersion != null) {
      yield r'sqliteVersion';
      yield serializers.serialize(
        object.sqliteVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.migrationVersion != null) {
      yield r'migrationVersion';
      yield serializers.serialize(
        object.migrationVersion,
        specifiedType: const FullType(int),
      );
    }
    if (object.urlBase != null) {
      yield r'urlBase';
      yield serializers.serialize(
        object.urlBase,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.runtimeVersion != null) {
      yield r'runtimeVersion';
      yield serializers.serialize(
        object.runtimeVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.runtimeName != null) {
      yield r'runtimeName';
      yield serializers.serialize(
        object.runtimeName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.startTime != null) {
      yield r'startTime';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.packageVersion != null) {
      yield r'packageVersion';
      yield serializers.serialize(
        object.packageVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.packageAuthor != null) {
      yield r'packageAuthor';
      yield serializers.serialize(
        object.packageAuthor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.packageUpdateMechanism != null) {
      yield r'packageUpdateMechanism';
      yield serializers.serialize(
        object.packageUpdateMechanism,
        specifiedType: const FullType(UpdateMechanism),
      );
    }
    if (object.packageUpdateMechanismMessage != null) {
      yield r'packageUpdateMechanismMessage';
      yield serializers.serialize(
        object.packageUpdateMechanismMessage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.databaseVersion != null) {
      yield r'databaseVersion';
      yield serializers.serialize(
        object.databaseVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.databaseType != null) {
      yield r'databaseType';
      yield serializers.serialize(
        object.databaseType,
        specifiedType: const FullType(DatabaseType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemResource object, {
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
    required SystemResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'appName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appName = valueDes;
          break;
        case r'instanceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.instanceName = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'buildTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.buildTime = valueDes;
          break;
        case r'isDebug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDebug = valueDes;
          break;
        case r'isProduction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isProduction = valueDes;
          break;
        case r'isAdmin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAdmin = valueDes;
          break;
        case r'isUserInteractive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isUserInteractive = valueDes;
          break;
        case r'startupPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.startupPath = valueDes;
          break;
        case r'appData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appData = valueDes;
          break;
        case r'osName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.osName = valueDes;
          break;
        case r'osVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.osVersion = valueDes;
          break;
        case r'isNetCore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isNetCore = valueDes;
          break;
        case r'isLinux':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isLinux = valueDes;
          break;
        case r'isOsx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOsx = valueDes;
          break;
        case r'isWindows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isWindows = valueDes;
          break;
        case r'isDocker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDocker = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RuntimeMode),
          ) as RuntimeMode;
          result.mode = valueDes;
          break;
        case r'branch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.branch = valueDes;
          break;
        case r'authentication':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthenticationType),
          ) as AuthenticationType;
          result.authentication = valueDes;
          break;
        case r'sqliteVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sqliteVersion = valueDes;
          break;
        case r'migrationVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.migrationVersion = valueDes;
          break;
        case r'urlBase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.urlBase = valueDes;
          break;
        case r'runtimeVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.runtimeVersion = valueDes;
          break;
        case r'runtimeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.runtimeName = valueDes;
          break;
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startTime = valueDes;
          break;
        case r'packageVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.packageVersion = valueDes;
          break;
        case r'packageAuthor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.packageAuthor = valueDes;
          break;
        case r'packageUpdateMechanism':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateMechanism),
          ) as UpdateMechanism;
          result.packageUpdateMechanism = valueDes;
          break;
        case r'packageUpdateMechanismMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.packageUpdateMechanismMessage = valueDes;
          break;
        case r'databaseVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.databaseVersion = valueDes;
          break;
        case r'databaseType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DatabaseType),
          ) as DatabaseType;
          result.databaseType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemResourceBuilder();
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
