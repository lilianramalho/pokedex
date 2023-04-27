import 'package:flutter/material.dart';
import 'package:pokedex/src/utils/color_util.dart';

class FontStyleUtil {
  static const TextStyle titleAppBar = TextStyle(
    color: ColorUtil.white,
    fontSize: 24,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle nameCard = TextStyle(
    color: ColorUtil.grayDark,
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );
    static const TextStyle numberCard = TextStyle(
    color: ColorUtil.grayMedium,
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );
  
  
}