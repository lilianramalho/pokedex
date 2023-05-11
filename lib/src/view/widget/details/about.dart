import 'package:flutter/material.dart';
import 'package:pokedex/src/model/pokemon_details.dart';
import 'package:pokedex/src/utils/asset_util.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:pokedex/src/utils/font_style_util.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class About extends StatelessWidget {
  const About({super.key, required this.pokemonDetails});

  final PokemonDetails? pokemonDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              "About",
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
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Image.asset(weightIcon),
                      ),
                      Text(
                        pokemonDetails!.weight.toString(),
                        style: characteristicsTitle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Weight",
                    style: characteristicsSubtitle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 7.h,
                  width: 2,
                  color: gray,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Image.asset(straightenIcon),
                      ),
                      Text(
                        pokemonDetails!.height.toString(),
                        style: characteristicsTitle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Height",
                    style: characteristicsSubtitle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 7.h,
                  width: 2,
                  color: gray,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "teste",
                        style: characteristicsTitle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Moves",
                    style: characteristicsSubtitle,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
