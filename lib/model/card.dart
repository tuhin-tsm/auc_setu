import 'package:flutter/material.dart';

class PCardModel {
  final Color color;
  final String rank;
  final String suit;

  PCardModel(this.color, this.rank, this.suit);
}

class PCardDimensions {
  late double height;
  late double iconWidth;
  late double width;

  PCardDimensions(double height) {
    this.height = height;
    this.width = height * 0.7;
    this.iconWidth = this.width * 0.5;
  }
}
