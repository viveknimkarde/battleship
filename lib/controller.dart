import 'package:battleship/boardstate.dart';
import 'package:riverpod/riverpod.dart';

const List<String> xLabels = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"];
const List<String> yLabels = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10"
];

Coordinate getCoordinate(String location) {
  int xCoord = xLabels.indexOf(location[0]);
  int yCoord = yLabels.indexOf(location[1]);
  return Coordinate(x: xCoord, y: yCoord);
}

int twoDToOneD(Coordinate coord, int xlen) {
  return (coord.x * xlen) + coord.y;
}

Coordinate oneDToTwoD(int index, int xlen) {
  return Coordinate(x: (index ~/ xlen), y: index % xlen);
}

class BattleFieldState extends StateNotifier<BoardState> {
  BattleFieldState([BoardState? initialTodos])
      : super(
            initialTodos ?? const BoardState(ships: [], hits: [], misses: []));

  bool bomb(String location) {
    Coordinate locCoordinates = getCoordinate(location);
    // did it hit the ship
    bool isHit = state.ships.any((ship) {
      return List<Coordinate>.generate(ship.length, (i) {
        if (ship.orientation == 'vertical') {
          return Coordinate(x: ship.start.x, y: ship.start.y + i);
        } else {
          return Coordinate(x: ship.start.x + i, y: ship.start.y);
        }
      }).any((element) => element == locCoordinates);
    });
    if (isHit) {
      state = state.copyWith(hits: [...state.hits, locCoordinates]);
    } else {
      state = state.copyWith(misses: [...state.misses, locCoordinates]);
    }
    return isHit;
  }

  void moveShip(Ship ship, Coordinate iCoordinates) {
    state = state.copyWith(ships: [
      ...state.ships.where((element) => element.id != ship.id),
      ship.copyWith(start: iCoordinates)
    ]);
  }
}
