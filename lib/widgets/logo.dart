import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Logo extends HookWidget {
  final Color color;
  final double size;

  Logo({
    @required this.color,
    @required this.size,
  })  : assert(color != null),
        assert(size != null);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 4,
      child: Icon(
        Icons.format_bold,
        color: color,
        size: size,
      ),
    );
  }
}
