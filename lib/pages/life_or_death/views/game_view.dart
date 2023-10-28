import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game_bloc.dart';
import '../bloc/game_event.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Life or Death'),
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    final gameBloc = BlocProvider.of<GameBloc>(context);
    final isCorrect = gameBloc.state.isCorrect;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Align(alignment: Alignment.topRight, child: _buildScore(gameBloc)),
        const SizedBox(height: 100),
        _buildInstructionText(isCorrect),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (isCorrect == null) ...[
              Expanded(child: _buildButton(0, gameBloc)),
              Expanded(child: _buildButton(1, gameBloc))
            ] else
              _buildRestartButton(gameBloc),
          ],
        ),
        const Spacer(),
      ],
    );
  }

  Widget _buildInstructionText(bool? isCorrect) {
    String title;
    if (isCorrect == null) {
      title = 'Choose One';
    } else if (isCorrect) {
      title = 'You Live';
    } else {
      title = 'You Die';
    }
    return Text(
      title,
      style: const TextStyle(fontSize: 60),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildButton(int index, GameBloc gameBloc) {
    final title = index == 0 ? 'left' : 'right';
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {
            gameBloc.add(GameAnswerEvent(index));
            setState(() {});
          },
          child: Text(title, style: const TextStyle(fontSize: 40)),
        ),
      ),
    );
  }

  Widget _buildRestartButton(GameBloc gameBloc) {
    return ElevatedButton(
      onPressed: () {
        gameBloc.add(GameStartEvent());
        setState(() {});
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      ),
      child: const Text('Restart', style: TextStyle(fontSize: 28)),
    );
  }

  Widget _buildScore(GameBloc gameBloc) {
    final lifeCount = gameBloc.state.lifeCount;
    final dieCount = gameBloc.state.dieCount;
    const textStyle = TextStyle(fontSize: 20);
    return Column(
      children: [
        Text('Life: $lifeCount', style: textStyle),
        Text('Die: $dieCount', style: textStyle),
        Text(
            'SurvivalRate: ${dieCount + lifeCount > 0 ? '${(lifeCount / (dieCount + lifeCount) * 100).toStringAsFixed(1)}%' : 'NoRecord'}',
            style: textStyle),
      ],
    );
  }
}
