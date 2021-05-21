import 'package:battleship/models.dart';
import 'package:flutter/material.dart';

class HitResultTile extends StatelessWidget {
  const HitResultTile({
    Key? key,
    required this.boardState,
    required this.targetLoc,
  }) : super(key: key);

  final BoardState boardState;
  final Coordinate targetLoc;

  @override
  Widget build(BuildContext context) {
    bool isHit = boardState.hits.any((element) => element == targetLoc);
    bool isMiss = boardState.misses.any((element) => element == targetLoc);
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
