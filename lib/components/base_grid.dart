import 'package:battleship/components/battle_grid_tile.dart';
import 'package:battleship/util.dart';
import 'package:flutter/material.dart';

class BaseGrid extends StatelessWidget {
  const BaseGrid({
    Key? key,
    required this.cellsize,
  }) : super(key: key);

  final double cellsize;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 11,
        children: List.generate(121, (index) {
          final cord = oneDToTwoD(index, 11);
          return BattleGridTile(cord: cord, cellsize: cellsize);
        }));
  }
}
