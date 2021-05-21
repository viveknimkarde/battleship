import 'package:battleship/models.dart';
import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({
    Key? key,
    required this.boardState,
  }) : super(key: key);

  final BoardState boardState;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Score"),
        Text(
            "Hits: ${boardState.hits.length}, Misses: ${boardState.misses.length}"),
      ],
    );
  }
}
