import 'package:flutter/material.dart';
import 'package:flutter_design_onboarding/constants.dart';
import 'package:flutter_design_onboarding/widgets/logo.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Header extends HookWidget {
  final VoidCallback onSkip;

  Header({@required this.onSkip}) : assert(onSkip != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Logo(
          color: kWhite,
          size: 32,
        ),
        GestureDetector(
          onTap: onSkip,
          child: Text(
            "Skip",
            style:
                Theme.of(context).textTheme.subtitle1.copyWith(color: kWhite),
          ),
        )
      ],
    );
  }
}
