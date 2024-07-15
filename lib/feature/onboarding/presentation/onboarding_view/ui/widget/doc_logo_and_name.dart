import 'package:docdoc/core/theming/app_text_style.dart';
import 'package:docdoc/core/utils/app_image.dart';
import 'package:docdoc/core/utils/app_strings.dart';
import 'package:docdoc/core/widget/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: SvgPicture.asset(
            width: 38,
            height: 38,
            AppImage.docIcon,
          ),
        ),
        const AppGap(8),
        Text(
          AppStrings.appName,
          style: AppTextStyle.font24BlackBold,
        ),
      ],
    );
  }
}
