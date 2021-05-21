import 'package:battleship/data.dart';
import 'package:battleship/models.dart';
import 'package:battleship/util.dart';
import 'package:just_audio/just_audio.dart';
import 'package:riverpod/riverpod.dart';

class BattleFieldState extends StateNotifier<BoardState> {
  BattleFieldState([BoardState? initialTodos])
      : super(
            initialTodos ?? const BoardState(ships: [], hits: [], misses: []));

  final player = AudioPlayer();

  bool bomb(String location) {
    //Get Coordinates from string Location
    Coordinate locCoordinates = getCoordinate(location);

    //Check if coordinates of bomb matches any ship's coordinates
    bool isHit = state.ships.any((ship) {
      return getAllShipCoordinates(ship, null)
          .any((element) => element == locCoordinates);
    });

    // Update state of board with hits and misses

    if (isHit) {
      state = state.copyWith(hits: [...state.hits, locCoordinates]);
      playSound(player, 'assets/hit.wav');
    } else {
      state = state.copyWith(misses: [...state.misses, locCoordinates]);
      playSound(player, 'assets/miss.wav');
    }

    return isHit;
  }

  void moveShip(ShipInfo ship, Coordinate iCoordinates) {
    //Change Coordinates of the ship based on drag coordinates

    state = state.copyWith(ships: [
      ...state.ships.where((element) => element.id != ship.id),
      ship.copyWith(start: iCoordinates)
    ]);
  }

  void rotateShip(ShipInfo ship) {
    //Change orientation of the ship between when a user double taps on a ship

    state = state.copyWith(ships: [
      ...state.ships.where((element) => element.id != ship.id),
      ship.copyWith(
          orientation: ship.orientation == ShipOrientation.vertical
              ? ShipOrientation.horizontal
              : ShipOrientation.vertical)
    ]);
  }
}
