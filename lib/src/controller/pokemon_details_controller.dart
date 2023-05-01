import 'package:get/get.dart';
import 'package:pokedex/src/model/pokemon_details.dart';
import 'package:pokedex/src/provider/repository/repository.dart';

class PokemonDetailsController extends GetxController {
  final Repository _repository = Repository();
  RxBool isLoarding = false.obs;
  PokemonDetails? pokemonDetails;

  Future<PokemonDetails?> getPokemonDetails(String url) async {
    isLoarding.value = true;
    Map<String, dynamic> result = await _repository.getPokemonDetails(url);
    pokemonDetails = PokemonDetails.fromJson(result);
    isLoarding.value = false;
    return pokemonDetails;
  }
}
