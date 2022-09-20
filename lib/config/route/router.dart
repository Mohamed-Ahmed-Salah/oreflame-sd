import 'package:flutter/material.dart';
import 'route_constants.dart';

import '../../screens/screens.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case testScreenRoute:
      return MaterialPageRoute(
        builder: (context) => Testing(),
      );
    case navScreenRoute:
      return MaterialPageRoute(builder: (context) => NavScreen());
    case logInScreenRoute:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case page1ScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const Page1(),
      );
    case profileScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      );
    case page3ScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const Page3(),
      );
    case page2ScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const Page2(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const LoginScreen(),
      );
  }
}

Route<dynamic> onGenerateCustomRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const LoginScreen(),
      );
  }
}
