import 'package:flutter/material.dart';
import 'package:flutter_design_onboarding/screens/onboarding/pages/community/index.dart';
import 'package:flutter_design_onboarding/screens/onboarding/pages/education/index.dart';
import 'package:flutter_design_onboarding/screens/onboarding/pages/work/index.dart';
import 'package:flutter_design_onboarding/screens/onboarding/pages/onboarding_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Onboarding extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var currentPage = useState(1);
    bool isFirstPage = useMemoized(() => currentPage.value == 1, [currentPage]);

    void _setNextPage(int nextPageIndex) {
      currentPage.value = nextPageIndex;
    }

    return Container();
  }

  Widget _getPage(int pageIndex) {
    switch (pageIndex) {
      case 1:
        return OnboardingPage(
          number: 1,
          lightCardChild: CommunityLightCardContent(),
          darkCardChild: CommunityDarkCardContent(),
          textColumn: CommunityTextColumn(),
        );
      case 2:
        return OnboardingPage(
          number: 2,
          lightCardChild: EducationLightCardContent(),
          darkCardChild: EducationDarkCardContent(),
          textColumn: EducationTextColumn(),
        );
      case 3:
        return OnboardingPage(
          number: 3,
          lightCardChild: WorkLightCardContent(),
          darkCardChild: WorkDarkCardContent(),
          textColumn: WorkTextColumn(),
        );
      default:
        throw Exception("Page with number '$pageIndex' does not exist.");
    }
  }
}
