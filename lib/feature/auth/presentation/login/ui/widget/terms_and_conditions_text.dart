import 'package:docdoc/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: AppTextStyle.font13GrayRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: AppTextStyle.font13DarkBlueMedium,
          ),
          TextSpan(
            text: 'and ',
            style: AppTextStyle.font13GrayRegular
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: AppTextStyle.font13DarkBlueMedium.copyWith(
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
