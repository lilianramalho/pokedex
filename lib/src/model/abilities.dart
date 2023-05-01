import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/src/model/ability.dart';

part 'abilities.freezed.dart';
part 'abilities.g.dart';

@freezed
class Abilities with _$Abilities {
  const factory Abilities({
    required Ability ability,
  }) = _Abilities;

  factory Abilities.fromJson(Map<String, Object?> json) =>
      _$AbilitiesFromJson(json);
}