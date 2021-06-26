import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/widgets/playing_table/play_area_card.dart';
import 'package:flutter/material.dart';

class PlayArea extends StatelessWidget {
  final List<CurrentlyPlayingCardModel> cards;
  final double verticalCardHeight;

  PlayArea(this.cards, this.verticalCardHeight);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      for (var card in cards)
        PlayAreaCard(card, card.player, verticalCardHeight),
    ]);
  }
}
