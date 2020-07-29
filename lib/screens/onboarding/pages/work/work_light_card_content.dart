import 'package:flutter/material.dart';
import 'package:flutter_design_onboarding/constants.dart';
import 'package:flutter_design_onboarding/screens/onboarding/widgets/icon_container.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class WorkLightCardContent extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconContainer(
          icon: Icons.event_seat,
          padding: kPaddingS,
        ),
        IconContainer(
          icon: Icons.business_center,
          padding: kPaddingM,
        ),
        IconContainer(
          icon: Icons.assessment,
          padding: kPaddingS,
        ),
      ],
    );
  }
}
