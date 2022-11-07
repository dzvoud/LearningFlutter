import 'package:flame/components.dart';
import 'package:learning_flutter/common/start.dart';
import 'package:learning_flutter/game_manager.dart';

class Background extends Component with HasGameRef<GameManager>{
  int nbStars;
  Background(this.nbStars);

  @override
  Future<void>? onLoad() {
    // TODO: implement onLoad
    for (var i = 0; i < nbStars; i++) {
      add(Star());
    }
  }
}
