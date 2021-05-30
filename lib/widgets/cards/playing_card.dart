import 'package:flutter/material.dart';
import 'package:auc_setu/model/suit.dart';

class PlayingCard extends StatelessWidget {
  final String rank;
  final String suitName;

  PlayingCard(this.rank, this.suitName);

  @override
  Widget build(BuildContext context) {
    const double cardHeight = 222.0;
    const double cardWidth = cardHeight * 0.7;
    const double iconWidth = cardWidth * 0.5;

    const suitTextStyle =
        TextStyle(fontSize: iconWidth, fontWeight: FontWeight.bold);
    const blackTextStyle = TextStyle(color: BLACK_SUIT_COLOR);
    const redTextStyle = TextStyle(color: RED_SUIT_COLOR);

    return Center(
        child: Container(
      height: cardHeight,
      width: cardWidth,
      child: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/cards/card_bg_3x.png'),
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 20.0, top: 20),
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    rank,
                    style: suitTextStyle.merge(
                        suitName == Club.name || suitName == Spade.name
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
      ),
    ));
  }
}