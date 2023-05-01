// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  int get base_stat => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call({int base_stat, int effort});
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base_stat = null,
    Object? effort = null,
  }) {
    return _then(_value.copyWith(
      base_stat: null == base_stat
          ? _value.base_stat
          : base_stat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$_StatsCopyWith(_$_Stats value, $Res Function(_$_Stats) then) =
      __$$_StatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int base_stat, int effort});
}

/// @nodoc
class __$$_StatsCopyWithImpl<$Res> extends _$StatsCopyWithImpl<$Res, _$_Stats>
    implements _$$_StatsCopyWith<$Res> {
  __$$_StatsCopyWithImpl(_$_Stats _value, $Res Function(_$_Stats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base_stat = null,
    Object? effort = null,
  }) {
    return _then(_$_Stats(
      base_stat: null == base_stat
          ? _value.base_stat
          : base_stat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stats implements _Stats {
  const _$_Stats({required this.base_stat, required this.effort});

  factory _$_Stats.fromJson(Map<String, dynamic> json) =>
      _$$_StatsFromJson(json);

  @override
  final int base_stat;
  @override
  final int effort;

  @override
  String toString() {
    return 'Stats(base_stat: $base_stat, effort: $effort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stats &&
            (identical(other.base_stat, base_stat) ||
                other.base_stat == base_stat) &&
            (identical(other.effort, effort) || other.effort == effort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, base_stat, effort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      __$$_StatsCopyWithImpl<_$_Stats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsToJson(
      this,
    );
  }
}

abstract class _Stats implements Stats {
  const factory _Stats(
      {required final int base_stat, required final int effort}) = _$_Stats;

  factory _Stats.fromJson(Map<String, dynamic> json) = _$_Stats.fromJson;

  @override
  int get base_stat;
  @override
  int get effort;
  @override
  @JsonKey(ignore: true)
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      throw _privateConstructorUsedError;
}
