// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ratings extends Ratings {
  @override
  final int? votes;
  @override
  final double? value;

  factory _$Ratings([void Function(RatingsBuilder)? updates]) =>
      (RatingsBuilder()..update(updates))._build();

  _$Ratings._({this.votes, this.value}) : super._();
  @override
  Ratings rebuild(void Function(RatingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingsBuilder toBuilder() => RatingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ratings && votes == other.votes && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, votes.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Ratings')
          ..add('votes', votes)
          ..add('value', value))
        .toString();
  }
}

class RatingsBuilder implements Builder<Ratings, RatingsBuilder> {
  _$Ratings? _$v;

  int? _votes;
  int? get votes => _$this._votes;
  set votes(int? votes) => _$this._votes = votes;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  RatingsBuilder() {
    Ratings._defaults(this);
  }

  RatingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _votes = $v.votes;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ratings other) {
    _$v = other as _$Ratings;
  }

  @override
  void update(void Function(RatingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ratings build() => _build();

  _$Ratings _build() {
    final _$result = _$v ??
        _$Ratings._(
          votes: votes,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
