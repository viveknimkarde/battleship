import 'package:battleship/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
abstract class BoardState with _$BoardState {
  const factory BoardState(
      {required List<ShipInfo> ships,
      required List<Coordinate> hits,
      required List<Coordinate> misses}) = _BoardState;
}

@freezed
abstract class Coordinate with _$Coordinate {
  const factory Coordinate({required int x, required int y}) = _Coordinate;
}

@freezed
abstract class ShipInfo with _$ShipInfo {
  const factory ShipInfo(
      {required String id,
      required String image,
      required int length,
      required Coordinate start,
      required ShipOrientation orientation}) = _ShipInfo;
}
