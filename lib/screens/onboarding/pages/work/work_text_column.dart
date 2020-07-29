import 'package:flutter/material.dart';
import 'package:flutter_design_onboarding/widgets/text_column.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WorkTextColumn extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return TextColumn(
      title: 'Work together',
      text:
          'Adipisicing anim ex excepteur duis quis in tempor eu ullamco adipisicing.',
    );
  }
}
