import 'package:docdoc/core/routing/routes_strings.dart';
import 'package:docdoc/feature/auth/presentation/login/ui/login_view.dart';
import 'package:docdoc/feature/onboarding/presentation/onboarding_view/ui/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case RoutesStrings.onBoardingView:
        return MaterialPageRoute(
          builder: (context) => const OnboardingView(),
        );
      case RoutesStrings.loginView:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
