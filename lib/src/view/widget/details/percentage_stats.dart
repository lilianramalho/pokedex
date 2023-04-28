import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pokedex/src/utils/color_util.dart';

class PercentageStats extends StatelessWidget {
  const PercentageStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("045"),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: 0.9,
              progressColor: ColorUtil.green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
             Row(
          children: [
            Text("045"),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: 0.9,
              progressColor: ColorUtil.green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
             Row(
          children: [
            Text("045"),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: 0.9,
              progressColor: ColorUtil.green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
             Row(
          children: [
            Text("045"),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: 0.9,
              progressColor: ColorUtil.green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
             Row(
          children: [
            Text("045"),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: 0.9,
              progressColor: ColorUtil.green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
             Row(
          children: [
            Text("045"),
            LinearPercentIndicator(
              width: 125,
              lineHeight: 8.0,
              percent: 0.9,
              progressColor: ColorUtil.green,
              barRadius: const Radius.circular(50),
            )
          ],
        ),
      ],
    );
  }
}
