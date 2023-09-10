import 'package:flutter/material.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildInstructionText(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton(),
            _buildButton(),
          ],
        ),
      ],
    );
  }

  Widget _buildInstructionText() {
    return const Text(
      'Choose One',
      style: TextStyle(fontSize: 60),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Life'),
    );
  }
}
