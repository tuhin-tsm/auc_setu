import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/widgets/cards/playing_card.dart';
import 'package:flutter/material.dart';

class Hand extends StatelessWidget {
  final List<CardModel> cards;
  final double indent;

  Hand(this.cards, {this.indent = 32.0});

  @override
  Widget build(BuildContext context) {
    List<Widget> getCards(List<CardModel> items) {
      List<Widget> list = [];
      for (var i = 0; i < items.length; i++) {
        list.add(Positioned(
          left: indent * i,
          child: PlayingCard(items[i].rank, items[i].suit),
        ));
      }
      return list;
    }

    return Container(
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Expanded(
            child: Container(),
          ),
          ...getCards(cards),
        ],
      ),
    );
  }
}