import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/src/controller/pokemon_controller.dart';
import 'package:pokedex/src/controller/pokemon_details_controller.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:pokedex/src/utils/font_style_util.dart';
import 'package:pokedex/src/view/screen/details_screen.dart';
import 'package:pokedex/src/view/widget/home/custom_card.dart';
import 'package:pokedex/src/view/widget/home/search_field.dart';
import 'package:pokedex/src/view/widget/home/sort_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final PokemonController pokemonController = Get.put(PokemonController());
final PokemonDetailsController pokemonDetailsController =
    Get.put(PokemonDetailsController());

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    callMethodAsync().then((value) {});
  }

  Future callMethodAsync() async {
    await pokemonController.getPokemon();
  }

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
            child: Obx(
              () => !pokemonController.isLoarding.value
                  ? GridView.builder(
                      itemCount: 20,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: ((context, index) => GestureDetector(
                            onTap: () async {
                              final pokemonDetails =
                                  await pokemonDetailsController
                                      .getPokemonDetails(pokemonController
                                          .pokemonList
                                          .elementAt(index)
                                          .url);
                              Get.to(DetailsScreen(
                                pokemonDetails: pokemonDetails,
                                name: pokemonController.pokemonList
                                    .elementAt(index)
                                    .name,
                              ));
                            },
                            child: CustomCard(
                              name: pokemonController.pokemonList
                                  .elementAt(index)
                                  .name,
                            ),
                          )))
                  : const SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
