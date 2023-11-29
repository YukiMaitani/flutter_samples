import 'foundation.dart';

int getFlattenIndex(int x, int y) {
  return x + y * MinesweeperFoundation.width;
}

({int x, int y}) getCoordinate(int index) {
  return (
    x: index % MinesweeperFoundation.width,
    y: index ~/ MinesweeperFoundation.width
  );
}

bool isOutOfBound(int x, int y) {
  return x < 0 ||
      x >= MinesweeperFoundation.width ||
      y < 0 ||
      y >= MinesweeperFoundation.height;
}

List<({int x, int y})> getAroundSquares(int x, int y) {
  final result = <({int x, int y})>[];
  for (int i = -1; i <= 1; i++) {
    for (int j = -1; j <= 1; j++) {
      final newX = x + i;
      final newY = y + j;
      if (isOutOfBound(newX, newY)) {
        continue;
      }
      result.add((x: newX, y: newY));
    }
  }
  return result;
}
