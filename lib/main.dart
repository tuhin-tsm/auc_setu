import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'screens/playing_table.dart';

void main() {
  // debugPaintSizeEnabled = true;

  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: SafeArea(
      child: Scaffold(body: PlayingTable()),
    ),
  ));
}
