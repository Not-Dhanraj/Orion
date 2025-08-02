// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateResource extends UpdateResource {
  @override
  final int? id;
  @override
  final String? version;
  @override
  final String? branch;
  @override
  final DateTime? releaseDate;
  @override
  final String? fileName;
  @override
  final String? url;
  @override
  final bool? installed;
  @override
  final DateTime? installedOn;
  @override
  final bool? installable;
  @override
  final bool? latest;
  @override
  final UpdateChanges? changes;
  @override
  final String? hash;

  factory _$UpdateResource([void Function(UpdateResourceBuilder)? updates]) =>
      (UpdateResourceBuilder()..update(updates))._build();

  _$UpdateResource._(
      {this.id,
      this.version,
      this.branch,
      this.releaseDate,
      this.fileName,
      this.url,
      this.installed,
      this.installedOn,
      this.installable,
      this.latest,
      this.changes,
      this.hash})
      : super._();
  @override
  UpdateResource rebuild(void Function(UpdateResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateResourceBuilder toBuilder() => UpdateResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateResource &&
        id == other.id &&
        version == other.version &&
        branch == other.branch &&
        releaseDate == other.releaseDate &&
        fileName == other.fileName &&
        url == other.url &&
        installed == other.installed &&
        installedOn == other.installedOn &&
        installable == other.installable &&
        latest == other.latest &&
        changes == other.changes &&
        hash == other.hash;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, branch.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, installed.hashCode);
    _$hash = $jc(_$hash, installedOn.hashCode);
    _$hash = $jc(_$hash, installable.hashCode);
    _$hash = $jc(_$hash, latest.hashCode);
    _$hash = $jc(_$hash, changes.hashCode);
    _$hash = $jc(_$hash, hash.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateResource')
          ..add('id', id)
          ..add('version', version)
          ..add('branch', branch)
          ..add('releaseDate', releaseDate)
          ..add('fileName', fileName)
          ..add('url', url)
          ..add('installed', installed)
          ..add('installedOn', installedOn)
          ..add('installable', installable)
          ..add('latest', latest)
          ..add('changes', changes)
          ..add('hash', hash))
        .toString();
  }
}

class UpdateResourceBuilder
    implements Builder<UpdateResource, UpdateResourceBuilder> {
  _$UpdateResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _branch;
  String? get branch => _$this._branch;
  set branch(String? branch) => _$this._branch = branch;

  DateTime? _releaseDate;
  DateTime? get releaseDate => _$this._releaseDate;
  set releaseDate(DateTime? releaseDate) => _$this._releaseDate = releaseDate;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  bool? _installed;
  bool? get installed => _$this._installed;
  set installed(bool? installed) => _$this._installed = installed;

  DateTime? _installedOn;
  DateTime? get installedOn => _$this._installedOn;
  set installedOn(DateTime? installedOn) => _$this._installedOn = installedOn;

  bool? _installable;
  bool? get installable => _$this._installable;
  set installable(bool? installable) => _$this._installable = installable;

  bool? _latest;
  bool? get latest => _$this._latest;
  set latest(bool? latest) => _$this._latest = latest;

  UpdateChangesBuilder? _changes;
  UpdateChangesBuilder get changes =>
      _$this._changes ??= UpdateChangesBuilder();
  set changes(UpdateChangesBuilder? changes) => _$this._changes = changes;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  UpdateResourceBuilder() {
    UpdateResource._defaults(this);
  }

  UpdateResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _version = $v.version;
      _branch = $v.branch;
      _releaseDate = $v.releaseDate;
      _fileName = $v.fileName;
      _url = $v.url;
      _installed = $v.installed;
      _installedOn = $v.installedOn;
      _installable = $v.installable;
      _latest = $v.latest;
      _changes = $v.changes?.toBuilder();
      _hash = $v.hash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateResource other) {
    _$v = other as _$UpdateResource;
  }

  @override
  void update(void Function(UpdateResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateResource build() => _build();

  _$UpdateResource _build() {
    _$UpdateResource _$result;
    try {
      _$result = _$v ??
          _$UpdateResource._(
            id: id,
            version: version,
            branch: branch,
            releaseDate: releaseDate,
            fileName: fileName,
            url: url,
            installed: installed,
            installedOn: installedOn,
            installable: installable,
            latest: latest,
            changes: _changes?.build(),
            hash: hash,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'changes';
        _changes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
