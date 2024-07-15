import 'package:docdoc/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account? ',
            style: AppTextStyle.font13DarkBlueRegular,
          ),
          TextSpan(
            text: 'Sign Up',
            style: AppTextStyle.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
