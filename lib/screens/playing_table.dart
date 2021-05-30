import 'package:flutter/material.dart';
import '../widgets/cards/playing_card.dart';
import 'package:auc_setu/model/suit.dart';

class PlayingTable extends StatefulWidget {
  @override
  _PlayingTableState createState() => _PlayingTableState();
}

class _PlayingTableState extends State<PlayingTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal[900],
      ),
      child: Row(
        children: [
          PlayingCard('A', Club.name),
          PlayingCard('K', Heart.name),
          PlayingCard('J', Diamond.name),
          PlayingCard('Q', Spade.name),
        ],
      ),
    );
  }
}
