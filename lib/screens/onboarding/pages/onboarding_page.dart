import 'package:flutter/material.dart';
import 'package:flutter_design_onboarding/screens/onboarding/widgets/cards_stack.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OnboardingPage extends HookWidget {
  final int number;
  final Widget lightCardChild;
  final Widget darkCardChild;
  final Widget textColumn;

  OnboardingPage({
    @required this.number,
    @required this.lightCardChild,
    @required this.darkCardChild,
    @required this.textColumn,
  })  : assert(number != null),
        assert(lightCardChild != null),
        assert(darkCardChild != null),
        assert(textColumn != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CardsStack(
          pageNumber: number,
          lightCardChild: lightCardChild,
          darkCardChild: darkCardChild,
        ),
        SizedBox(height: number % 2 == 1 ? 50 : 25),
        textColumn,
      ],
    );
  }
}
