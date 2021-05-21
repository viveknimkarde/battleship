import 'package:battleship/data.dart';
import 'package:battleship/models.dart';
import 'package:just_audio/just_audio.dart';

Coordinate getCoordinate(String location) {
  int xCoord = kXLabels.indexOf(location.substring(1));
  int yCoord = kYLabels.indexOf(location[0]);
  return Coordinate(x: xCoord, y: yCoord);
}

int twoDToOneD(Coordinate coord, int xlen) {
  return (coord.x * xlen) + coord.y;
}

Coordinate oneDToTwoD(int index, int xlen) {
  return Coordinate(x: (index ~/ xlen), y: index % xlen);
}

List<Coordinate> getAllShipCoordinates(
    ShipInfo ship, Coordinate? iCoordinates) {
  final coordList = List<Coordinate>.generate(ship.length, (i) {
    if (ship.orientation == ShipOrientation.vertical) {
      if (iCoordinates != null) {
        return Coordinate(x: iCoordinates.x + i, y: iCoordinates.y);
      } else {
        return Coordinate(x: ship.start.x + i, y: ship.start.y);
      }
    } else {
      if (iCoordinates != null) {
        return Coordinate(x: iCoordinates.x, y: iCoordinates.y + i);
      } else {
        return Coordinate(x: ship.start.x, y: ship.start.y + i);
      }
    }
  });
  return coordList;
}

void playSound(AudioPlayer player, String asset) async {
  await player.setAsset(asset);
  player.play();
}
