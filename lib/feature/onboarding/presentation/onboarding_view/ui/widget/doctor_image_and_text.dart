import 'package:docdoc/core/theming/app_text_style.dart';
import 'package:docdoc/core/utils/app_image.dart';
import 'package:docdoc/core/utils/translation_key.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppImage.docdocLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
              colors: [
                Colors.white,
                Colors.white.withOpacity(0),
              ],
            ),
          ),
          child: Image.asset(AppImage.doctorImage),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            TranslationKey.onboardingBestDoctorAppointment.tr(),
            textAlign: TextAlign.center,
            style: AppTextStyle.font32BlueBold.copyWith(
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
