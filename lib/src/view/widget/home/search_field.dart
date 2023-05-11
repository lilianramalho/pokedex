import 'package:flutter/material.dart';
import 'package:pokedex/src/utils/constants/color_util.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        width: 80.w,
        height: 4.5.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: white,
        ),
        child: const TextField(
          autofocus: false,
          decoration: InputDecoration(
            focusColor: Colors.transparent,
            icon: Icon(
              Icons.search,
              color: red,
            ),
            hintText: "Search",
            border: OutlineInputBorder(
              borderSide: BorderSide.none
            )
          ),
        ),
      ),
    );
  }
}