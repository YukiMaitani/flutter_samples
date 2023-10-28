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
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Builder(builder: (context) {
      final gameBloc = BlocProvider.of<GameBloc>(context);
      final isCorrect = gameBloc.state.isCorrect;
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildInstructionText(isCorrect),
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
        ],
      );
    });
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
      child: const Text('Restart'),
    );
  }
}
