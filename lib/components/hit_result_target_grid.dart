import 'package:battleship/components/hit_result_tile.dart';
import 'package:battleship/models.dart';
import 'package:battleship/util.dart';
import 'package:flutter/material.dart';

class HitResultTargetGrid extends StatelessWidget {
  const HitResultTargetGrid({
    Key? key,
    required this.cellsize,
    required this.boardState,
  }) : super(key: key);

  final double cellsize;
  final BoardState boardState;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: cellsize, top: cellsize),
      child: IgnorePointer(
        child: GridView.count(
          crossAxisCount: 10,
          children: List.generate(100, (index) {
            Coordinate targetLoc = oneDToTwoD(index, 10);
            return HitResultTile(
              boardState: boardState,
              targetLoc: targetLoc,
            );
          }),
        ),
      ),
    );
  }
}
