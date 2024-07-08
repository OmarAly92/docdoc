import 'package:docdoc/core/theming/app_text_style.dart';
import 'package:docdoc/core/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImage.docIcon),
        Text(
          'DocDoc',
          style: AppTextStyle.font24Black700Weight,
        ),
        const SizedBox(width: 10),
        SvgPicture.asset(AppImage.onboardingBackground),
      ],
    );
  }
}
