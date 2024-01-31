import 'package:flame/components.dart';

import '../doodle_dash.dart';

enum GameState { intro, playing, gameOver }

class GameManager extends Component with HasGameRef<DoodleDash> {
  GameState state = GameState.intro;
  Character character = Character.dash;

  bool get isPlaying => state == GameState.playing;
  bool get isGameOver => state == GameState.gameOver;
  bool get isIntro => state == GameState.intro;

}