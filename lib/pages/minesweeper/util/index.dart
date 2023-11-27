import 'foundation.dart';

int getFlattenIndex(int x, int y) {
  return x + y * MinesweeperFoundation.width;
}

(int x, int y) getCoordinate(int index) {
  return (
    index % MinesweeperFoundation.width,
    index ~/ MinesweeperFoundation.width
  );
}

bool isOutOfBound(int x, int y) {
  return x < 0 ||
      x >= MinesweeperFoundation.width ||
      y < 0 ||
      y >= MinesweeperFoundation.height;
}
