import 'package:battleship/controller.dart';
import 'package:battleship/data.dart';
import 'package:battleship/models.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final battleFieldController =
    StateNotifierProvider<BattleFieldState, BoardState>((ref) {
  return BattleFieldState(inintialBoardState);
});
