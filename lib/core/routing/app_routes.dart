import 'package:docdoc/core/routing/routes_path.dart';
import 'package:docdoc/feature/auth/presentation/loginView/ui/login_view.dart';
import 'package:docdoc/feature/onboarding/presentation/onboarding_view/ui/onboarding_v_iew.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case RoutesPath.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingVIew(),
        );
      case RoutesPath.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
