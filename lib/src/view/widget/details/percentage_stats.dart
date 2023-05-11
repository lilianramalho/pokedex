import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pokedex/src/model/pokemon_details.dart';
import 'package:pokedex/src/utils/constants/color_util.dart';

class PercentageStats extends StatelessWidget {
  const PercentageStats({super.key, required this.pokemonDetails});

  final PokemonDetails? pokemonDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(pokemonDetails!.stats.elementAt(0).base_stat.toString()),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: pokemonDetails!.stats.elementAt(0).base_stat.toDouble() / 100,
              progressColor: green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
             Row(
          children: [
            Text(pokemonDetails!.stats.elementAt(1).base_stat.toString()),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: pokemonDetails!.stats.elementAt(1).base_stat.toDouble() / 100,
              progressColor: green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
             Row(
          children: [
            Text(pokemonDetails!.stats.elementAt(2).base_stat.toString()),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: pokemonDetails!.stats.elementAt(2).base_stat.toDouble() / 100,
              progressColor: green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
             Row(
          children: [
            Text(pokemonDetails!.stats.elementAt(3).base_stat.toString()),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: pokemonDetails!.stats.elementAt(3).base_stat.toDouble() / 100,
              progressColor: green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
             Row(
          children: [
            Text(pokemonDetails!.stats.elementAt(4).base_stat.toString()),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: pokemonDetails!.stats.elementAt(4).base_stat.toDouble() / 100,
              progressColor: green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
             Row(
          children: [
            Text(pokemonDetails!.stats.elementAt(5).base_stat.toString()),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: pokemonDetails!.stats.elementAt(5).base_stat.toDouble() / 100,
              progressColor: green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
      ],
    );
  }
}
