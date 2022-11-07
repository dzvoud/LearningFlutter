import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/src/gestures/events.dart';
import 'package:learning_flutter/common/background.dart';
import 'package:learning_flutter/game/bullet.dart';
import 'package:learning_flutter/game/enemy.dart';
import 'package:learning_flutter/game/player.dart';
import 'package:learning_flutter/game_manager.dart';

class GameScreen extends Component with HasGameRef<GameManager>{

  static const int playerLevelByScore = 20;
  late Player _player;
  late Timer enemySpawner;
  late Timer bulletSpawner;
  int score = 0;

  @override
  Future<void>? onLoad() {
    enemySpawner = Timer(2, onTick: _spawnEnemy,repeat: true);
    bulletSpawner = Timer(1, onTick: _spawnBullet,repeat: true);

    add(Background(50));
    _player = Player(_onPlayerTouch);
    add(_player);
    add(Enemy(_onEnemyTouch));
  }


  void _onPlayerTouch(){

  }

  void onPanUpdate(DragUpdateInfo info) {
    if(isMounted){
      _player.move(info.delta.game);
    }
  }

  void _onEnemyTouch() {
  }

  void _spawnEnemy() {
    for (var i = 0; i <= min(score ~/ playerLevelByScore, 2); i++) {
      add(Enemy(_onEnemyTouch));
    }
  }

  @override
  void onMount() {
    super.onMount();
    enemySpawner.start();
    bulletSpawner.start();
  }

  @override
  void update(double dt) {
    super.update(dt);
    enemySpawner.update(dt);
    bulletSpawner.update(dt);
  }

  @override
  void onRemove() {
    super.onRemove();
    enemySpawner.stop();
    bulletSpawner.stop();
  }

  void _spawnBullet() {
    var bullet = Bullet();
    bullet.position = _player.position.clone();
    add(bullet);
  }
}