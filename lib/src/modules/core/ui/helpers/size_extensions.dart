import 'package:flutter/material.dart';

extension SizeExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  //pega a menor altura e a menor largura do espaço disponivel
  double get screenShortestSide => MediaQuery.of(this).size.shortestSide;
  //o maior tamanho entre a altura e a largura
  double get screenLongestSide => MediaQuery.of(this).size.longestSide;

  double percentWidth(double percent) => screenWidth * percent;
  double percentHeight(double percent) =>  screenHeight * percent;
}
