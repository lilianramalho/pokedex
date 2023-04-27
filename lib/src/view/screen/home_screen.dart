import 'package:flutter/material.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:pokedex/src/utils/font_style_util.dart';
import 'package:pokedex/src/view/widget/home/custom_card.dart';
import 'package:pokedex/src/view/widget/home/search_field.dart';
import 'package:pokedex/src/view/widget/home/sort_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtil.red,
      appBar: AppBar(
        backgroundColor: ColorUtil.red,
        elevation: 0,
        title: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/icons/geral/pokeball.png"),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Pokédex",
                  style: FontStyleUtil.titleAppBar,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [SearchField(), SortButton()],
            ),
          ),
          Container(
            width: 97.w,
            height: 70.h,
            decoration: const BoxDecoration(
              color: ColorUtil.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomCard(),
                    const CustomCard(),
                  ],
                ),
                SizedBox(height: 15,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomCard(),
                    const CustomCard(),
                  ],
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
