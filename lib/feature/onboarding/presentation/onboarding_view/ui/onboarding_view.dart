import 'package:docdoc/feature/onboarding/presentation/onboarding_view/ui/widget/doc_logo_and_name.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 22),
              DocLogoAndName(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
