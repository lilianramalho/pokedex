import 'package:flutter/material.dart';
import 'package:pokedex/src/utils/color_util.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: ColorUtil.white,
      ),
      child: Image.asset('assets/icons/geral/text_format.png'),
    );
  }
}
