import 'package:auc_setu/model/player.dart';

class PCardModel {
  final String rank;
  final String suit;

  PCardModel(this.rank, this.suit);
}

class CurrentlyPlayingCardModel extends PCardModel {
  late Player player;

  CurrentlyPlayingCardModel(Player player, String rank, String suit)
      : super(rank, suit) {
    this.player = player;
  }
}

class PCardDimensions {
  late double height;
  late double iconWidth;
  late double width;

  PCardDimensions(double height) {
    this.height = height;
    this.width = height * 0.7;
    this.iconWidth = this.width * 0.5;
  }
}
