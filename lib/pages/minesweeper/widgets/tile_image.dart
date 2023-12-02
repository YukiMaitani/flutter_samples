import 'package:flame/sprite.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_samples/pages/minesweeper/model/tile.dart';

import 'package:flutter/material.dart';

class TileImage extends StatelessWidget {
  const TileImage(this.tile, this.spriteSheet, {super.key});

  final Tile tile;
  final SpriteSheet spriteSheet;

  @override
  Widget build(BuildContext context) {
    if (tile.isRevealed) {
      if (tile.adjacentMinesNum == 0) {
        return _buildRevealed0Tile();
      }
      if (tile.adjacentMinesNum == 1) {
        return _buildRevealed1Tile();
      }
      if (tile.adjacentMinesNum == 2) {
        return _buildRevealed2Tile();
      }
      if (tile.adjacentMinesNum == 3) {
        return _buildRevealed3Tile();
      }
      if (tile.adjacentMinesNum == 4) {
        return _buildRevealed4Tile();
      }
      if (tile.adjacentMinesNum == 5) {
        return _buildRevealed5Tile();
      }
      if (tile.adjacentMinesNum == 6) {
        return _buildRevealed6Tile();
      }
      if (tile.adjacentMinesNum == 7) {
        return _buildRevealed7Tile();
      }
      if (tile.adjacentMinesNum == 8) {
        return _buildRevealed8Tile();
      }
      if(tile.isExploded) {
        return Container(color: Colors.red,child: _buildExplodedTile());
      }
      if (tile.isMine) {
        return _buildRevealedMineTile();
      }
    }
    if (tile.isFlagged) {
      return _buildFlaggedTile();
    }
    return _buildUnRevealedTile();
  }

  Widget _buildTile(int row, int column) {
    final sprite = spriteSheet.getSprite(row, column);
    return SpriteWidget(sprite: sprite);
  }

  Widget _buildUnRevealedTile() {
    return _buildTile(3, 2);
  }

  Widget _buildFlaggedTile() {
    return Stack(
      fit: StackFit.expand,
      children: [
        _buildUnRevealedTile(),
        _buildFragTile(),
      ],
    );
  }


  Widget _buildFragTile() {
    return _buildTile(0, 2);
  }

  Widget _buildRevealed0Tile() {
    return const SizedBox();
  }

  Widget _buildRevealed1Tile() {
    return _buildTile(1, 0);
  }

  Widget _buildRevealed2Tile() {
    return _buildTile(1, 1);
  }

  Widget _buildRevealed3Tile() {
    return _buildTile(1, 2);
  }

  Widget _buildRevealed4Tile() {
    return _buildTile(1, 3);
  }

  Widget _buildRevealed5Tile() {
    return _buildTile(2, 0);
  }

  Widget _buildRevealed6Tile() {
    return _buildTile(2, 1);
  }

  Widget _buildRevealed7Tile() {
    return _buildTile(2, 2);
  }

  Widget _buildRevealed8Tile() {
    return _buildTile(2, 3);
  }

  Widget _buildRevealedMineTile() {
    return _buildTile(0, 0);
  }

  Widget _buildExplodedTile() {
    return _buildTile(0, 3);
  }
}
