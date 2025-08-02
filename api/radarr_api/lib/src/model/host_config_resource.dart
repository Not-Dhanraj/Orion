//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr/src/model/update_mechanism.dart';
import 'package:radarr/src/model/authentication_type.dart';
import 'package:radarr/src/model/proxy_type.dart';
import 'package:radarr/src/model/authentication_required_type.dart';
import 'package:radarr/src/model/certificate_validation_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'host_config_resource.g.dart';

/// HostConfigResource
///
/// Properties:
/// * [id]
/// * [bindAddress]
/// * [port]
/// * [sslPort]
/// * [enableSsl]
/// * [launchBrowser]
/// * [authenticationMethod]
/// * [authenticationRequired]
/// * [analyticsEnabled]
/// * [username]
/// * [password]
/// * [passwordConfirmation]
/// * [logLevel]
/// * [logSizeLimit]
/// * [consoleLogLevel]
/// * [branch]
/// * [apiKey]
/// * [sslCertPath]
/// * [sslCertPassword]
/// * [urlBase]
/// * [instanceName]
/// * [applicationUrl]
/// * [updateAutomatically]
/// * [updateMechanism]
/// * [updateScriptPath]
/// * [proxyEnabled]
/// * [proxyType]
/// * [proxyHostname]
/// * [proxyPort]
/// * [proxyUsername]
/// * [proxyPassword]
/// * [proxyBypassFilter]
/// * [proxyBypassLocalAddresses]
/// * [certificateValidation]
/// * [backupFolder]
/// * [backupInterval]
/// * [backupRetention]
/// * [trustCgnatIpAddresses]
@BuiltValue()
abstract class HostConfigResource
    implements Built<HostConfigResource, HostConfigResourceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'bindAddress')
  String? get bindAddress;

  @BuiltValueField(wireName: r'port')
  int? get port;

  @BuiltValueField(wireName: r'sslPort')
  int? get sslPort;

  @BuiltValueField(wireName: r'enableSsl')
  bool? get enableSsl;

  @BuiltValueField(wireName: r'launchBrowser')
  bool? get launchBrowser;

  @BuiltValueField(wireName: r'authenticationMethod')
  AuthenticationType? get authenticationMethod;
  // enum authenticationMethodEnum {  none,  basic,  forms,  external,  };

  @BuiltValueField(wireName: r'authenticationRequired')
  AuthenticationRequiredType? get authenticationRequired;
  // enum authenticationRequiredEnum {  enabled,  disabledForLocalAddresses,  };

  @BuiltValueField(wireName: r'analyticsEnabled')
  bool? get analyticsEnabled;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'passwordConfirmation')
  String? get passwordConfirmation;

  @BuiltValueField(wireName: r'logLevel')
  String? get logLevel;

  @BuiltValueField(wireName: r'logSizeLimit')
  int? get logSizeLimit;

  @BuiltValueField(wireName: r'consoleLogLevel')
  String? get consoleLogLevel;

  @BuiltValueField(wireName: r'branch')
  String? get branch;

  @BuiltValueField(wireName: r'apiKey')
  String? get apiKey;

  @BuiltValueField(wireName: r'sslCertPath')
  String? get sslCertPath;

  @BuiltValueField(wireName: r'sslCertPassword')
  String? get sslCertPassword;

  @BuiltValueField(wireName: r'urlBase')
  String? get urlBase;

  @BuiltValueField(wireName: r'instanceName')
  String? get instanceName;

  @BuiltValueField(wireName: r'applicationUrl')
  String? get applicationUrl;

  @BuiltValueField(wireName: r'updateAutomatically')
  bool? get updateAutomatically;

  @BuiltValueField(wireName: r'updateMechanism')
  UpdateMechanism? get updateMechanism;
  // enum updateMechanismEnum {  builtIn,  script,  external,  apt,  docker,  };

  @BuiltValueField(wireName: r'updateScriptPath')
  String? get updateScriptPath;

  @BuiltValueField(wireName: r'proxyEnabled')
  bool? get proxyEnabled;

  @BuiltValueField(wireName: r'proxyType')
  ProxyType? get proxyType;
  // enum proxyTypeEnum {  http,  socks4,  socks5,  };

  @BuiltValueField(wireName: r'proxyHostname')
  String? get proxyHostname;

  @BuiltValueField(wireName: r'proxyPort')
  int? get proxyPort;

  @BuiltValueField(wireName: r'proxyUsername')
  String? get proxyUsername;

  @BuiltValueField(wireName: r'proxyPassword')
  String? get proxyPassword;

  @BuiltValueField(wireName: r'proxyBypassFilter')
  String? get proxyBypassFilter;

  @BuiltValueField(wireName: r'proxyBypassLocalAddresses')
  bool? get proxyBypassLocalAddresses;

  @BuiltValueField(wireName: r'certificateValidation')
  CertificateValidationType? get certificateValidation;
  // enum certificateValidationEnum {  enabled,  disabledForLocalAddresses,  disabled,  };

  @BuiltValueField(wireName: r'backupFolder')
  String? get backupFolder;

  @BuiltValueField(wireName: r'backupInterval')
  int? get backupInterval;

  @BuiltValueField(wireName: r'backupRetention')
  int? get backupRetention;

  @BuiltValueField(wireName: r'trustCgnatIpAddresses')
  bool? get trustCgnatIpAddresses;

  HostConfigResource._();

  factory HostConfigResource([void updates(HostConfigResourceBuilder b)]) =
      _$HostConfigResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HostConfigResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HostConfigResource> get serializer =>
      _$HostConfigResourceSerializer();
}

class _$HostConfigResourceSerializer
    implements PrimitiveSerializer<HostConfigResource> {
  @override
  final Iterable<Type> types = const [HostConfigResource, _$HostConfigResource];

  @override
  final String wireName = r'HostConfigResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HostConfigResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.bindAddress != null) {
      yield r'bindAddress';
      yield serializers.serialize(
        object.bindAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.port != null) {
      yield r'port';
      yield serializers.serialize(
        object.port,
        specifiedType: const FullType(int),
      );
    }
    if (object.sslPort != null) {
      yield r'sslPort';
      yield serializers.serialize(
        object.sslPort,
        specifiedType: const FullType(int),
      );
    }
    if (object.enableSsl != null) {
      yield r'enableSsl';
      yield serializers.serialize(
        object.enableSsl,
        specifiedType: const FullType(bool),
      );
    }
    if (object.launchBrowser != null) {
      yield r'launchBrowser';
      yield serializers.serialize(
        object.launchBrowser,
        specifiedType: const FullType(bool),
      );
    }
    if (object.authenticationMethod != null) {
      yield r'authenticationMethod';
      yield serializers.serialize(
        object.authenticationMethod,
        specifiedType: const FullType(AuthenticationType),
      );
    }
    if (object.authenticationRequired != null) {
      yield r'authenticationRequired';
      yield serializers.serialize(
        object.authenticationRequired,
        specifiedType: const FullType(AuthenticationRequiredType),
      );
    }
    if (object.analyticsEnabled != null) {
      yield r'analyticsEnabled';
      yield serializers.serialize(
        object.analyticsEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.passwordConfirmation != null) {
      yield r'passwordConfirmation';
      yield serializers.serialize(
        object.passwordConfirmation,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.logLevel != null) {
      yield r'logLevel';
      yield serializers.serialize(
        object.logLevel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.logSizeLimit != null) {
      yield r'logSizeLimit';
      yield serializers.serialize(
        object.logSizeLimit,
        specifiedType: const FullType(int),
      );
    }
    if (object.consoleLogLevel != null) {
      yield r'consoleLogLevel';
      yield serializers.serialize(
        object.consoleLogLevel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.branch != null) {
      yield r'branch';
      yield serializers.serialize(
        object.branch,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.apiKey != null) {
      yield r'apiKey';
      yield serializers.serialize(
        object.apiKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sslCertPath != null) {
      yield r'sslCertPath';
      yield serializers.serialize(
        object.sslCertPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sslCertPassword != null) {
      yield r'sslCertPassword';
      yield serializers.serialize(
        object.sslCertPassword,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.urlBase != null) {
      yield r'urlBase';
      yield serializers.serialize(
        object.urlBase,
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
    if (object.applicationUrl != null) {
      yield r'applicationUrl';
      yield serializers.serialize(
        object.applicationUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updateAutomatically != null) {
      yield r'updateAutomatically';
      yield serializers.serialize(
        object.updateAutomatically,
        specifiedType: const FullType(bool),
      );
    }
    if (object.updateMechanism != null) {
      yield r'updateMechanism';
      yield serializers.serialize(
        object.updateMechanism,
        specifiedType: const FullType(UpdateMechanism),
      );
    }
    if (object.updateScriptPath != null) {
      yield r'updateScriptPath';
      yield serializers.serialize(
        object.updateScriptPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.proxyEnabled != null) {
      yield r'proxyEnabled';
      yield serializers.serialize(
        object.proxyEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.proxyType != null) {
      yield r'proxyType';
      yield serializers.serialize(
        object.proxyType,
        specifiedType: const FullType(ProxyType),
      );
    }
    if (object.proxyHostname != null) {
      yield r'proxyHostname';
      yield serializers.serialize(
        object.proxyHostname,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.proxyPort != null) {
      yield r'proxyPort';
      yield serializers.serialize(
        object.proxyPort,
        specifiedType: const FullType(int),
      );
    }
    if (object.proxyUsername != null) {
      yield r'proxyUsername';
      yield serializers.serialize(
        object.proxyUsername,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.proxyPassword != null) {
      yield r'proxyPassword';
      yield serializers.serialize(
        object.proxyPassword,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.proxyBypassFilter != null) {
      yield r'proxyBypassFilter';
      yield serializers.serialize(
        object.proxyBypassFilter,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.proxyBypassLocalAddresses != null) {
      yield r'proxyBypassLocalAddresses';
      yield serializers.serialize(
        object.proxyBypassLocalAddresses,
        specifiedType: const FullType(bool),
      );
    }
    if (object.certificateValidation != null) {
      yield r'certificateValidation';
      yield serializers.serialize(
        object.certificateValidation,
        specifiedType: const FullType(CertificateValidationType),
      );
    }
    if (object.backupFolder != null) {
      yield r'backupFolder';
      yield serializers.serialize(
        object.backupFolder,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.backupInterval != null) {
      yield r'backupInterval';
      yield serializers.serialize(
        object.backupInterval,
        specifiedType: const FullType(int),
      );
    }
    if (object.backupRetention != null) {
      yield r'backupRetention';
      yield serializers.serialize(
        object.backupRetention,
        specifiedType: const FullType(int),
      );
    }
    if (object.trustCgnatIpAddresses != null) {
      yield r'trustCgnatIpAddresses';
      yield serializers.serialize(
        object.trustCgnatIpAddresses,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HostConfigResource object, {
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
    required HostConfigResourceBuilder result,
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
        case r'bindAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bindAddress = valueDes;
          break;
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.port = valueDes;
          break;
        case r'sslPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sslPort = valueDes;
          break;
        case r'enableSsl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableSsl = valueDes;
          break;
        case r'launchBrowser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.launchBrowser = valueDes;
          break;
        case r'authenticationMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthenticationType),
          ) as AuthenticationType;
          result.authenticationMethod = valueDes;
          break;
        case r'authenticationRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AuthenticationRequiredType),
          ) as AuthenticationRequiredType;
          result.authenticationRequired = valueDes;
          break;
        case r'analyticsEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.analyticsEnabled = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.username = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        case r'passwordConfirmation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.passwordConfirmation = valueDes;
          break;
        case r'logLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.logLevel = valueDes;
          break;
        case r'logSizeLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.logSizeLimit = valueDes;
          break;
        case r'consoleLogLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.consoleLogLevel = valueDes;
          break;
        case r'branch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.branch = valueDes;
          break;
        case r'apiKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.apiKey = valueDes;
          break;
        case r'sslCertPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sslCertPath = valueDes;
          break;
        case r'sslCertPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sslCertPassword = valueDes;
          break;
        case r'urlBase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.urlBase = valueDes;
          break;
        case r'instanceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.instanceName = valueDes;
          break;
        case r'applicationUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.applicationUrl = valueDes;
          break;
        case r'updateAutomatically':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.updateAutomatically = valueDes;
          break;
        case r'updateMechanism':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateMechanism),
          ) as UpdateMechanism;
          result.updateMechanism = valueDes;
          break;
        case r'updateScriptPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.updateScriptPath = valueDes;
          break;
        case r'proxyEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.proxyEnabled = valueDes;
          break;
        case r'proxyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProxyType),
          ) as ProxyType;
          result.proxyType = valueDes;
          break;
        case r'proxyHostname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.proxyHostname = valueDes;
          break;
        case r'proxyPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.proxyPort = valueDes;
          break;
        case r'proxyUsername':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.proxyUsername = valueDes;
          break;
        case r'proxyPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.proxyPassword = valueDes;
          break;
        case r'proxyBypassFilter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.proxyBypassFilter = valueDes;
          break;
        case r'proxyBypassLocalAddresses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.proxyBypassLocalAddresses = valueDes;
          break;
        case r'certificateValidation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CertificateValidationType),
          ) as CertificateValidationType;
          result.certificateValidation = valueDes;
          break;
        case r'backupFolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.backupFolder = valueDes;
          break;
        case r'backupInterval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.backupInterval = valueDes;
          break;
        case r'backupRetention':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.backupRetention = valueDes;
          break;
        case r'trustCgnatIpAddresses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.trustCgnatIpAddresses = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HostConfigResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostConfigResourceBuilder();
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
