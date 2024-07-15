import 'package:docdoc/core/theming/app_color.dart';
import 'package:docdoc/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.mainBlue,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  minimumSize: const Size(double.infinity, 52)),
              onPressed: onPressed,
              child: Text(
                title,
                style: AppTextStyle.font16WhiteSemiBold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
