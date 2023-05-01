// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abilities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) {
  return _Abilities.fromJson(json);
}

/// @nodoc
mixin _$Abilities {
  Ability get ability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilitiesCopyWith<Abilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilitiesCopyWith<$Res> {
  factory $AbilitiesCopyWith(Abilities value, $Res Function(Abilities) then) =
      _$AbilitiesCopyWithImpl<$Res, Abilities>;
  @useResult
  $Res call({Ability ability});

  $AbilityCopyWith<$Res> get ability;
}

/// @nodoc
class _$AbilitiesCopyWithImpl<$Res, $Val extends Abilities>
    implements $AbilitiesCopyWith<$Res> {
  _$AbilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Ability,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res> get ability {
    return $AbilityCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AbilitiesCopyWith<$Res> implements $AbilitiesCopyWith<$Res> {
  factory _$$_AbilitiesCopyWith(
          _$_Abilities value, $Res Function(_$_Abilities) then) =
      __$$_AbilitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ability ability});

  @override
  $AbilityCopyWith<$Res> get ability;
}

/// @nodoc
class __$$_AbilitiesCopyWithImpl<$Res>
    extends _$AbilitiesCopyWithImpl<$Res, _$_Abilities>
    implements _$$_AbilitiesCopyWith<$Res> {
  __$$_AbilitiesCopyWithImpl(
      _$_Abilities _value, $Res Function(_$_Abilities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_$_Abilities(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Ability,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Abilities implements _Abilities {
  const _$_Abilities({required this.ability});

  factory _$_Abilities.fromJson(Map<String, dynamic> json) =>
      _$$_AbilitiesFromJson(json);

  @override
  final Ability ability;

  @override
  String toString() {
    return 'Abilities(ability: $ability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Abilities &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbilitiesCopyWith<_$_Abilities> get copyWith =>
      __$$_AbilitiesCopyWithImpl<_$_Abilities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilitiesToJson(
      this,
    );
  }
}

abstract class _Abilities implements Abilities {
  const factory _Abilities({required final Ability ability}) = _$_Abilities;

  factory _Abilities.fromJson(Map<String, dynamic> json) =
      _$_Abilities.fromJson;

  @override
  Ability get ability;
  @override
  @JsonKey(ignore: true)
  _$$_AbilitiesCopyWith<_$_Abilities> get copyWith =>
      throw _privateConstructorUsedError;
}
