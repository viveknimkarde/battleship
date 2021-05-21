import 'package:battleship/models.dart';

enum ShipOrientation { horizontal, vertical }

const inintialBoardState = BoardState(ships: [
  ShipInfo(
      id: "1",
      image: "image",
      length: 3,
      start: Coordinate(x: 1, y: 5),
      orientation: ShipOrientation.horizontal),
  ShipInfo(
      id: "2",
      image: "image",
      length: 5,
      start: Coordinate(x: 0, y: 2),
      orientation: ShipOrientation.horizontal),
  ShipInfo(
      id: "3",
      image: "image",
      length: 3,
      start: Coordinate(x: 5, y: 5),
      orientation: ShipOrientation.horizontal),
  ShipInfo(
      id: "4",
      image: "image",
      length: 3,
      start: Coordinate(x: 5, y: 1),
      orientation: ShipOrientation.vertical)
], hits: [], misses: []);

const List<String> kYLabels = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J"
];
const List<String> kXLabels = [
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
