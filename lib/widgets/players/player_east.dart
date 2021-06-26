import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/widgets/playing_table/hand.dart';
import 'package:flutter/material.dart';

class PlayerEast extends StatelessWidget {
  final List<PCardModel> cards;

  PlayerEast(this.cards);

  @override
  Widget build(BuildContext context) {
    return Hand(cards, indent: 26.2);
  }
}
