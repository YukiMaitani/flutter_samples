import 'package:bloc/bloc.dart';

import 'minesweeper_event.dart';
import 'minesweeper_state.dart';

class MinesweeperBloc extends Bloc<MinesweeperEvent, MinesweeperState> {
  MinesweeperBloc() : super(MinesweeperState.initial());
}
