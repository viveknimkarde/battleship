import 'package:battleship/data.dart';
import 'package:battleship/models.dart';
import 'package:flutter/material.dart';

class BattleGridTile extends StatelessWidget {
  const BattleGridTile({
    Key? key,
    required this.cord,
    required this.cellsize,
  }) : super(key: key);

  final Coordinate cord;
  final double cellsize;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: cord.x == 0 && cord.y != 0
            ? Text(kYLabels[cord.y - 1])
            : cord.y == 0 && cord.x != 0
                ? Text(kXLabels[cord.x - 1])
                : const SizedBox.shrink(),
        width: cellsize,
        height: cellsize,
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
          color: Colors.amber,
        )));
  }
}
