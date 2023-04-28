import 'package:flutter/material.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:pokedex/src/utils/font_style_util.dart';
import 'package:pokedex/src/view/widget/details/content_details.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Bulbasaur",
              style: FontStyleUtil.titleAppBarAbout,
            ),
            Text(
              "#001",
              style: FontStyleUtil.subtitleAppBarAbout,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
              ));
        }),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: ColorUtil.green,
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 15),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topRight,
                  image: AssetImage(
                    'assets/icons/about/pokeball-background.png',
                  ),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40, left: 5 , right: 5),
            child: Container(
              width: 100.w,
              height: 60.h,
              decoration: const BoxDecoration(
                color: ColorUtil.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          Positioned(
            top: 200,
            right: 120,
            child: ContentDetails(),
          ),
        ],
      ),
    );
  }
}
