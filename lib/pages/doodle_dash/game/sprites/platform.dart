import 'dart:math';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

import '../doodle_dash.dart';

abstract class Platform<T> extends SpriteGroupComponent<T>
    with HasGameRef<DoodleDash>, CollisionCallbacks {
  final hitbox = RectangleHitbox();
  bool isMoving = false;

  Platform({
    super.position,
  }) : super(
    size: Vector2.all(100),
    priority: 2,
  );

  @override
  Future<void>? onLoad() async {
    await super.onLoad();
    await add(hitbox);
  }
}

enum NormalPlatformState { only }

class NormalPlatform extends Platform<NormalPlatformState> {
  NormalPlatform({super.position});

  final Map<String, Vector2> spriteOptions = {
    'platform_monitor': Vector2(115, 84),
    'platform_phone_center': Vector2(100, 55),
    'platform_terminal': Vector2(110, 83),
    'platform_laptop': Vector2(100, 63),
  };

  @override
  Future<void>? onLoad() async {
    var randSpriteIndex = Random().nextInt(spriteOptions.length);

    String randSprite = spriteOptions.keys.elementAt(randSpriteIndex);

    sprites = {
      NormalPlatformState.only: await gameRef.loadSprite('doodle_dash/$randSprite.png')
    };

    current = NormalPlatformState.only;

    size = spriteOptions[randSprite]!;
    await super.onLoad();
  }
}