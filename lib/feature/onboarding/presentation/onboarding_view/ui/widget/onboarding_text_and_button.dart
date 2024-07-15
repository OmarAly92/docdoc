import 'package:docdoc/core/helpers/extension.dart';
import 'package:docdoc/core/routing/routes_strings.dart';
import 'package:docdoc/core/theming/app_text_style.dart';
import 'package:docdoc/core/utils/translation_key.dart';
import 'package:docdoc/core/widget/gap.dart';
import 'package:docdoc/feature/onboarding/presentation/onboarding_view/ui/widget/get_started_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OnboardingTextAndButton extends StatelessWidget {
  const OnboardingTextAndButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            TranslationKey.onboardingDescriptionText.tr(),
            textAlign: TextAlign.center,
            style: AppTextStyle.font13GrayRegular,
          ),
        ),
        const AppGap(32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: GetStartedButton(
            onPressed: () {
              context.pushNamed(RoutesStrings.loginView);
            },
            title: 'Get Started',
          ),
        )
      ],
    );
  }
}
