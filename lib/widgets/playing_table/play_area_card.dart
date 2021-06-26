import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/widgets/cards/playing_card_visible.dart';
import 'package:flutter/material.dart';
import 'package:auc_setu/model/player.dart';

class PlayAreaCard extends StatelessWidget {
  final PCardModel card;
  final Player player;
  final double verticalCardHeight;

  PlayAreaCard(this.card, this.player, this.verticalCardHeight);

  @override
  Widget build(BuildContext context) {
    final verticalCardDimensions = PCardDimensions(verticalCardHeight);

    switch (player) {
      case Player.North:
        return Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: verticalCardDimensions.height,
              width: verticalCardDimensions.width,
              child: PlayingCardVisible(
                verticalCardDimensions.iconWidth,
                card.rank,
                card.suit,
              ),
            ));
      case Player.East:
        return Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: verticalCardDimensions.width,
              width: verticalCardDimensions.height,
              child: RotatedBox(
                  quarterTurns: 1,
                  child: PlayingCardVisible(
                    verticalCardDimensions.iconWidth,
                    card.rank,
                    card.suit,
                  )),
            ));
      case Player.West:
        return Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: verticalCardDimensions.width,
              width: verticalCardDimensions.height,
              child: RotatedBox(
                  quarterTurns: 3,
                  child: PlayingCardVisible(
                    verticalCardDimensions.iconWidth,
                    card.rank,
                    card.suit,
                  )),
            ));

      case Player.South:
      default:
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: verticalCardDimensions.height,
            width: verticalCardDimensions.width,
            child: PlayingCardVisible(
              verticalCardDimensions.iconWidth,
              card.rank,
              card.suit,
            ),
          ),
        );
    }
  }
}
