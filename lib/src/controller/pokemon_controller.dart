import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:pokedex/src/model/pokemon.dart';
import 'package:pokedex/src/provider/repository/repository.dart';

class PokemonController extends GetxController {
  final Repository _repository = Repository();
  List<Pokemon> pokemonList = [];
  RxBool isLoarding = false.obs;
  String? next;
  final _scrollController = ScrollController();


  getPokemon() async {
    isLoarding.value = true;
    Map<String, dynamic> result = await _repository.getPokemonList();
    pokemonList = result['results'].map<Pokemon>((pokemon){
      return Pokemon.fromJson(pokemon);
    }).cast<Pokemon>().toList();
    next = result['next'];
    isLoarding.value = false;
  }

}
