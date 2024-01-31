import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter_samples/pages/doodle_dash/game/sprites/player.dart';
import 'package:flutter_samples/pages/doodle_dash/game/world.dart';

import 'managers/game_manager.dart';
import 'managers/level_manager.dart';
import 'managers/object_manager.dart';

enum Character { dash, sparky }

class DoodleDash extends FlameGame with HasKeyboardHandlerComponents, HasCollisionDetection {

  late Player player;
  final _world = World();
  final levelManager = LevelManager();
  ObjectManager objectManager = ObjectManager();
  GameManager gameManager = GameManager();
  int screenBufferSpace = 300;

  @override
  Future<void> onLoad() async {
    add(_world);
    startGame();
  }

  @override
  void update(double dt) {
    super.update(dt);
  }

  void setCharacter() {
    player = Player(
      character: gameManager.character,
      jumpSpeed: levelManager.jumpSpeed,
    );
    add(player);
  }

  void initializeGameStart() {
    gameManager.reset();
    if (children.contains(objectManager)) objectManager.removeFromParent();

    levelManager.reset();

    player.reset();

    objectManager = ObjectManager(
        minVerticalDistanceToNextPlatform: levelManager.minDistance,
        maxVerticalDistanceToNextPlatform: levelManager.maxDistance);

    add(objectManager);

    objectManager.configure(levelManager.level, levelManager.difficulty);
  }

  void startGame() {
    setCharacter();
    initializeGameStart();
    gameManager.state = GameState.playing;
  }
}