import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:learning_flutter/common/background.dart';
import 'package:learning_flutter/game_manager.dart';
import 'package:learning_flutter/main/text.dart';

class MainScreen extends Component with HasGameRef<GameManager>{
final Function _onStartClicked;

  MainScreen(this._onStartClicked);

  @override
  Future<void>? onLoad() {
    // TODO: implement onLoad
    add(Background(40));
    add(Text());
  }

  void onPanStart(DragStartInfo info){
    if(isMounted) _onStartClicked();
  }
}