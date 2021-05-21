import 'package:battleship/components/battle_grid_tile.dart';
import 'package:battleship/components/battle_ship.dart';
import 'package:battleship/components/battlefield_cell.dart';
import 'package:battleship/components/control_panel.dart';
import 'package:battleship/components/hit_result_tile.dart';
import 'package:battleship/models.dart';
import 'package:battleship/providers.dart';
import 'package:battleship/util.dart';
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
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Score"),
              Text(
                  "Hits: ${boardState.hits.length}, Misses: ${boardState.misses.length}"),
            ],
          ),
          SizedBox(
            width: cellsize * 11,
            height: cellsize * 11,
            child: Stack(
              children: <Widget>[
                //BaseGrid With Labels
                GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 11,
                    children: List.generate(121, (index) {
                      final cord = oneDToTwoD(index, 11);
                      return BattleGridTile(cord: cord, cellsize: cellsize);
                    })),

                //Active Grid For DragTarget
                Padding(
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
                ),
                ...boardState.ships.map((ship) {
                  return Ship(
                      cellsize: cellsize,
                      activeDrangIndex: activeDrangIndex,
                      ship: ship);
                }),
                Padding(
                  padding: EdgeInsets.only(left: cellsize, top: cellsize),
                  child: IgnorePointer(
                    child: GridView.count(
                      crossAxisCount: 10,
                      children: List.generate(100, (index) {
                        Coordinate coord = oneDToTwoD(index, 10);
                        return HitResultTile(
                            boardState: boardState, coord: coord);
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ControllPanel(bombLocationController: bombLocationController),
        ],
      ),
    );
  }
}
