import 'package:docdoc/core/routing/routes_path.dart';
import 'package:docdoc/feature/auth/presentation/login_view/ui/login_view.dart';
import 'package:docdoc/feature/onboarding/presentation/onboarding_view/ui/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case RoutesPath.onBoardingView:
        return MaterialPageRoute(
          builder: (context) => const OnboardingView(),
        );
      case RoutesPath.loginView:
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
