import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:pokedex/src/utils/font_style_util.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Ability extends StatelessWidget {
  const Ability({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.w,
      height: 3.h,
      decoration: const BoxDecoration(
        color: ColorUtil.green,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: const Center(
          child: Text(
        "Eletric",
        textAlign: TextAlign.center,
        style: FontStyleUtil.abilityText,
      )),
    );
  }
}
