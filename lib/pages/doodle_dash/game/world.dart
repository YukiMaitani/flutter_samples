import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_samples/gen/assets.gen.dart';
import 'package:flutter_samples/pages/doodle_dash/util/string_ex.dart';

import 'doodle_dash.dart';

class World extends ParallaxComponent<DoodleDash> {
  @override
  Future<void> onLoad() async {
    parallax = await gameRef.loadParallax(
      [
        ParallaxImageData(Assets.images.doodleDash.background.solid.path.removeFirstAssetsImage()),
        ParallaxImageData(Assets.images.doodleDash.background.smallStars.path.removeFirstAssetsImage()),
        ParallaxImageData(Assets.images.doodleDash.background.bigStars.path.removeFirstAssetsImage()),
        ParallaxImageData(Assets.images.doodleDash.background.orbs.path.removeFirstAssetsImage()),
        ParallaxImageData(Assets.images.doodleDash.background.blockShapes.path.removeFirstAssetsImage()),
        ParallaxImageData(Assets.images.doodleDash.background.squiggles.path.removeFirstAssetsImage()),
      ],
      fill: LayerFill.width,
      repeat: ImageRepeat.repeat,
      baseVelocity: Vector2(0, -5),
      velocityMultiplierDelta: Vector2(0, 1.2),
    );
  }
}