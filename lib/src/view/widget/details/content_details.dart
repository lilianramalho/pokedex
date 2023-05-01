import 'package:flutter/material.dart';
import 'package:pokedex/src/model/pokemon_details.dart';
import 'package:pokedex/src/view/widget/details/ability.dart';
import 'package:pokedex/src/view/widget/details/about.dart';
import 'package:pokedex/src/view/widget/details/base_stats.dart';

class ContentDetails extends StatelessWidget {
  const ContentDetails({super.key, required this.pokemonDetails});

  final PokemonDetails? pokemonDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/icons/home/bulbasaur.png'),
        Padding(
          padding: const EdgeInsets.only(),
          child: Row(
            children:  [
               Ability(ability: pokemonDetails!.abilities.elementAt(0).ability.name,),
            ],
          ),
        ),
        About(
          pokemonDetails: pokemonDetails,
        ),
        BaseStats(pokemonDetails: pokemonDetails,),
      ],
    );
  }
}
