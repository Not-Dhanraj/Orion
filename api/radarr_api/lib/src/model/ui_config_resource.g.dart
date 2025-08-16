// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_config_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UiConfigResource extends UiConfigResource {
  @override
  final int? id;
  @override
  final int? firstDayOfWeek;
  @override
  final String? calendarWeekColumnHeader;
  @override
  final MovieRuntimeFormatType? movieRuntimeFormat;
  @override
  final String? shortDateFormat;
  @override
  final String? longDateFormat;
  @override
  final String? timeFormat;
  @override
  final bool? showRelativeDates;
  @override
  final bool? enableColorImpairedMode;
  @override
  final int? movieInfoLanguage;
  @override
  final int? uiLanguage;
  @override
  final String? theme;

  factory _$UiConfigResource(
          [void Function(UiConfigResourceBuilder)? updates]) =>
      (UiConfigResourceBuilder()..update(updates))._build();

  _$UiConfigResource._(
      {this.id,
      this.firstDayOfWeek,
      this.calendarWeekColumnHeader,
      this.movieRuntimeFormat,
      this.shortDateFormat,
      this.longDateFormat,
      this.timeFormat,
      this.showRelativeDates,
      this.enableColorImpairedMode,
      this.movieInfoLanguage,
      this.uiLanguage,
      this.theme})
      : super._();
  @override
  UiConfigResource rebuild(void Function(UiConfigResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UiConfigResourceBuilder toBuilder() =>
      UiConfigResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UiConfigResource &&
        id == other.id &&
        firstDayOfWeek == other.firstDayOfWeek &&
        calendarWeekColumnHeader == other.calendarWeekColumnHeader &&
        movieRuntimeFormat == other.movieRuntimeFormat &&
        shortDateFormat == other.shortDateFormat &&
        longDateFormat == other.longDateFormat &&
        timeFormat == other.timeFormat &&
        showRelativeDates == other.showRelativeDates &&
        enableColorImpairedMode == other.enableColorImpairedMode &&
        movieInfoLanguage == other.movieInfoLanguage &&
        uiLanguage == other.uiLanguage &&
        theme == other.theme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstDayOfWeek.hashCode);
    _$hash = $jc(_$hash, calendarWeekColumnHeader.hashCode);
    _$hash = $jc(_$hash, movieRuntimeFormat.hashCode);
    _$hash = $jc(_$hash, shortDateFormat.hashCode);
    _$hash = $jc(_$hash, longDateFormat.hashCode);
    _$hash = $jc(_$hash, timeFormat.hashCode);
    _$hash = $jc(_$hash, showRelativeDates.hashCode);
    _$hash = $jc(_$hash, enableColorImpairedMode.hashCode);
    _$hash = $jc(_$hash, movieInfoLanguage.hashCode);
    _$hash = $jc(_$hash, uiLanguage.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UiConfigResource')
          ..add('id', id)
          ..add('firstDayOfWeek', firstDayOfWeek)
          ..add('calendarWeekColumnHeader', calendarWeekColumnHeader)
          ..add('movieRuntimeFormat', movieRuntimeFormat)
          ..add('shortDateFormat', shortDateFormat)
          ..add('longDateFormat', longDateFormat)
          ..add('timeFormat', timeFormat)
          ..add('showRelativeDates', showRelativeDates)
          ..add('enableColorImpairedMode', enableColorImpairedMode)
          ..add('movieInfoLanguage', movieInfoLanguage)
          ..add('uiLanguage', uiLanguage)
          ..add('theme', theme))
        .toString();
  }
}

class UiConfigResourceBuilder
    implements Builder<UiConfigResource, UiConfigResourceBuilder> {
  _$UiConfigResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _firstDayOfWeek;
  int? get firstDayOfWeek => _$this._firstDayOfWeek;
  set firstDayOfWeek(int? firstDayOfWeek) =>
      _$this._firstDayOfWeek = firstDayOfWeek;

  String? _calendarWeekColumnHeader;
  String? get calendarWeekColumnHeader => _$this._calendarWeekColumnHeader;
  set calendarWeekColumnHeader(String? calendarWeekColumnHeader) =>
      _$this._calendarWeekColumnHeader = calendarWeekColumnHeader;

  MovieRuntimeFormatType? _movieRuntimeFormat;
  MovieRuntimeFormatType? get movieRuntimeFormat => _$this._movieRuntimeFormat;
  set movieRuntimeFormat(MovieRuntimeFormatType? movieRuntimeFormat) =>
      _$this._movieRuntimeFormat = movieRuntimeFormat;

  String? _shortDateFormat;
  String? get shortDateFormat => _$this._shortDateFormat;
  set shortDateFormat(String? shortDateFormat) =>
      _$this._shortDateFormat = shortDateFormat;

  String? _longDateFormat;
  String? get longDateFormat => _$this._longDateFormat;
  set longDateFormat(String? longDateFormat) =>
      _$this._longDateFormat = longDateFormat;

  String? _timeFormat;
  String? get timeFormat => _$this._timeFormat;
  set timeFormat(String? timeFormat) => _$this._timeFormat = timeFormat;

  bool? _showRelativeDates;
  bool? get showRelativeDates => _$this._showRelativeDates;
  set showRelativeDates(bool? showRelativeDates) =>
      _$this._showRelativeDates = showRelativeDates;

  bool? _enableColorImpairedMode;
  bool? get enableColorImpairedMode => _$this._enableColorImpairedMode;
  set enableColorImpairedMode(bool? enableColorImpairedMode) =>
      _$this._enableColorImpairedMode = enableColorImpairedMode;

  int? _movieInfoLanguage;
  int? get movieInfoLanguage => _$this._movieInfoLanguage;
  set movieInfoLanguage(int? movieInfoLanguage) =>
      _$this._movieInfoLanguage = movieInfoLanguage;

  int? _uiLanguage;
  int? get uiLanguage => _$this._uiLanguage;
  set uiLanguage(int? uiLanguage) => _$this._uiLanguage = uiLanguage;

  String? _theme;
  String? get theme => _$this._theme;
  set theme(String? theme) => _$this._theme = theme;

  UiConfigResourceBuilder() {
    UiConfigResource._defaults(this);
  }

  UiConfigResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstDayOfWeek = $v.firstDayOfWeek;
      _calendarWeekColumnHeader = $v.calendarWeekColumnHeader;
      _movieRuntimeFormat = $v.movieRuntimeFormat;
      _shortDateFormat = $v.shortDateFormat;
      _longDateFormat = $v.longDateFormat;
      _timeFormat = $v.timeFormat;
      _showRelativeDates = $v.showRelativeDates;
      _enableColorImpairedMode = $v.enableColorImpairedMode;
      _movieInfoLanguage = $v.movieInfoLanguage;
      _uiLanguage = $v.uiLanguage;
      _theme = $v.theme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UiConfigResource other) {
    _$v = other as _$UiConfigResource;
  }

  @override
  void update(void Function(UiConfigResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UiConfigResource build() => _build();

  _$UiConfigResource _build() {
    final _$result = _$v ??
        _$UiConfigResource._(
          id: id,
          firstDayOfWeek: firstDayOfWeek,
          calendarWeekColumnHeader: calendarWeekColumnHeader,
          movieRuntimeFormat: movieRuntimeFormat,
          shortDateFormat: shortDateFormat,
          longDateFormat: longDateFormat,
          timeFormat: timeFormat,
          showRelativeDates: showRelativeDates,
          enableColorImpairedMode: enableColorImpairedMode,
          movieInfoLanguage: movieInfoLanguage,
          uiLanguage: uiLanguage,
          theme: theme,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
