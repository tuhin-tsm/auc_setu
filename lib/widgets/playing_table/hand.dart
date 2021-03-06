import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/widgets/cards/hand_playing_card.dart';
import 'package:flutter/material.dart';

class Hand extends StatelessWidget {
  final List<PCardModel> cards;
  final bool isDisabled;
  final bool isVisible;
  final double indent;
  final Function onCardPlay;

  static void defaultMethod() {}

  Hand(this.cards,
      {this.isDisabled = true,
      this.isVisible = false,
      this.indent = 32.0,
      this.onCardPlay = defaultMethod});

  @override
  Widget build(BuildContext context) {
    List<Widget> getCards(List<PCardModel> items) {
      List<Widget> list = [];
      for (var i = 0; i < items.length; i++) {
        list.add(Positioned(
          left: indent * i,
          child: HandPlayingCard(
            items[i].rank,
            items[i].suit,
            isDisabled: isDisabled,
            isVisible: isVisible,
            onCardPlay: onCardPlay,
          ),
        ));
      }
      return list;
    }

    return Container(
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          /* Expanded(
            child: Container(),
          ), */
          ...getCards(cards),
        ],
      ),
    );
  }
}
