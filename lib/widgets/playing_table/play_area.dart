import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/model/player.dart';
import 'package:auc_setu/model/suit.dart';
import 'package:auc_setu/widgets/playing_table/play_area_card.dart';
import 'package:flutter/material.dart';

class PlayArea extends StatelessWidget {
  final double verticalCardHeight;
  PlayArea(this.verticalCardHeight);

  // TODO: Make dynamic
  final List<PCardModel> cards = [
    PCardModel(Heart.color, 'J', Heart.suit),
    PCardModel(Heart.color, '5', Heart.suit),
    PCardModel(Club.color, '8', Club.suit),
    PCardModel(Heart.color, 'K', Heart.suit),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PlayAreaCard(cards[0], Player.East, verticalCardHeight),
      PlayAreaCard(cards[1], Player.North, verticalCardHeight),
      PlayAreaCard(cards[2], Player.West, verticalCardHeight),
      PlayAreaCard(cards[3], Player.South, verticalCardHeight),
    ]);
  }
}
