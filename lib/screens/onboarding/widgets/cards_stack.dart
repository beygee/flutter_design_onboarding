import 'package:flutter/material.dart';
import 'package:flutter_design_onboarding/constants.dart';

class CardsStack extends StatelessWidget {
  final int pageNumber;
  final Widget lightCardChild;
  final Widget darkCardChild;

  CardsStack({
    @required this.pageNumber,
    @required this.lightCardChild,
    @required this.darkCardChild,
  })  : assert(pageNumber != null),
        assert(lightCardChild != null),
        assert(darkCardChild != null);

  bool get isOddPageNumber => pageNumber % 2 == 1;

  @override
  Widget build(BuildContext context) {
    var darkCardWidth = MediaQuery.of(context).size.width - 2 * kPaddingL;
    var darkCardHeight = MediaQuery.of(context).size.height / 3;

    return Padding(
      padding: EdgeInsets.only(top: isOddPageNumber ? 25 : 50),
      child: Stack(
        alignment: AlignmentDirectional.center, // ??
        overflow: Overflow.visible,
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            color: kDarkBlue,
            child: Container(
              width: darkCardWidth,
              height: darkCardHeight,
              padding: EdgeInsets.only(
                top: !isOddPageNumber ? 100 : 0,
                bottom: isOddPageNumber ? 100 : 0,
              ),
              child: Center(
                child: darkCardChild,
              ),
            ),
          ),
          Positioned(
            top: !isOddPageNumber ? -25 : null,
            bottom: isOddPageNumber ? -25 : null,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              color: kLightBlue,
              child: Container(
                width: darkCardWidth * 0.8,
                height: darkCardHeight * 0.5,
                padding: EdgeInsets.symmetric(horizontal: kPaddingM),
                child: Center(child: lightCardChild),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
