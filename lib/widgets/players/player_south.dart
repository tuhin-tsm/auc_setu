import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/widgets/playing_table/hand.dart';
import 'package:flutter/material.dart';

class PlayerSouth extends StatelessWidget {
  final List<CardModel> cards;

  PlayerSouth(this.cards);

  @override
  Widget build(BuildContext context) {
    return Hand(cards, isDisabled: false, isVisible: true);
  }
}
