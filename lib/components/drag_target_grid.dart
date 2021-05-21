import 'package:battleship/components/battlefield_cell.dart';
import 'package:battleship/models.dart';
import 'package:battleship/util.dart';
import 'package:flutter/material.dart';

class DragTargetGrid extends StatelessWidget {
  const DragTargetGrid({
    Key? key,
    required this.cellsize,
    required this.activeDrangIndex,
  }) : super(key: key);

  final double cellsize;
  final ValueNotifier<List<Coordinate>?> activeDrangIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: cellsize, top: cellsize),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 10,
        children: List.generate(100, (index) {
          final iCoordinates = oneDToTwoD(index, 10);
          return BattleFieldCell(
              activeDrangIndex: activeDrangIndex,
              iCoordinates: iCoordinates,
              cellsize: cellsize,
              index: index);
        }),
      ),
    );
  }
}
