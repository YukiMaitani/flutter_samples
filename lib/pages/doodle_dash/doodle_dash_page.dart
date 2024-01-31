import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples/pages/doodle_dash/game/doodle_dash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DoodleDashPage extends HookConsumerWidget {
  const DoodleDashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doodle Dash'),
        shadowColor: Colors.transparent,
      ),
      body: GameWidget(game: DoodleDash()),
    );
  }
}