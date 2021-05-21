import 'package:battleship/models.dart';
import 'package:battleship/providers.dart';
import 'package:battleship/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BattleFieldCell extends HookWidget {
  const BattleFieldCell({
    Key? key,
    required this.activeDrangIndex,
    required this.iCoordinates,
    required this.cellsize,
    required this.index,
  }) : super(key: key);

  final ValueNotifier<List<Coordinate>?> activeDrangIndex;
  final Coordinate iCoordinates;
  final double cellsize;
  final int index;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      onWillAccept: (data) {
        final ship = data as ShipInfo;
        activeDrangIndex.value = getAllShipCoordinates(ship, iCoordinates);
        return true;
      },
      onAccept: (data) {
        //Snap ship to drag location
        final ship = data as ShipInfo;
        context
            .read(battleFieldController.notifier)
            .moveShip(ship, iCoordinates);
      },
      builder: (context, candidateData, rejectedData) {
        return Container(
            width: cellsize,
            height: cellsize,
            decoration: BoxDecoration(
                border: Border.all(
              width: activeDrangIndex.value!
                      .any((element) => element == oneDToTwoD(index, 10))
                  ? 3
                  : 1,
              color: activeDrangIndex.value!
                      .any((element) => element == oneDToTwoD(index, 10))
                  ? Colors.blue
                  : Colors.amber,
            )));
      },
    );
  }
}
