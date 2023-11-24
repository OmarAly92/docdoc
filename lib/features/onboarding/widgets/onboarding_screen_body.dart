import 'package:docdoc/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doctor_image_background_and_text_widget.dart';
import 'icon_and_title_widget.dart';
import 'get_started_button_widget.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const IconAndTitleWidget(),
          SizedBox(height: 30.h),
          const DoctorImageAndTextWidget(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
              style: TextStyles.font13GrayRegular,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30.h),
          const GetStartedButtonWidget(),
        ],
      ),
    );
  }
}
