import 'package:pokedex/src/provider/data/pokemon_data.dart';
import 'package:pokedex/src/provider/data/pokemon_details_data.dart';

class Repository {
  final PokemonData _pokemonData = PokemonData();
  final PokemonDetailsData _pokemonDetailsData = PokemonDetailsData();

  Future<Map<String, dynamic>> getPokemonList() async {
    Map<String, dynamic> mapPokemon = await _pokemonData.getPokemonList();
    return mapPokemon;
  }

  Future<Map<String, dynamic>> getPokemonDetails(String url) async {
    Map<String, dynamic> mapPokemonDetails = await _pokemonDetailsData.getPokemonDetails(url);
    return mapPokemonDetails;
  }
}
