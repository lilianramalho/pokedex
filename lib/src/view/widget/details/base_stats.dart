import 'package:flutter/material.dart';
import 'package:pokedex/src/model/pokemon_details.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:pokedex/src/view/widget/details/percentage_stats.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BaseStats extends StatelessWidget {
  const BaseStats({super.key, required this.pokemonDetails});

  final PokemonDetails? pokemonDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: Text(
            "Base Stats",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 16,
                color: green),
          ),
        ),
        Row(
          children: [
            Column(
              children: const [
                Text(
                  "HP",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: green),
                ),
                Text(
                  "ATK",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: green),
                ),
                Text(
                  "DEF",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: green),
                ),
                Text(
                  "SATK",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: green),
                ),
                Text(
                  "SDEF",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: green),
                ),
                Text(
                  "SPD",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: green),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 15.h,
                  width: 2,
                  color: gray,
                ),
              ),
              PercentageStats(pokemonDetails: pokemonDetails,),
          ],
        ),
      ],
    );
  }
}
