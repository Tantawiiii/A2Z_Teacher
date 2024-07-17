import 'package:a2z_teacher/core/routing/routers.dart';
import 'package:a2z_teacher/features/getstarted/get_started_screen.dart';
import 'package:a2z_teacher/features/login/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.getStartedScreen:
        return MaterialPageRoute(builder: (_) => const GetStartedScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
