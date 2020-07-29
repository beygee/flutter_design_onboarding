import 'package:flutter/material.dart';
import 'package:flutter_design_onboarding/widgets/text_column.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EducationTextColumn extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return TextColumn(
      title: 'Keep learning',
      text: 'Ipsum magna enim cupidatat culpa elit cillum velit occaecat.',
    );
  }
}
