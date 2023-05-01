import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:pokedex/src/utils/font_style_util.dart';
import 'package:pokedex/src/view/screen/details_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Container(
        width: 33.w,
        height: 15.h,
        decoration: const BoxDecoration(
          color: ColorUtil.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart, 
          children: [
            Container(
              width: 100.w,
              height: 7.h,
              decoration: const BoxDecoration(
                color: ColorUtil.gray,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
            Positioned(left: 40, child: Text(name , style: FontStyleUtil.nameCard,)),
            Center(child: Image.asset("assets/icons/home/aron.png")),
            const Positioned(left: 100, top: 3, child: Text("#304", style: FontStyleUtil.numberCard,)),
          ],
        ),
      ),
    );
  }
}
