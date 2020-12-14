import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:round1_web/services/navigation_service.dart';
import 'package:round1_web/widgets/navigatio_bar/navigation_bar_desktop_tablet.dart';
import 'package:round1_web/widgets/navigatio_bar/navigation_bar_mobile.dart';

import '../../locator.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //DON'T EVER USE DERVICE DIRECTLY IN THE UI
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        child: ScreenTypeLayout(
          tablet: NavigationBarDesktopTablet(),
          mobile: NavigationBarMobile(),
        ),
      ),
    );
  }
}
