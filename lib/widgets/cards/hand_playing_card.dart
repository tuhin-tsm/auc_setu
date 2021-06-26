import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/model/player.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:auc_setu/widgets/cards/playing_card_visible.dart';
import 'package:auc_setu/widgets/cards/playing_card_hidden.dart';

class HandPlayingCard extends StatelessWidget {
  final bool isDisabled;
  final bool isVisible;
  final String rank;
  final String suitName;

  // TODO: refactor rank and suit into PCardModel
  HandPlayingCard(this.rank, this.suitName,
      {this.isDisabled = true, this.isVisible = false});

  @override
  Widget build(BuildContext context) {
    final standardCardDimensions = PCardDimensions(75.0);
    final draggedCardDimensions = PCardDimensions(100.0);

    final CurrentlyPlayingCardModel currentlyPlayingCard =
        CurrentlyPlayingCardModel(Player.South, rank, suitName);

    void _handleTap() {
      if (!isDisabled) {
        Fluttertoast.showToast(msg: "$rank of $suitName clicked");
      }
    }

    return InkWell(
        onTap: _handleTap,
        child: Center(
            child: isDisabled
                ? Container(
                    height: standardCardDimensions.height,
                    width: standardCardDimensions.width,
                    child: isVisible
                        ? PlayingCardVisible(
                            standardCardDimensions.iconWidth, rank, suitName)
                        : PlayingCardHidden())
                : LongPressDraggable(
                    data: currentlyPlayingCard,
                    dragAnchorStrategy: childDragAnchorStrategy,
                    child: Container(
                        height: standardCardDimensions.height,
                        width: standardCardDimensions.width,
                        child: PlayingCardVisible(
                            standardCardDimensions.iconWidth, rank, suitName)),
                    childWhenDragging: Container(),
                    feedback: DefaultTextStyle(
                        style: TextStyle(),
                        child: Container(
                            height: draggedCardDimensions.height,
                            width: draggedCardDimensions.width,
                            child: PlayingCardVisible(
                                draggedCardDimensions.iconWidth,
                                rank,
                                suitName))),
                  )));
  }
}
