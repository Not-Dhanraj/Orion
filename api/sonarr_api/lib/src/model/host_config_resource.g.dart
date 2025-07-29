// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'host_config_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HostConfigResource extends HostConfigResource {
  @override
  final int? id;
  @override
  final String? bindAddress;
  @override
  final int? port;
  @override
  final int? sslPort;
  @override
  final bool? enableSsl;
  @override
  final bool? launchBrowser;
  @override
  final AuthenticationType? authenticationMethod;
  @override
  final AuthenticationRequiredType? authenticationRequired;
  @override
  final bool? analyticsEnabled;
  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? passwordConfirmation;
  @override
  final String? logLevel;
  @override
  final int? logSizeLimit;
  @override
  final String? consoleLogLevel;
  @override
  final String? branch;
  @override
  final String? apiKey;
  @override
  final String? sslCertPath;
  @override
  final String? sslCertPassword;
  @override
  final String? urlBase;
  @override
  final String? instanceName;
  @override
  final String? applicationUrl;
  @override
  final bool? updateAutomatically;
  @override
  final UpdateMechanism? updateMechanism;
  @override
  final String? updateScriptPath;
  @override
  final bool? proxyEnabled;
  @override
  final ProxyType? proxyType;
  @override
  final String? proxyHostname;
  @override
  final int? proxyPort;
  @override
  final String? proxyUsername;
  @override
  final String? proxyPassword;
  @override
  final String? proxyBypassFilter;
  @override
  final bool? proxyBypassLocalAddresses;
  @override
  final CertificateValidationType? certificateValidation;
  @override
  final String? backupFolder;
  @override
  final int? backupInterval;
  @override
  final int? backupRetention;
  @override
  final bool? trustCgnatIpAddresses;

  factory _$HostConfigResource(
          [void Function(HostConfigResourceBuilder)? updates]) =>
      (HostConfigResourceBuilder()..update(updates))._build();

  _$HostConfigResource._(
      {this.id,
      this.bindAddress,
      this.port,
      this.sslPort,
      this.enableSsl,
      this.launchBrowser,
      this.authenticationMethod,
      this.authenticationRequired,
      this.analyticsEnabled,
      this.username,
      this.password,
      this.passwordConfirmation,
      this.logLevel,
      this.logSizeLimit,
      this.consoleLogLevel,
      this.branch,
      this.apiKey,
      this.sslCertPath,
      this.sslCertPassword,
      this.urlBase,
      this.instanceName,
      this.applicationUrl,
      this.updateAutomatically,
      this.updateMechanism,
      this.updateScriptPath,
      this.proxyEnabled,
      this.proxyType,
      this.proxyHostname,
      this.proxyPort,
      this.proxyUsername,
      this.proxyPassword,
      this.proxyBypassFilter,
      this.proxyBypassLocalAddresses,
      this.certificateValidation,
      this.backupFolder,
      this.backupInterval,
      this.backupRetention,
      this.trustCgnatIpAddresses})
      : super._();
  @override
  HostConfigResource rebuild(
          void Function(HostConfigResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HostConfigResourceBuilder toBuilder() =>
      HostConfigResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HostConfigResource &&
        id == other.id &&
        bindAddress == other.bindAddress &&
        port == other.port &&
        sslPort == other.sslPort &&
        enableSsl == other.enableSsl &&
        launchBrowser == other.launchBrowser &&
        authenticationMethod == other.authenticationMethod &&
        authenticationRequired == other.authenticationRequired &&
        analyticsEnabled == other.analyticsEnabled &&
        username == other.username &&
        password == other.password &&
        passwordConfirmation == other.passwordConfirmation &&
        logLevel == other.logLevel &&
        logSizeLimit == other.logSizeLimit &&
        consoleLogLevel == other.consoleLogLevel &&
        branch == other.branch &&
        apiKey == other.apiKey &&
        sslCertPath == other.sslCertPath &&
        sslCertPassword == other.sslCertPassword &&
        urlBase == other.urlBase &&
        instanceName == other.instanceName &&
        applicationUrl == other.applicationUrl &&
        updateAutomatically == other.updateAutomatically &&
        updateMechanism == other.updateMechanism &&
        updateScriptPath == other.updateScriptPath &&
        proxyEnabled == other.proxyEnabled &&
        proxyType == other.proxyType &&
        proxyHostname == other.proxyHostname &&
        proxyPort == other.proxyPort &&
        proxyUsername == other.proxyUsername &&
        proxyPassword == other.proxyPassword &&
        proxyBypassFilter == other.proxyBypassFilter &&
        proxyBypassLocalAddresses == other.proxyBypassLocalAddresses &&
        certificateValidation == other.certificateValidation &&
        backupFolder == other.backupFolder &&
        backupInterval == other.backupInterval &&
        backupRetention == other.backupRetention &&
        trustCgnatIpAddresses == other.trustCgnatIpAddresses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, bindAddress.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, sslPort.hashCode);
    _$hash = $jc(_$hash, enableSsl.hashCode);
    _$hash = $jc(_$hash, launchBrowser.hashCode);
    _$hash = $jc(_$hash, authenticationMethod.hashCode);
    _$hash = $jc(_$hash, authenticationRequired.hashCode);
    _$hash = $jc(_$hash, analyticsEnabled.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, passwordConfirmation.hashCode);
    _$hash = $jc(_$hash, logLevel.hashCode);
    _$hash = $jc(_$hash, logSizeLimit.hashCode);
    _$hash = $jc(_$hash, consoleLogLevel.hashCode);
    _$hash = $jc(_$hash, branch.hashCode);
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jc(_$hash, sslCertPath.hashCode);
    _$hash = $jc(_$hash, sslCertPassword.hashCode);
    _$hash = $jc(_$hash, urlBase.hashCode);
    _$hash = $jc(_$hash, instanceName.hashCode);
    _$hash = $jc(_$hash, applicationUrl.hashCode);
    _$hash = $jc(_$hash, updateAutomatically.hashCode);
    _$hash = $jc(_$hash, updateMechanism.hashCode);
    _$hash = $jc(_$hash, updateScriptPath.hashCode);
    _$hash = $jc(_$hash, proxyEnabled.hashCode);
    _$hash = $jc(_$hash, proxyType.hashCode);
    _$hash = $jc(_$hash, proxyHostname.hashCode);
    _$hash = $jc(_$hash, proxyPort.hashCode);
    _$hash = $jc(_$hash, proxyUsername.hashCode);
    _$hash = $jc(_$hash, proxyPassword.hashCode);
    _$hash = $jc(_$hash, proxyBypassFilter.hashCode);
    _$hash = $jc(_$hash, proxyBypassLocalAddresses.hashCode);
    _$hash = $jc(_$hash, certificateValidation.hashCode);
    _$hash = $jc(_$hash, backupFolder.hashCode);
    _$hash = $jc(_$hash, backupInterval.hashCode);
    _$hash = $jc(_$hash, backupRetention.hashCode);
    _$hash = $jc(_$hash, trustCgnatIpAddresses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HostConfigResource')
          ..add('id', id)
          ..add('bindAddress', bindAddress)
          ..add('port', port)
          ..add('sslPort', sslPort)
          ..add('enableSsl', enableSsl)
          ..add('launchBrowser', launchBrowser)
          ..add('authenticationMethod', authenticationMethod)
          ..add('authenticationRequired', authenticationRequired)
          ..add('analyticsEnabled', analyticsEnabled)
          ..add('username', username)
          ..add('password', password)
          ..add('passwordConfirmation', passwordConfirmation)
          ..add('logLevel', logLevel)
          ..add('logSizeLimit', logSizeLimit)
          ..add('consoleLogLevel', consoleLogLevel)
          ..add('branch', branch)
          ..add('apiKey', apiKey)
          ..add('sslCertPath', sslCertPath)
          ..add('sslCertPassword', sslCertPassword)
          ..add('urlBase', urlBase)
          ..add('instanceName', instanceName)
          ..add('applicationUrl', applicationUrl)
          ..add('updateAutomatically', updateAutomatically)
          ..add('updateMechanism', updateMechanism)
          ..add('updateScriptPath', updateScriptPath)
          ..add('proxyEnabled', proxyEnabled)
          ..add('proxyType', proxyType)
          ..add('proxyHostname', proxyHostname)
          ..add('proxyPort', proxyPort)
          ..add('proxyUsername', proxyUsername)
          ..add('proxyPassword', proxyPassword)
          ..add('proxyBypassFilter', proxyBypassFilter)
          ..add('proxyBypassLocalAddresses', proxyBypassLocalAddresses)
          ..add('certificateValidation', certificateValidation)
          ..add('backupFolder', backupFolder)
          ..add('backupInterval', backupInterval)
          ..add('backupRetention', backupRetention)
          ..add('trustCgnatIpAddresses', trustCgnatIpAddresses))
        .toString();
  }
}

class HostConfigResourceBuilder
    implements Builder<HostConfigResource, HostConfigResourceBuilder> {
  _$HostConfigResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _bindAddress;
  String? get bindAddress => _$this._bindAddress;
  set bindAddress(String? bindAddress) => _$this._bindAddress = bindAddress;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  int? _sslPort;
  int? get sslPort => _$this._sslPort;
  set sslPort(int? sslPort) => _$this._sslPort = sslPort;

  bool? _enableSsl;
  bool? get enableSsl => _$this._enableSsl;
  set enableSsl(bool? enableSsl) => _$this._enableSsl = enableSsl;

  bool? _launchBrowser;
  bool? get launchBrowser => _$this._launchBrowser;
  set launchBrowser(bool? launchBrowser) =>
      _$this._launchBrowser = launchBrowser;

  AuthenticationType? _authenticationMethod;
  AuthenticationType? get authenticationMethod => _$this._authenticationMethod;
  set authenticationMethod(AuthenticationType? authenticationMethod) =>
      _$this._authenticationMethod = authenticationMethod;

  AuthenticationRequiredType? _authenticationRequired;
  AuthenticationRequiredType? get authenticationRequired =>
      _$this._authenticationRequired;
  set authenticationRequired(
          AuthenticationRequiredType? authenticationRequired) =>
      _$this._authenticationRequired = authenticationRequired;

  bool? _analyticsEnabled;
  bool? get analyticsEnabled => _$this._analyticsEnabled;
  set analyticsEnabled(bool? analyticsEnabled) =>
      _$this._analyticsEnabled = analyticsEnabled;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _passwordConfirmation;
  String? get passwordConfirmation => _$this._passwordConfirmation;
  set passwordConfirmation(String? passwordConfirmation) =>
      _$this._passwordConfirmation = passwordConfirmation;

  String? _logLevel;
  String? get logLevel => _$this._logLevel;
  set logLevel(String? logLevel) => _$this._logLevel = logLevel;

  int? _logSizeLimit;
  int? get logSizeLimit => _$this._logSizeLimit;
  set logSizeLimit(int? logSizeLimit) => _$this._logSizeLimit = logSizeLimit;

  String? _consoleLogLevel;
  String? get consoleLogLevel => _$this._consoleLogLevel;
  set consoleLogLevel(String? consoleLogLevel) =>
      _$this._consoleLogLevel = consoleLogLevel;

  String? _branch;
  String? get branch => _$this._branch;
  set branch(String? branch) => _$this._branch = branch;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  String? _sslCertPath;
  String? get sslCertPath => _$this._sslCertPath;
  set sslCertPath(String? sslCertPath) => _$this._sslCertPath = sslCertPath;

  String? _sslCertPassword;
  String? get sslCertPassword => _$this._sslCertPassword;
  set sslCertPassword(String? sslCertPassword) =>
      _$this._sslCertPassword = sslCertPassword;

  String? _urlBase;
  String? get urlBase => _$this._urlBase;
  set urlBase(String? urlBase) => _$this._urlBase = urlBase;

  String? _instanceName;
  String? get instanceName => _$this._instanceName;
  set instanceName(String? instanceName) => _$this._instanceName = instanceName;

  String? _applicationUrl;
  String? get applicationUrl => _$this._applicationUrl;
  set applicationUrl(String? applicationUrl) =>
      _$this._applicationUrl = applicationUrl;

  bool? _updateAutomatically;
  bool? get updateAutomatically => _$this._updateAutomatically;
  set updateAutomatically(bool? updateAutomatically) =>
      _$this._updateAutomatically = updateAutomatically;

  UpdateMechanism? _updateMechanism;
  UpdateMechanism? get updateMechanism => _$this._updateMechanism;
  set updateMechanism(UpdateMechanism? updateMechanism) =>
      _$this._updateMechanism = updateMechanism;

  String? _updateScriptPath;
  String? get updateScriptPath => _$this._updateScriptPath;
  set updateScriptPath(String? updateScriptPath) =>
      _$this._updateScriptPath = updateScriptPath;

  bool? _proxyEnabled;
  bool? get proxyEnabled => _$this._proxyEnabled;
  set proxyEnabled(bool? proxyEnabled) => _$this._proxyEnabled = proxyEnabled;

  ProxyType? _proxyType;
  ProxyType? get proxyType => _$this._proxyType;
  set proxyType(ProxyType? proxyType) => _$this._proxyType = proxyType;

  String? _proxyHostname;
  String? get proxyHostname => _$this._proxyHostname;
  set proxyHostname(String? proxyHostname) =>
      _$this._proxyHostname = proxyHostname;

  int? _proxyPort;
  int? get proxyPort => _$this._proxyPort;
  set proxyPort(int? proxyPort) => _$this._proxyPort = proxyPort;

  String? _proxyUsername;
  String? get proxyUsername => _$this._proxyUsername;
  set proxyUsername(String? proxyUsername) =>
      _$this._proxyUsername = proxyUsername;

  String? _proxyPassword;
  String? get proxyPassword => _$this._proxyPassword;
  set proxyPassword(String? proxyPassword) =>
      _$this._proxyPassword = proxyPassword;

  String? _proxyBypassFilter;
  String? get proxyBypassFilter => _$this._proxyBypassFilter;
  set proxyBypassFilter(String? proxyBypassFilter) =>
      _$this._proxyBypassFilter = proxyBypassFilter;

  bool? _proxyBypassLocalAddresses;
  bool? get proxyBypassLocalAddresses => _$this._proxyBypassLocalAddresses;
  set proxyBypassLocalAddresses(bool? proxyBypassLocalAddresses) =>
      _$this._proxyBypassLocalAddresses = proxyBypassLocalAddresses;

  CertificateValidationType? _certificateValidation;
  CertificateValidationType? get certificateValidation =>
      _$this._certificateValidation;
  set certificateValidation(CertificateValidationType? certificateValidation) =>
      _$this._certificateValidation = certificateValidation;

  String? _backupFolder;
  String? get backupFolder => _$this._backupFolder;
  set backupFolder(String? backupFolder) => _$this._backupFolder = backupFolder;

  int? _backupInterval;
  int? get backupInterval => _$this._backupInterval;
  set backupInterval(int? backupInterval) =>
      _$this._backupInterval = backupInterval;

  int? _backupRetention;
  int? get backupRetention => _$this._backupRetention;
  set backupRetention(int? backupRetention) =>
      _$this._backupRetention = backupRetention;

  bool? _trustCgnatIpAddresses;
  bool? get trustCgnatIpAddresses => _$this._trustCgnatIpAddresses;
  set trustCgnatIpAddresses(bool? trustCgnatIpAddresses) =>
      _$this._trustCgnatIpAddresses = trustCgnatIpAddresses;

  HostConfigResourceBuilder() {
    HostConfigResource._defaults(this);
  }

  HostConfigResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _bindAddress = $v.bindAddress;
      _port = $v.port;
      _sslPort = $v.sslPort;
      _enableSsl = $v.enableSsl;
      _launchBrowser = $v.launchBrowser;
      _authenticationMethod = $v.authenticationMethod;
      _authenticationRequired = $v.authenticationRequired;
      _analyticsEnabled = $v.analyticsEnabled;
      _username = $v.username;
      _password = $v.password;
      _passwordConfirmation = $v.passwordConfirmation;
      _logLevel = $v.logLevel;
      _logSizeLimit = $v.logSizeLimit;
      _consoleLogLevel = $v.consoleLogLevel;
      _branch = $v.branch;
      _apiKey = $v.apiKey;
      _sslCertPath = $v.sslCertPath;
      _sslCertPassword = $v.sslCertPassword;
      _urlBase = $v.urlBase;
      _instanceName = $v.instanceName;
      _applicationUrl = $v.applicationUrl;
      _updateAutomatically = $v.updateAutomatically;
      _updateMechanism = $v.updateMechanism;
      _updateScriptPath = $v.updateScriptPath;
      _proxyEnabled = $v.proxyEnabled;
      _proxyType = $v.proxyType;
      _proxyHostname = $v.proxyHostname;
      _proxyPort = $v.proxyPort;
      _proxyUsername = $v.proxyUsername;
      _proxyPassword = $v.proxyPassword;
      _proxyBypassFilter = $v.proxyBypassFilter;
      _proxyBypassLocalAddresses = $v.proxyBypassLocalAddresses;
      _certificateValidation = $v.certificateValidation;
      _backupFolder = $v.backupFolder;
      _backupInterval = $v.backupInterval;
      _backupRetention = $v.backupRetention;
      _trustCgnatIpAddresses = $v.trustCgnatIpAddresses;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HostConfigResource other) {
    _$v = other as _$HostConfigResource;
  }

  @override
  void update(void Function(HostConfigResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HostConfigResource build() => _build();

  _$HostConfigResource _build() {
    final _$result = _$v ??
        _$HostConfigResource._(
          id: id,
          bindAddress: bindAddress,
          port: port,
          sslPort: sslPort,
          enableSsl: enableSsl,
          launchBrowser: launchBrowser,
          authenticationMethod: authenticationMethod,
          authenticationRequired: authenticationRequired,
          analyticsEnabled: analyticsEnabled,
          username: username,
          password: password,
          passwordConfirmation: passwordConfirmation,
          logLevel: logLevel,
          logSizeLimit: logSizeLimit,
          consoleLogLevel: consoleLogLevel,
          branch: branch,
          apiKey: apiKey,
          sslCertPath: sslCertPath,
          sslCertPassword: sslCertPassword,
          urlBase: urlBase,
          instanceName: instanceName,
          applicationUrl: applicationUrl,
          updateAutomatically: updateAutomatically,
          updateMechanism: updateMechanism,
          updateScriptPath: updateScriptPath,
          proxyEnabled: proxyEnabled,
          proxyType: proxyType,
          proxyHostname: proxyHostname,
          proxyPort: proxyPort,
          proxyUsername: proxyUsername,
          proxyPassword: proxyPassword,
          proxyBypassFilter: proxyBypassFilter,
          proxyBypassLocalAddresses: proxyBypassLocalAddresses,
          certificateValidation: certificateValidation,
          backupFolder: backupFolder,
          backupInterval: backupInterval,
          backupRetention: backupRetention,
          trustCgnatIpAddresses: trustCgnatIpAddresses,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
