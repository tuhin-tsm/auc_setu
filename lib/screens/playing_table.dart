import 'package:auc_setu/model/card.dart';
import 'package:auc_setu/model/suit.dart';
import 'package:auc_setu/widgets/players/player_east.dart';
import 'package:auc_setu/widgets/players/player_north.dart';
import 'package:auc_setu/widgets/players/player_south.dart';
import 'package:auc_setu/widgets/players/player_west.dart';
import 'package:flutter/material.dart';

class PlayingTable extends StatefulWidget {
  @override
  _PlayingTableState createState() => _PlayingTableState();
}

class _PlayingTableState extends State<PlayingTable> {
  List<CardModel> cards = [
    CardModel(Heart.color, 'A', Heart.suit),
    CardModel(Heart.color, 'Q', Heart.suit),
    CardModel(Heart.color, '10', Heart.suit),
    CardModel(Heart.color, '9', Heart.suit),
    CardModel(Spade.color, 'K', Spade.suit),
    CardModel(Spade.color, '8', Spade.suit),
    CardModel(Diamond.color, 'A', Diamond.suit),
    CardModel(Diamond.color, 'J', Diamond.suit),
    CardModel(Diamond.color, '8', Diamond.suit),
    CardModel(Diamond.color, '6', Heart.suit),
    CardModel(Club.color, 'J', Club.suit),
    CardModel(Club.color, '7', Club.suit),
    CardModel(Club.color, '3', Club.suit),
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
                  child: Container(),
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
