import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/minesweeper_bloc.dart';
import 'minesweeper_view.dart';

class MinesweeperPage extends StatelessWidget {
  const MinesweeperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MinesweeperBloc>(
        create: (context) {
          return MinesweeperBloc();
        },
        child: const MinesweeperView());
  }
}
