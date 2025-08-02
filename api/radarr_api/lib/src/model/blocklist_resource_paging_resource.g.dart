// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocklist_resource_paging_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlocklistResourcePagingResource
    extends BlocklistResourcePagingResource {
  @override
  final int? page;
  @override
  final int? pageSize;
  @override
  final String? sortKey;
  @override
  final SortDirection? sortDirection;
  @override
  final int? totalRecords;
  @override
  final BuiltList<BlocklistResource>? records;

  factory _$BlocklistResourcePagingResource(
          [void Function(BlocklistResourcePagingResourceBuilder)? updates]) =>
      (BlocklistResourcePagingResourceBuilder()..update(updates))._build();

  _$BlocklistResourcePagingResource._(
      {this.page,
      this.pageSize,
      this.sortKey,
      this.sortDirection,
      this.totalRecords,
      this.records})
      : super._();
  @override
  BlocklistResourcePagingResource rebuild(
          void Function(BlocklistResourcePagingResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlocklistResourcePagingResourceBuilder toBuilder() =>
      BlocklistResourcePagingResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlocklistResourcePagingResource &&
        page == other.page &&
        pageSize == other.pageSize &&
        sortKey == other.sortKey &&
        sortDirection == other.sortDirection &&
        totalRecords == other.totalRecords &&
        records == other.records;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, sortKey.hashCode);
    _$hash = $jc(_$hash, sortDirection.hashCode);
    _$hash = $jc(_$hash, totalRecords.hashCode);
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlocklistResourcePagingResource')
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('sortKey', sortKey)
          ..add('sortDirection', sortDirection)
          ..add('totalRecords', totalRecords)
          ..add('records', records))
        .toString();
  }
}

class BlocklistResourcePagingResourceBuilder
    implements
        Builder<BlocklistResourcePagingResource,
            BlocklistResourcePagingResourceBuilder> {
  _$BlocklistResourcePagingResource? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  String? _sortKey;
  String? get sortKey => _$this._sortKey;
  set sortKey(String? sortKey) => _$this._sortKey = sortKey;

  SortDirection? _sortDirection;
  SortDirection? get sortDirection => _$this._sortDirection;
  set sortDirection(SortDirection? sortDirection) =>
      _$this._sortDirection = sortDirection;

  int? _totalRecords;
  int? get totalRecords => _$this._totalRecords;
  set totalRecords(int? totalRecords) => _$this._totalRecords = totalRecords;

  ListBuilder<BlocklistResource>? _records;
  ListBuilder<BlocklistResource> get records =>
      _$this._records ??= ListBuilder<BlocklistResource>();
  set records(ListBuilder<BlocklistResource>? records) =>
      _$this._records = records;

  BlocklistResourcePagingResourceBuilder() {
    BlocklistResourcePagingResource._defaults(this);
  }

  BlocklistResourcePagingResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _pageSize = $v.pageSize;
      _sortKey = $v.sortKey;
      _sortDirection = $v.sortDirection;
      _totalRecords = $v.totalRecords;
      _records = $v.records?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlocklistResourcePagingResource other) {
    _$v = other as _$BlocklistResourcePagingResource;
  }

  @override
  void update(void Function(BlocklistResourcePagingResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlocklistResourcePagingResource build() => _build();

  _$BlocklistResourcePagingResource _build() {
    _$BlocklistResourcePagingResource _$result;
    try {
      _$result = _$v ??
          _$BlocklistResourcePagingResource._(
            page: page,
            pageSize: pageSize,
            sortKey: sortKey,
            sortDirection: sortDirection,
            totalRecords: totalRecords,
            records: _records?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        _records?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BlocklistResourcePagingResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
