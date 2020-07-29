import 'package:flutter/material.dart';
import 'package:flutter_design_onboarding/constants.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NextPageButton extends StatelessWidget {
  final VoidCallback onPressed;

  NextPageButton({
    @required this.onPressed,
  }) : assert(onPressed != null);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.all(kPaddingM),
      elevation: 0,
      shape: CircleBorder(),
      fillColor: kWhite,
      child: Icon(
        Icons.arrow_forward,
        color: kBlue,
        size: 32,
      ),
      onPressed: onPressed,
    );
  }
}
