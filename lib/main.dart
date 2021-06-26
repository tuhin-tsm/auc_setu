import 'package:flutter/material.dart';
import 'screens/playing_table.dart';

void main() {
  // debugPaintSizeEnabled = true;

  runApp(MaterialApp(
    title: 'Auction Setu', // used by the OS task switcher
    home: SafeArea(
      child: Scaffold(body: PlayingTable()),
    ),
  ));
}
