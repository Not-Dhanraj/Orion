// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_rejection_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportRejectionResource extends ImportRejectionResource {
  @override
  final String? reason;
  @override
  final RejectionType? type;

  factory _$ImportRejectionResource(
          [void Function(ImportRejectionResourceBuilder)? updates]) =>
      (ImportRejectionResourceBuilder()..update(updates))._build();

  _$ImportRejectionResource._({this.reason, this.type}) : super._();
  @override
  ImportRejectionResource rebuild(
          void Function(ImportRejectionResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportRejectionResourceBuilder toBuilder() =>
      ImportRejectionResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportRejectionResource &&
        reason == other.reason &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportRejectionResource')
          ..add('reason', reason)
          ..add('type', type))
        .toString();
  }
}

class ImportRejectionResourceBuilder
    implements
        Builder<ImportRejectionResource, ImportRejectionResourceBuilder> {
  _$ImportRejectionResource? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  RejectionType? _type;
  RejectionType? get type => _$this._type;
  set type(RejectionType? type) => _$this._type = type;

  ImportRejectionResourceBuilder() {
    ImportRejectionResource._defaults(this);
  }

  ImportRejectionResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportRejectionResource other) {
    _$v = other as _$ImportRejectionResource;
  }

  @override
  void update(void Function(ImportRejectionResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportRejectionResource build() => _build();

  _$ImportRejectionResource _build() {
    final _$result = _$v ??
        _$ImportRejectionResource._(
          reason: reason,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
