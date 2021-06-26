import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:auc_setu/widgets/cards/playing_card_visible.dart';
import 'package:auc_setu/widgets/cards/playing_card_hidden.dart';

class PlayingCard extends StatelessWidget {
  final bool isDisabled;
  final bool isVisible;
  final String rank;
  final String suitName;

  PlayingCard(this.rank, this.suitName,
      {this.isDisabled = true, this.isVisible = false});

  @override
  Widget build(BuildContext context) {
    const double cardHeight = 75.0;
    const double cardWidth = cardHeight * 0.7;
    const double iconWidth = cardWidth * 0.5;

    void _handleTap() {
      if (!isDisabled) {
        Fluttertoast.showToast(msg: "$rank of $suitName clicked");
      }
    }

    return InkWell(
        onTap: _handleTap,
        child: Center(
            child: Container(
                height: cardHeight,
                width: cardWidth,
                // child: PlayingCardVisible(iconWidth, rank, suitName)
                child: isVisible
                    ? PlayingCardVisible(iconWidth, rank, suitName)
                    : PlayingCardHidden())));
  }
}
