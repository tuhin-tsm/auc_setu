import 'package:flutter/material.dart';
import 'package:auc_setu/model/suit.dart';

class PlayingCardVisible extends StatelessWidget {
  final double iconWidth;
  final String rank;
  final String suitName;

  PlayingCardVisible(this.iconWidth, this.rank, this.suitName);

  @override
  Widget build(BuildContext context) {
    const blackTextStyle = TextStyle(color: BLACK_SUIT_COLOR);
    const redTextStyle = TextStyle(color: RED_SUIT_COLOR);
    final suitTextStyle =
        TextStyle(fontSize: this.iconWidth, fontWeight: FontWeight.bold);

    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/cards/card_bg_3x.png'),
        ),
        Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  rank,
                  style: suitTextStyle.merge(
                      suitName == Club.suit || suitName == Spade.suit
                          ? blackTextStyle
                          : redTextStyle),
                ),
                Image(
                  image: AssetImage(
                      'assets/images/cards/$suitName/card_${suitName}_3x.png'),
                  width: iconWidth,
                ),
              ],
            )),
      ],
    );
  }
}
