import 'package:flutter/material.dart';

AnimatedContainer page({int? index, int? currentPage}) {
  return AnimatedContainer(
    duration: kThemeAnimationDuration,
    margin: const EdgeInsets.only(right: 8.0),
    height: 7.5,
    width: currentPage == index ? 40 : 15,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: currentPage == index
          ? const Color(0xFFE73863)
          : Colors.grey[300], //Operador Ternario!
    ),
  );
}
