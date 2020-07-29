import 'package:flutter/material.dart';
import 'package:flutter_design_onboarding/constants.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CommunityDarkCardContent extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: kPaddingL),
          child: Icon(Icons.brush, color: kWhite, size: 32),
        ),
        Padding(
          padding: EdgeInsets.only(top: kPaddingL),
          child: Icon(Icons.camera_alt, color: kWhite, size: 32),
        ),
        Padding(
          padding: EdgeInsets.only(top: kPaddingL),
          child: Icon(Icons.straighten, color: kWhite, size: 32),
        ),
      ],
    );
  }
}
