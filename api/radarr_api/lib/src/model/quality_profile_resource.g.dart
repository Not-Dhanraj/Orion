// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality_profile_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QualityProfileResource extends QualityProfileResource {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? upgradeAllowed;
  @override
  final int? cutoff;
  @override
  final BuiltList<QualityProfileQualityItemResource>? items;
  @override
  final int? minFormatScore;
  @override
  final int? cutoffFormatScore;
  @override
  final int? minUpgradeFormatScore;
  @override
  final BuiltList<ProfileFormatItemResource>? formatItems;
  @override
  final Language? language;

  factory _$QualityProfileResource(
          [void Function(QualityProfileResourceBuilder)? updates]) =>
      (QualityProfileResourceBuilder()..update(updates))._build();

  _$QualityProfileResource._(
      {this.id,
      this.name,
      this.upgradeAllowed,
      this.cutoff,
      this.items,
      this.minFormatScore,
      this.cutoffFormatScore,
      this.minUpgradeFormatScore,
      this.formatItems,
      this.language})
      : super._();
  @override
  QualityProfileResource rebuild(
          void Function(QualityProfileResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QualityProfileResourceBuilder toBuilder() =>
      QualityProfileResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QualityProfileResource &&
        id == other.id &&
        name == other.name &&
        upgradeAllowed == other.upgradeAllowed &&
        cutoff == other.cutoff &&
        items == other.items &&
        minFormatScore == other.minFormatScore &&
        cutoffFormatScore == other.cutoffFormatScore &&
        minUpgradeFormatScore == other.minUpgradeFormatScore &&
        formatItems == other.formatItems &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, upgradeAllowed.hashCode);
    _$hash = $jc(_$hash, cutoff.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, minFormatScore.hashCode);
    _$hash = $jc(_$hash, cutoffFormatScore.hashCode);
    _$hash = $jc(_$hash, minUpgradeFormatScore.hashCode);
    _$hash = $jc(_$hash, formatItems.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QualityProfileResource')
          ..add('id', id)
          ..add('name', name)
          ..add('upgradeAllowed', upgradeAllowed)
          ..add('cutoff', cutoff)
          ..add('items', items)
          ..add('minFormatScore', minFormatScore)
          ..add('cutoffFormatScore', cutoffFormatScore)
          ..add('minUpgradeFormatScore', minUpgradeFormatScore)
          ..add('formatItems', formatItems)
          ..add('language', language))
        .toString();
  }
}

class QualityProfileResourceBuilder
    implements Builder<QualityProfileResource, QualityProfileResourceBuilder> {
  _$QualityProfileResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _upgradeAllowed;
  bool? get upgradeAllowed => _$this._upgradeAllowed;
  set upgradeAllowed(bool? upgradeAllowed) =>
      _$this._upgradeAllowed = upgradeAllowed;

  int? _cutoff;
  int? get cutoff => _$this._cutoff;
  set cutoff(int? cutoff) => _$this._cutoff = cutoff;

  ListBuilder<QualityProfileQualityItemResource>? _items;
  ListBuilder<QualityProfileQualityItemResource> get items =>
      _$this._items ??= ListBuilder<QualityProfileQualityItemResource>();
  set items(ListBuilder<QualityProfileQualityItemResource>? items) =>
      _$this._items = items;

  int? _minFormatScore;
  int? get minFormatScore => _$this._minFormatScore;
  set minFormatScore(int? minFormatScore) =>
      _$this._minFormatScore = minFormatScore;

  int? _cutoffFormatScore;
  int? get cutoffFormatScore => _$this._cutoffFormatScore;
  set cutoffFormatScore(int? cutoffFormatScore) =>
      _$this._cutoffFormatScore = cutoffFormatScore;

  int? _minUpgradeFormatScore;
  int? get minUpgradeFormatScore => _$this._minUpgradeFormatScore;
  set minUpgradeFormatScore(int? minUpgradeFormatScore) =>
      _$this._minUpgradeFormatScore = minUpgradeFormatScore;

  ListBuilder<ProfileFormatItemResource>? _formatItems;
  ListBuilder<ProfileFormatItemResource> get formatItems =>
      _$this._formatItems ??= ListBuilder<ProfileFormatItemResource>();
  set formatItems(ListBuilder<ProfileFormatItemResource>? formatItems) =>
      _$this._formatItems = formatItems;

  LanguageBuilder? _language;
  LanguageBuilder get language => _$this._language ??= LanguageBuilder();
  set language(LanguageBuilder? language) => _$this._language = language;

  QualityProfileResourceBuilder() {
    QualityProfileResource._defaults(this);
  }

  QualityProfileResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _upgradeAllowed = $v.upgradeAllowed;
      _cutoff = $v.cutoff;
      _items = $v.items?.toBuilder();
      _minFormatScore = $v.minFormatScore;
      _cutoffFormatScore = $v.cutoffFormatScore;
      _minUpgradeFormatScore = $v.minUpgradeFormatScore;
      _formatItems = $v.formatItems?.toBuilder();
      _language = $v.language?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QualityProfileResource other) {
    _$v = other as _$QualityProfileResource;
  }

  @override
  void update(void Function(QualityProfileResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QualityProfileResource build() => _build();

  _$QualityProfileResource _build() {
    _$QualityProfileResource _$result;
    try {
      _$result = _$v ??
          _$QualityProfileResource._(
            id: id,
            name: name,
            upgradeAllowed: upgradeAllowed,
            cutoff: cutoff,
            items: _items?.build(),
            minFormatScore: minFormatScore,
            cutoffFormatScore: cutoffFormatScore,
            minUpgradeFormatScore: minUpgradeFormatScore,
            formatItems: _formatItems?.build(),
            language: _language?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();

        _$failedField = 'formatItems';
        _formatItems?.build();
        _$failedField = 'language';
        _language?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'QualityProfileResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
