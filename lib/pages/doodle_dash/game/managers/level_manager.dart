import 'package:flame/components.dart';
import 'package:flutter_samples/pages/doodle_dash/game/doodle_dash.dart';

class LevelManager extends Component with HasGameRef<DoodleDash>{
  LevelManager({this.selectedLevel = 1, this.level = 1});
  int level;
  int selectedLevel;

  final Map<int, Difficulty> levelsConfig = {
    1: const Difficulty(
        minDistance: 200, maxDistance: 300, jumpSpeed: 600, score: 0),
    2: const Difficulty(
        minDistance: 200, maxDistance: 400, jumpSpeed: 650, score: 20),
    3: const Difficulty(
        minDistance: 200, maxDistance: 500, jumpSpeed: 700, score: 40),
    4: const Difficulty(
        minDistance: 200, maxDistance: 600, jumpSpeed: 750, score: 80),
    5: const Difficulty(
        minDistance: 200, maxDistance: 700, jumpSpeed: 800, score: 100),
  };

  double get jumpSpeed {
    return levelsConfig[level]!.jumpSpeed;
  }

  void reset() {
    level = selectedLevel;
  }

}

class Difficulty {
  final double minDistance;
  final double maxDistance;
  final double jumpSpeed;
  final int score;

  const Difficulty(
      {required this.minDistance,
        required this.maxDistance,
        required this.jumpSpeed,
        required this.score});
}