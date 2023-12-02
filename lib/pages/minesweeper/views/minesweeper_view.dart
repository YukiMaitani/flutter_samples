import 'dart:ui' as ui;

import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_samples/pages/minesweeper/bloc/minesweeper_bloc.dart';
import 'package:flutter_samples/pages/minesweeper/bloc/minesweeper_state.dart';
import 'package:flutter_samples/pages/minesweeper/util/foundation.dart';

import '../../../gen/assets.gen.dart';
import '../bloc/minesweeper_event.dart';
import '../widgets/tile_image.dart';

class MinesweeperView extends StatefulWidget {
  const MinesweeperView({super.key});

  @override
  State<MinesweeperView> createState() => _MinesweeperViewState();
}

class _MinesweeperViewState extends State<MinesweeperView> {
  ui.Image? _tileSheet;
  SpriteSheet? get _spriteSheet => _tileSheet == null
      ? null
      : SpriteSheet.fromColumnsAndRows(
          image: _tileSheet!,
          columns: 4,
          rows: 4,
        );

  @override
  void initState() {
    super.initState();
    setImage();
  }

  Future<void> setImage() async {
    _tileSheet = await Flame.images.load('minesweeper/tile.png');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minesweeper'),
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: _buildBody(),
      ),
      floatingActionButton: _buildFlagButton(),
    );
  }

  Widget _buildBody() {
    final minesweeperBloc = BlocProvider.of<MinesweeperBloc>(context);
    return BlocListener<MinesweeperBloc, MinesweeperState>(
      listener: (BuildContext context, state) {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_spriteSheet == null)
            const SizedBox()
          else
            Stack(
              children: [
                _buildGameFrame(),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: _buildTiles(),
                ),
              ],
            )
        ],
      ),
    );
  }

  Widget _buildTiles() {
    final minesweeperBloc = BlocProvider.of<MinesweeperBloc>(context);
    return BlocBuilder<MinesweeperBloc, MinesweeperState>(
      builder: (BuildContext context, state) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: MinesweeperFoundation.tilesNum,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MinesweeperFoundation.width,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          itemBuilder: (BuildContext context, int index) {
            final y = index ~/ MinesweeperFoundation.width;
            final x = index % MinesweeperFoundation.width;
            return GestureDetector(
              onTap: () {
                minesweeperBloc.add(SelectTile(index));
                setState(() {});
              },
              child: TileImage(
                state.tiles[y][x],
                _spriteSheet!,
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildGameFrame() {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF181818),
          border: Border.all(color: const Color(0xFFAC6B26), width: 8),
          borderRadius: BorderRadius.circular(1),
        ),
      ),
    );
  }

  Widget _buildFlagButton() {
    if (_spriteSheet == null) {
      return const SizedBox();
    }
    return BlocBuilder<MinesweeperBloc, MinesweeperState>(
        builder: (BuildContext context, state) {
          final isFlagMode = state.isFlagMode;
      return FloatingActionButton(
        backgroundColor: Colors.grey.shade300,
        onPressed: () {
          BlocProvider.of<MinesweeperBloc>(context).add(const ToggleFlagMode());
          setState(() {});
        },
        child: Assets.images.minesweeper.flag.image(
          width: 36,
          color: isFlagMode ? Colors.red : Colors.grey.shade600,
        ),
      );
    });
  }
}
