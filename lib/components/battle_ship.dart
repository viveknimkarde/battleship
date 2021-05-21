import 'dart:math' as math;

import 'package:battleship/data.dart';
import 'package:battleship/models.dart';
import 'package:battleship/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Ship extends HookWidget {
  const Ship({
    Key? key,
    required this.cellsize,
    required this.activeDrangIndex,
    required this.ship,
  }) : super(key: key);

  final double cellsize;
  final ValueNotifier<List<Coordinate>?> activeDrangIndex;
  final ShipInfo ship;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ((ship.start.x + 1) * cellsize).toDouble(),
      left: ((ship.start.y + 1) * cellsize).toDouble(),
      child: Transform.rotate(
        origin: Offset(
          ship.orientation == ShipOrientation.vertical
              ? -(cellsize * ship.length) / 2 + (cellsize / 2)
              : 0,
          0,
        ),
        angle: ship.orientation == ShipOrientation.vertical ? math.pi / 2 : 0,
        child: Draggable(
          onDraggableCanceled: (velocity, offset) {
            activeDrangIndex.value = [];
          },
          onDragEnd: (details) {
            activeDrangIndex.value = [];
          },
          data: ship,
          childWhenDragging: Container(),
          feedback: Transform.rotate(
            angle:
                ship.orientation == ShipOrientation.vertical ? math.pi / 2 : 0,
            child: Image(
              image: const AssetImage('assets/warship.png'),
              width: cellsize * ship.length,
              height: cellsize,
            ),
          ),
          child: GestureDetector(
            onDoubleTap: () {
              context.read(battleFieldController.notifier).rotateShip(ship);
            },
            child: Image(
              image: const AssetImage('assets/warship.png'),
              width: cellsize * ship.length,
              height: cellsize,
            ),
          ),
        ),
      ),
    );
  }
}
