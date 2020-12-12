import 'package:flutter/material.dart';
import 'package:round1_web/routing/route_names.dart';
import 'package:round1_web/widgets/navigatio_bar/navbar_logo.dart';
import 'package:round1_web/widgets/navigatio_bar/navbar_item.dart';

class NavigationBarDesktopTablet extends StatelessWidget {
  const NavigationBarDesktopTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                NavBarItem('Episodes', EpisodesRoute),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('About', AboutRoute)
              ],
            )
          ],
        ));
  }
}
