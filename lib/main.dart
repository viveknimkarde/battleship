import 'package:battleship/boardstate.dart';
import 'package:battleship/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final battleFieldController =
    StateNotifierProvider<BattleFieldState, BoardState>((ref) {
  return BattleFieldState(const BoardState(ships: [
    Ship(
        id: "1",
        image: "image",
        length: 5,
        start: Coordinate(x: 0, y: 2),
        orientation: 'horizontal')
  ], hits: [
    Coordinate(x: 1, y: 1)
  ], misses: []));
});

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

double elevation = 5;

final boxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(6.0),
  color: Colors.grey.shade50,
  shape: BoxShape.rectangle,
  boxShadow: [
    BoxShadow(
        color: Colors.grey.shade300,
        spreadRadius: 0.0,
        blurRadius: elevation,
        offset: const Offset(3.0, 3.0)),
    BoxShadow(
        color: Colors.grey.shade400,
        spreadRadius: 0.0,
        blurRadius: elevation / 2.0,
        offset: const Offset(3.0, 3.0)),
    BoxShadow(
        color: Colors.white,
        spreadRadius: 2.0,
        blurRadius: elevation,
        offset: const Offset(-3.0, -3.0)),
    BoxShadow(
        color: Colors.white,
        spreadRadius: 2.0,
        blurRadius: elevation / 2,
        offset: const Offset(-3.0, -3.0)),
  ],
);

class MyHomePage extends HookWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final activeDrangIndex = useState<List<Coordinate>?>([]);
    final boardState = useProvider(battleFieldController);
    final bombLocationController = useTextEditingController();
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
          const Text("Score"),
          SizedBox(
            width: cellsize * 11,
            height: cellsize * 11,
            child: Stack(
              children: <Widget>[
                GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 11,
                    children: List.generate(121, (index) {
                      final cord = oneDToTwoD(index, 11);

                      return Container(
                          alignment: Alignment.center,
                          child: cord.x == 0 && cord.y != 0
                              ? Text(yLabels[cord.y - 1])
                              : cord.y == 0 && cord.x != 0
                                  ? Text(xLabels[cord.x - 1])
                                  : const SizedBox.shrink(),
                          width: cellsize,
                          height: cellsize,
                          decoration: BoxDecoration(
                              border: Border.all(
                            width: 1,
                            color: Colors.amber,
                          )));
                    })),
                Padding(
                  padding: EdgeInsets.only(left: cellsize, top: cellsize),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 10,
                    children: List.generate(100, (index) {
                      final iCoordinates = oneDToTwoD(index, 10);
                      return DragTarget(
                        onWillAccept: (data) {
                          final ship = data as Ship;
                          activeDrangIndex.value =
                              List<Coordinate>.generate(ship.length, (i) {
                            if (ship.orientation == 'vertical') {
                              return Coordinate(
                                  x: iCoordinates.x + (i), y: iCoordinates.y);
                            } else {
                              return Coordinate(
                                  x: iCoordinates.x, y: iCoordinates.y + (i));
                            }
                          });

                          return true;
                        },
                        onAccept: (data) {
                          final ship = data as Ship;
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
                                width: activeDrangIndex.value!.any((element) =>
                                        element == oneDToTwoD(index, 10))
                                    ? 3
                                    : 1,
                                color: activeDrangIndex.value!.any((element) =>
                                        element == oneDToTwoD(index, 10))
                                    ? Colors.blue
                                    : Colors.amber,
                              )));
                        },
                      );
                    }),
                  ),
                ),
                ...boardState.ships.map((ship) {
                  return Positioned(
                    top: ((ship.start.x + 1) * cellsize).toDouble(),
                    left: ((ship.start.y + 1) * cellsize).toDouble(),
                    child: Draggable(
                      onDraggableCanceled: (velocity, offset) {
                        activeDrangIndex.value = [];
                      },
                      onDragEnd: (details) {
                        activeDrangIndex.value = [];
                      },
                      data: ship,
                      feedback: Image(
                        image: const AssetImage('assets/warship.png'),
                        width: cellsize * ship.length,
                        height: cellsize,
                      ),
                      child: Image(
                        image: const AssetImage('assets/warship.png'),
                        width: cellsize * ship.length,
                        height: cellsize,
                      ),
                    ),
                  );
                }),
                Padding(
                  padding: EdgeInsets.only(left: cellsize, top: cellsize),
                  child: IgnorePointer(
                    child: GridView.count(
                      crossAxisCount: 10,
                      children: List.generate(100, (index) {
                        Coordinate coord = oneDToTwoD(index, 10);
                        bool isHit =
                            boardState.hits.any((element) => element == coord);
                        bool isMiss = boardState.misses
                            .any((element) => element == coord);
                        return Center(
                            child:
                                Text((isHit ? 'X' : '') + (isMiss ? 'Y' : '')));
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 100,
                child: TextField(
                  controller: bombLocationController,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  context
                      .read(battleFieldController.notifier)
                      .bomb(bombLocationController.text);
                },
                child: const Text("Gello"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
