import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Loarding extends StatelessWidget {
  const Loarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 10.w,
      height: 5.h,
      child:  const LoadingIndicator(
        indicatorType: Indicator.circleStrokeSpin,
        colors: [red],
      ),
    );
  }
}
