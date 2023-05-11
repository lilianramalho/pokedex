import 'dart:async';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/src/controller/pokemon_controller.dart';
import 'package:pokedex/src/utils/asset_util.dart';
import 'package:pokedex/src/utils/color_util.dart';
import 'package:pokedex/src/view/screen/home_screen.dart';

class SplashFuturePage extends StatefulWidget {
  const SplashFuturePage({Key? key}) : super(key: key);

  @override
  _SplashFuturePageState createState() => _SplashFuturePageState();
}

class _SplashFuturePageState extends State<SplashFuturePage> {
  final PokemonController pokemonController = Get.put(PokemonController());

  Future<Widget> futureCall() async {
    callMethodAsync();
    return Future.value(const HomeScreen());
  }

  Future callMethodAsync() async {
    await pokemonController.getPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        logoPokeball,
      ),
      title: const Text(
        "Pokedéx",
        style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: white),
      ),
      backgroundColor: red,
      showLoader: false,
      loaderColor: white,
      futureNavigator: futureCall(),
      durationInSeconds: 5,
    );
  }
}
