import 'package:battleship/components/base_grid.dart';
import 'package:battleship/components/battle_ship.dart';
import 'package:battleship/components/control_panel.dart';
import 'package:battleship/components/drag_target_grid.dart';
import 'package:battleship/components/hit_result_target_grid.dart';
import 'package:battleship/components/score_grid.dart';
import 'package:battleship/models.dart';
import 'package:battleship/providers.dart';
import 'package:battleship/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: BattleShip()));
}

class BattleShip extends StatelessWidget {
  const BattleShip({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BattleField',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GamePlay(),
    );
  }
}

class GamePlay extends HookWidget {
  const GamePlay({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Providers
    final activeDrangIndex = useState<List<Coordinate>?>([]);
    final boardState = useProvider(battleFieldController);
    final bombLocationController = useTextEditingController();

    // Dynamic CellSize
    final double cellsize =
        ((MediaQuery.of(context).size.height * 2) ~/ 30).toDouble();

    return Scaffold(
      appBar: AppBar(
        title: const Text("BattleShip"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          ScoreBoard(boardState: boardState),
          Container(
            decoration: boxDecoration,
            width: cellsize * 11,
            height: cellsize * 11,
            child: Stack(
              children: <Widget>[
                // BaseGrid With Labels
                BaseGrid(cellsize: cellsize),
                // Active Grid For DragTarget
                DragTargetGrid(
                    cellsize: cellsize, activeDrangIndex: activeDrangIndex),
                // Ships
                ...boardState.ships.map((ship) {
                  return Ship(
                      cellsize: cellsize,
                      activeDrangIndex: activeDrangIndex,
                      ship: ship);
                }),
                //
                HitResultTargetGrid(cellsize: cellsize, boardState: boardState),
              ],
            ),
          ),
          const Text("Double tap on ship to rotate the it"),
          ControllPanel(bombLocationController: bombLocationController),
        ],
      ),
    );
  }
}
