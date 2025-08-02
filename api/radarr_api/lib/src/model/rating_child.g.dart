// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_child.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingChild extends RatingChild {
  @override
  final int? votes;
  @override
  final double? value;
  @override
  final RatingType? type;

  factory _$RatingChild([void Function(RatingChildBuilder)? updates]) =>
      (RatingChildBuilder()..update(updates))._build();

  _$RatingChild._({this.votes, this.value, this.type}) : super._();
  @override
  RatingChild rebuild(void Function(RatingChildBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingChildBuilder toBuilder() => RatingChildBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingChild &&
        votes == other.votes &&
        value == other.value &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, votes.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingChild')
          ..add('votes', votes)
          ..add('value', value)
          ..add('type', type))
        .toString();
  }
}

class RatingChildBuilder implements Builder<RatingChild, RatingChildBuilder> {
  _$RatingChild? _$v;

  int? _votes;
  int? get votes => _$this._votes;
  set votes(int? votes) => _$this._votes = votes;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  RatingType? _type;
  RatingType? get type => _$this._type;
  set type(RatingType? type) => _$this._type = type;

  RatingChildBuilder() {
    RatingChild._defaults(this);
  }

  RatingChildBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _votes = $v.votes;
      _value = $v.value;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingChild other) {
    _$v = other as _$RatingChild;
  }

  @override
  void update(void Function(RatingChildBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingChild build() => _build();

  _$RatingChild _build() {
    final _$result = _$v ??
        _$RatingChild._(
          votes: votes,
          value: value,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
