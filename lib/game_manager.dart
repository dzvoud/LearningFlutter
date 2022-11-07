import 'package:flame/events.dart';
import 'package:flame/game.dart';

import 'game/game_screen.dart';
import 'main/main_screen.dart';


class GameManager extends FlameGame with PanDetector{
  late GameScreen _gameScreen;
  late MainScreen _mainScreen;
  
  GameManager(){
    _mainScreen = MainScreen((){
      remove(_mainScreen);
      _gameScreen = GameScreen();
      add(_gameScreen);
    });
  }

  @override
  Future<void>? onLoad() {
    // TODO: implement onLoad
    add(_mainScreen);
  }

  @override
  void onPanStart(DragStartInfo info) {
    // TODO: implement onPanStart
    super.onPanStart(info);
    _mainScreen.onPanStart(info);
  }

  void onPanUpdate(DragUpdateInfo info) {
    super.onPanUpdate(info);
    _gameScreen.onPanUpdate(info);
  }
}