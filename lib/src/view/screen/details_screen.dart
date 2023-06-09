import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/src/controller/pokemon_details_controller.dart';
import 'package:pokedex/src/model/pokemon_details.dart';
import 'package:pokedex/src/utils/asset_util.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:pokedex/src/utils/font_style_util.dart';
import 'package:pokedex/src/view/widget/details/content_details.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.pokemonDetails, required this.name});

  final PokemonDetails? pokemonDetails;
  final String name;

  @override
  Widget build(BuildContext context) {
    final PokemonDetailsController pokemonDetailsController =
    Get.put(PokemonDetailsController());
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text(
              name,
              style: titleAppBarAbout,
            ),
            const Text(
              "#001",
              style: subtitleAppBarAbout,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
              ));
        }),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: green,
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
                    pokeballBackgroundIcon,
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
                color: white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
           Positioned(
            top: 200,
            right: 120,
            child: !pokemonDetailsController.isLoarding.value ? ContentDetails(pokemonDetails: pokemonDetails) : SizedBox(),
          ),
        ],
      ),
    );
  }
}
