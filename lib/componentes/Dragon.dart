import 'dart:math';

import 'package:flame/game.dart';
import 'package:flame/components/component.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';

const ComponentSize = 60.0;
const SPEED = 150.0;

class Dragon extends SpriteComponent {
  Size dimensions;
  Random random = new Random();

  Dragon(this.dimensions) : super.square(ComponentSize, 'dragon.png');

  @override
  void update(double t) {
    super.update(t);
    this.y += t * SPEED;
  }

  @override
  bool destroy() {
    return false;
  }

  @override
  void resize(Size size) {
    var positionX = random.nextDouble();

    this.x = positionX * 300;
    this.y = 0;
  }
}