import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:round1_web/widgets/navigatio_bar/navbar_logo.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'navbar_item.dart';
import 'package:round1_web/widgets/navigatio_bar/navigation_bar_mobile.dart';

import 'navigation_bar_desktop_tablet.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarDesktopTablet(),
    );
  }
}
