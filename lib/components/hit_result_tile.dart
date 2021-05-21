import 'package:battleship/models.dart';
import 'package:flutter/material.dart';

class HitResultTile extends StatelessWidget {
  const HitResultTile({
    Key? key,
    required this.boardState,
    required this.coord,
  }) : super(key: key);

  final BoardState boardState;
  final Coordinate coord;

  @override
  Widget build(BuildContext context) {
    bool isHit = boardState.hits.any((element) => element == coord);
    bool isMiss = boardState.misses.any((element) => element == coord);
    return Center(
        child: Text(
      (isHit ? 'X' : '') + (isMiss ? 'O' : ''),
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32,
          color: isHit ? Colors.red : Colors.green),
    ));
  }
}
