import 'package:auc_setu/model/card.dart';
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
    PCardModel(Heart.color, 'A', Heart.suit),
    PCardModel(Heart.color, 'Q', Heart.suit),
    PCardModel(Heart.color, '10', Heart.suit),
    PCardModel(Heart.color, '9', Heart.suit),
    PCardModel(Spade.color, 'K', Spade.suit),
    PCardModel(Spade.color, '8', Spade.suit),
    PCardModel(Diamond.color, 'A', Diamond.suit),
    PCardModel(Diamond.color, 'J', Diamond.suit),
    PCardModel(Diamond.color, '8', Diamond.suit),
    PCardModel(Diamond.color, '6', Heart.suit),
    PCardModel(Club.color, 'J', Club.suit),
    PCardModel(Club.color, '7', Club.suit),
    PCardModel(Club.color, '3', Club.suit),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal[900],
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
                      child: PlayArea(verticalCardHeight)),
                ),
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
