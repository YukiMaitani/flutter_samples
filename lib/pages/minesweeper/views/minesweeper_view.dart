import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_samples/pages/minesweeper/bloc/minesweeper_bloc.dart';
import 'package:flutter_samples/pages/minesweeper/bloc/minesweeper_state.dart';

class MinesweeperView extends StatefulWidget {
  const MinesweeperView({super.key});

  @override
  State<MinesweeperView> createState() => _MinesweeperViewState();
}

class _MinesweeperViewState extends State<MinesweeperView> {
  @override
  void initState() {
    super.initState();
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
    );
  }

  Widget _buildBody() {
    final minesweeperBloc = BlocProvider.of<MinesweeperBloc>(context);
    return BlocListener<MinesweeperBloc, MinesweeperState>(
      listener: (BuildContext context, state) {},
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [],
      ),
    );
  }
}
