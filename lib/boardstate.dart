import 'package:freezed_annotation/freezed_annotation.dart';

part 'boardstate.freezed.dart';

@freezed
abstract class BoardState with _$BoardState {
  const factory BoardState(
      {required List<Ship> ships,
      required List<Coordinate> hits,
      required List<Coordinate> misses}) = _BoardState;
}

@freezed
abstract class Coordinate with _$Coordinate {
  const factory Coordinate({required int x, required int y}) = _Coordinate;
}

@freezed
abstract class Ship with _$Ship {
  const factory Ship(
      {required String id,
      required String image,
      required int length,
      required Coordinate start,
      required String orientation}) = _Ship;
}
