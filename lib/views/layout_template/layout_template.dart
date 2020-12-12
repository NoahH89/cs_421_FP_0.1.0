import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:round1_web/locator.dart';
import 'package:round1_web/routing/route_names.dart';
import 'package:round1_web/routing/router.dart';
import 'package:round1_web/services/navigation_service.dart';
import 'package:round1_web/widgets/centered_view/centered_view.dart';
import 'package:round1_web/widgets/navigatio_bar/navigation_bar.dart';
import 'package:round1_web/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
