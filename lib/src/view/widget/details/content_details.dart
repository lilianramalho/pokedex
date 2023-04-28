import 'package:flutter/material.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:pokedex/src/view/widget/details/ability.dart';
import 'package:pokedex/src/view/widget/details/about.dart';
import 'package:pokedex/src/view/widget/details/base_stats.dart';

class ContentDetails extends StatelessWidget {
  const ContentDetails({super.key});

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
            children: const [
              Ability(),
            ],
          ),
        ),
        const About(),
        const BaseStats(),
      ],
    );
  }
}
