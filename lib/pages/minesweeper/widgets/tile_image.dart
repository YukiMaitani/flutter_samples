import 'dart:ui' as ui;

import 'package:flame/sprite.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_samples/pages/minesweeper/model/tile.dart';

class TileImage extends StatelessWidget {
  TileImage(this.tile, this.sheetImage, {super.key})
      : spriteSheet = SpriteSheet.fromColumnsAndRows(
            image: sheetImage, columns: 4, rows: 4);

  final ui.Image sheetImage;
  final Tile tile;
  final SpriteSheet spriteSheet;

  @override
  Widget build(BuildContext context) {
    return _buildUnRevealedTile();
  }

  Widget _buildTile(int row, int column) {
    final sprite = spriteSheet.getSprite(row, column);
    return SpriteWidget(sprite: sprite);
  }

  Widget _buildFlaggedTile() {
    return _buildTile(0, 0);
  }

  Widget _buildUnRevealedTile() {
    return _buildTile(3, 2);
  }
}
