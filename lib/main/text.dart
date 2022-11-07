import 'package:flame/components.dart';
import 'package:learning_flutter/game_manager.dart';


class Text extends SpriteComponent with HasGameRef<GameManager>{
  @override
  Future<void>? onLoad() async {
    // TODO: implement onLoad
    sprite =  await Sprite.load("start.png");
    anchor = Anchor.center;
    position = gameRef.size / 2;

    var originalSize = sprite?.originalSize;
    if(originalSize == null) return;
    var height = gameRef.size.toSize().height / 2;
    var width = originalSize.toSize().width * ( (height / originalSize.toSize().width)) ;
    size = Vector2(width,height);

    return super.onLoad();
  }
}