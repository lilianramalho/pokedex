import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/src/model/abilities.dart';
import 'package:pokedex/src/model/stats.dart';

part 'pokemon_details.freezed.dart';
part 'pokemon_details.g.dart';

@freezed
class PokemonDetails with _$PokemonDetails {
  const factory PokemonDetails({
    required List<Abilities> abilities,
    required int height,
    required int weight,
    required List<Stats> stats,
  }) = _PokemonDetails;

  factory PokemonDetails.fromJson(Map<String, Object?> json) =>
      _$PokemonDetailsFromJson(json);
}
