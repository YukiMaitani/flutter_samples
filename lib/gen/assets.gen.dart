/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesLifeOrDeathGen get lifeOrDeath =>
      const $AssetsImagesLifeOrDeathGen();
  $AssetsImagesMinesweeperGen get minesweeper =>
      const $AssetsImagesMinesweeperGen();
}

class $AssetsSoundsGen {
  const $AssetsSoundsGen();

  /// File path: assets/sounds/explosion.mp3
  String get explosion => 'assets/sounds/explosion.mp3';

  /// List of all assets
  List<String> get values => [explosion];
}

class $AssetsImagesLifeOrDeathGen {
  const $AssetsImagesLifeOrDeathGen();

  /// File path: assets/images/life_or_death/minesweeper.png
  AssetGenImage get minesweeper =>
      const AssetGenImage('assets/images/life_or_death/minesweeper.png');

  /// List of all assets
  List<AssetGenImage> get values => [minesweeper];
}

class $AssetsImagesMinesweeperGen {
  const $AssetsImagesMinesweeperGen();

  /// File path: assets/images/minesweeper/flag.png
  AssetGenImage get flag =>
      const AssetGenImage('assets/images/minesweeper/flag.png');

  /// File path: assets/images/minesweeper/tile.png
  AssetGenImage get tile =>
      const AssetGenImage('assets/images/minesweeper/tile.png');

  /// List of all assets
  List<AssetGenImage> get values => [flag, tile];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSoundsGen sounds = $AssetsSoundsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
