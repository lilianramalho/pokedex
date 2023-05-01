import 'package:flutter/material.dart';
import 'package:pokedex/src/model/pokemon_details.dart';
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
                  color: ColorUtil.green),
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
                        child: Image.asset('assets/icons/about/weight.png'),
                      ),
                      Text(
                        pokemonDetails!.weight.toString(),
                        style: FontStyleUtil.characteristicsTitle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Weight",
                    style: FontStyleUtil.characteristicsSubtitle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 7.h,
                  width: 2,
                  color: ColorUtil.gray,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Image.asset('assets/icons/about/straighten.png'),
                      ),
                      Text(
                        pokemonDetails!.height.toString(),
                        style: FontStyleUtil.characteristicsTitle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Height",
                    style: FontStyleUtil.characteristicsSubtitle,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 7.h,
                  width: 2,
                  color: ColorUtil.gray,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "teste",
                        style: FontStyleUtil.characteristicsTitle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Moves",
                    style: FontStyleUtil.characteristicsSubtitle,
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
