import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter_samples/pages/doodle_dash/game/world.dart';

class DoodleDash extends FlameGame with HasKeyboardHandlerComponents, HasCollisionDetection {
  final _world = World();

  @override
  Future<void> onLoad() async {
    add(_world);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}