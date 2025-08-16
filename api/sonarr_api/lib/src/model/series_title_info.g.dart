// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_title_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesTitleInfo extends SeriesTitleInfo {
  @override
  final String? title;
  @override
  final String? titleWithoutYear;
  @override
  final int? year;
  @override
  final BuiltList<String>? allTitles;

  factory _$SeriesTitleInfo([void Function(SeriesTitleInfoBuilder)? updates]) =>
      (SeriesTitleInfoBuilder()..update(updates))._build();

  _$SeriesTitleInfo._(
      {this.title, this.titleWithoutYear, this.year, this.allTitles})
      : super._();
  @override
  SeriesTitleInfo rebuild(void Function(SeriesTitleInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesTitleInfoBuilder toBuilder() => SeriesTitleInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesTitleInfo &&
        title == other.title &&
        titleWithoutYear == other.titleWithoutYear &&
        year == other.year &&
        allTitles == other.allTitles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, titleWithoutYear.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, allTitles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesTitleInfo')
          ..add('title', title)
          ..add('titleWithoutYear', titleWithoutYear)
          ..add('year', year)
          ..add('allTitles', allTitles))
        .toString();
  }
}

class SeriesTitleInfoBuilder
    implements Builder<SeriesTitleInfo, SeriesTitleInfoBuilder> {
  _$SeriesTitleInfo? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _titleWithoutYear;
  String? get titleWithoutYear => _$this._titleWithoutYear;
  set titleWithoutYear(String? titleWithoutYear) =>
      _$this._titleWithoutYear = titleWithoutYear;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  ListBuilder<String>? _allTitles;
  ListBuilder<String> get allTitles =>
      _$this._allTitles ??= ListBuilder<String>();
  set allTitles(ListBuilder<String>? allTitles) =>
      _$this._allTitles = allTitles;

  SeriesTitleInfoBuilder() {
    SeriesTitleInfo._defaults(this);
  }

  SeriesTitleInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _titleWithoutYear = $v.titleWithoutYear;
      _year = $v.year;
      _allTitles = $v.allTitles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesTitleInfo other) {
    _$v = other as _$SeriesTitleInfo;
  }

  @override
  void update(void Function(SeriesTitleInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesTitleInfo build() => _build();

  _$SeriesTitleInfo _build() {
    _$SeriesTitleInfo _$result;
    try {
      _$result = _$v ??
          _$SeriesTitleInfo._(
            title: title,
            titleWithoutYear: titleWithoutYear,
            year: year,
            allTitles: _allTitles?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allTitles';
        _allTitles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SeriesTitleInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
