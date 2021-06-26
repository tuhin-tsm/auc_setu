import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/widgets/playing_table/hand.dart';
import 'package:flutter/material.dart';

class PlayerNorth extends StatelessWidget {
  final List<PCardModel> cards;
  final Function onCardPlay;

  PlayerNorth(this.cards, this.onCardPlay);

  @override
  Widget build(BuildContext context) {
    return Hand(
      cards,
      isVisible: true,
      onCardPlay: onCardPlay,
    );
  }
}
