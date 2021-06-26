import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/widgets/cards/playing_card.dart';
import 'package:flutter/material.dart';

class Hand extends StatelessWidget {
  final List<PCardModel> cards;
  final bool isDisabled;
  final bool isVisible;
  final double indent;

  Hand(this.cards,
      {this.isDisabled = true, this.isVisible = false, this.indent = 32.0});

  @override
  Widget build(BuildContext context) {
    List<Widget> getCards(List<PCardModel> items) {
      List<Widget> list = [];
      for (var i = 0; i < items.length; i++) {
        list.add(Positioned(
          left: indent * i,
          child: PlayingCard(
            items[i].rank,
            items[i].suit,
            isDisabled: isDisabled,
            isVisible: isVisible,
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
