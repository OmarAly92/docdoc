import 'package:docdoc/core/widget/gap.dart';
import 'package:docdoc/feature/onboarding/presentation/onboarding_view/ui/widget/doc_logo_and_name.dart';
import 'package:docdoc/feature/onboarding/presentation/onboarding_view/ui/widget/doctor_image_and_text.dart';
import 'package:docdoc/feature/onboarding/presentation/onboarding_view/ui/widget/onboarding_text_and_button.dart';
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
              AppGap(22),
              DocLogoAndName(),
              AppGap(40),
              DoctorImageAndText(),
              OnboardingTextAndButton(),
            ],
          ),
        ),
      ),
    );
  }
}
