import 'package:flame/components.dart';
import 'package:flutter/cupertino.dart';

import '../doodle_dash.dart';

enum GameState { intro, playing, gameOver }

class GameManager extends Component with HasGameRef<DoodleDash> {
  GameState state = GameState.intro;
  Character character = Character.dash;
  ValueNotifier<int> score = ValueNotifier(0);

  bool get isPlaying => state == GameState.playing;
  bool get isGameOver => state == GameState.gameOver;
  bool get isIntro => state == GameState.intro;

  void increaseScore() {
    score.value++;
  }

  void reset() {
    score.value = 0;
    state = GameState.intro;
  }
}