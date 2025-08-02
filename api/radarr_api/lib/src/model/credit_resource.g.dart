// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreditResource extends CreditResource {
  @override
  final int? id;
  @override
  final String? personName;
  @override
  final String? creditTmdbId;
  @override
  final int? personTmdbId;
  @override
  final int? movieMetadataId;
  @override
  final BuiltList<MediaCover>? images;
  @override
  final String? department;
  @override
  final String? job;
  @override
  final String? character;
  @override
  final int? order;
  @override
  final CreditType? type;

  factory _$CreditResource([void Function(CreditResourceBuilder)? updates]) =>
      (CreditResourceBuilder()..update(updates))._build();

  _$CreditResource._(
      {this.id,
      this.personName,
      this.creditTmdbId,
      this.personTmdbId,
      this.movieMetadataId,
      this.images,
      this.department,
      this.job,
      this.character,
      this.order,
      this.type})
      : super._();
  @override
  CreditResource rebuild(void Function(CreditResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreditResourceBuilder toBuilder() => CreditResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreditResource &&
        id == other.id &&
        personName == other.personName &&
        creditTmdbId == other.creditTmdbId &&
        personTmdbId == other.personTmdbId &&
        movieMetadataId == other.movieMetadataId &&
        images == other.images &&
        department == other.department &&
        job == other.job &&
        character == other.character &&
        order == other.order &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, personName.hashCode);
    _$hash = $jc(_$hash, creditTmdbId.hashCode);
    _$hash = $jc(_$hash, personTmdbId.hashCode);
    _$hash = $jc(_$hash, movieMetadataId.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, department.hashCode);
    _$hash = $jc(_$hash, job.hashCode);
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreditResource')
          ..add('id', id)
          ..add('personName', personName)
          ..add('creditTmdbId', creditTmdbId)
          ..add('personTmdbId', personTmdbId)
          ..add('movieMetadataId', movieMetadataId)
          ..add('images', images)
          ..add('department', department)
          ..add('job', job)
          ..add('character', character)
          ..add('order', order)
          ..add('type', type))
        .toString();
  }
}

class CreditResourceBuilder
    implements Builder<CreditResource, CreditResourceBuilder> {
  _$CreditResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _personName;
  String? get personName => _$this._personName;
  set personName(String? personName) => _$this._personName = personName;

  String? _creditTmdbId;
  String? get creditTmdbId => _$this._creditTmdbId;
  set creditTmdbId(String? creditTmdbId) => _$this._creditTmdbId = creditTmdbId;

  int? _personTmdbId;
  int? get personTmdbId => _$this._personTmdbId;
  set personTmdbId(int? personTmdbId) => _$this._personTmdbId = personTmdbId;

  int? _movieMetadataId;
  int? get movieMetadataId => _$this._movieMetadataId;
  set movieMetadataId(int? movieMetadataId) =>
      _$this._movieMetadataId = movieMetadataId;

  ListBuilder<MediaCover>? _images;
  ListBuilder<MediaCover> get images =>
      _$this._images ??= ListBuilder<MediaCover>();
  set images(ListBuilder<MediaCover>? images) => _$this._images = images;

  String? _department;
  String? get department => _$this._department;
  set department(String? department) => _$this._department = department;

  String? _job;
  String? get job => _$this._job;
  set job(String? job) => _$this._job = job;

  String? _character;
  String? get character => _$this._character;
  set character(String? character) => _$this._character = character;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  CreditType? _type;
  CreditType? get type => _$this._type;
  set type(CreditType? type) => _$this._type = type;

  CreditResourceBuilder() {
    CreditResource._defaults(this);
  }

  CreditResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _personName = $v.personName;
      _creditTmdbId = $v.creditTmdbId;
      _personTmdbId = $v.personTmdbId;
      _movieMetadataId = $v.movieMetadataId;
      _images = $v.images?.toBuilder();
      _department = $v.department;
      _job = $v.job;
      _character = $v.character;
      _order = $v.order;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreditResource other) {
    _$v = other as _$CreditResource;
  }

  @override
  void update(void Function(CreditResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreditResource build() => _build();

  _$CreditResource _build() {
    _$CreditResource _$result;
    try {
      _$result = _$v ??
          _$CreditResource._(
            id: id,
            personName: personName,
            creditTmdbId: creditTmdbId,
            personTmdbId: personTmdbId,
            movieMetadataId: movieMetadataId,
            images: _images?.build(),
            department: department,
            job: job,
            character: character,
            order: order,
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreditResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
