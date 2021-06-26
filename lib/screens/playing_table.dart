import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/model/player.dart';
import 'package:auc_setu/model/suit.dart';
import 'package:auc_setu/widgets/players/player_east.dart';
import 'package:auc_setu/widgets/players/player_north.dart';
import 'package:auc_setu/widgets/players/player_south.dart';
import 'package:auc_setu/widgets/players/player_west.dart';
import 'package:auc_setu/widgets/playing_table/play_area.dart';
import 'package:flutter/material.dart';

class PlayingTable extends StatefulWidget {
  @override
  _PlayingTableState createState() => _PlayingTableState();
}

class _PlayingTableState extends State<PlayingTable> {
  final double verticalCardHeight = 90.0;

  List<PCardModel> cards = [
    PCardModel('A', Heart.suit),
    PCardModel('Q', Heart.suit),
    PCardModel('10', Heart.suit),
    PCardModel('9', Heart.suit),
    PCardModel('K', Spade.suit),
    PCardModel('8', Spade.suit),
    PCardModel('A', Diamond.suit),
    PCardModel('J', Diamond.suit),
    PCardModel('8', Diamond.suit),
    PCardModel('6', Diamond.suit),
    PCardModel('J', Club.suit),
    PCardModel('7', Club.suit),
    PCardModel('3', Club.suit),
  ];

  final List<CurrentlyPlayingCardModel> currentlyPlayingCards = [
    CurrentlyPlayingCardModel(Player.East, 'J', Heart.suit),
    CurrentlyPlayingCardModel(Player.North, '5', Heart.suit),
    CurrentlyPlayingCardModel(Player.West, '8', Club.suit),
  ];

  void _cardDroppedOnPlayArea({
    required CurrentlyPlayingCardModel card,
  }) {
    setState(() {
      cards.removeWhere(
          (item) => item.suit == card.suit && item.rank == card.rank);
      currentlyPlayingCards.add(card);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple[900],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: RotatedBox(
                quarterTurns: 3,
                child: PlayerWest(cards),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: PlayerNorth(cards),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                        width: verticalCardHeight * 2 + 20,
                        /* decoration: BoxDecoration(
                        color: Colors.orange[200],
                      ), */
                        child: DragTarget(
                          builder: (context, candidateItems, rejectedItems) {
                            return PlayArea(
                                currentlyPlayingCards, verticalCardHeight);
                          },
                          onAccept: (CurrentlyPlayingCardModel item) {
                            _cardDroppedOnPlayArea(card: item);
                          },
                        ))),
                Expanded(
                  child: PlayerSouth(cards),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: RotatedBox(
                quarterTurns: 1,
                child: PlayerEast(cards),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
