import 'package:flutter/material.dart';
import 'package:pokedex/src/utils/constants/asset_util.dart';
import 'package:pokedex/src/utils/constants/color_util.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: white,
      ),
      child: Image.asset(textFormatIcon),
    );
  }
}
