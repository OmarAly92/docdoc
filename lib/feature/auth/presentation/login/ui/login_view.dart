import 'package:docdoc/core/theming/app_text_style.dart';
import 'package:docdoc/core/widget/app_button.dart';
import 'package:docdoc/core/widget/app_text_form_field.dart';
import 'package:docdoc/core/widget/spacing.dart';
import 'package:docdoc/feature/auth/presentation/login/ui/widget/already_have_account_text.dart';
import 'package:docdoc/feature/auth/presentation/login/ui/widget/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: AppTextStyle.font24BlueBold,
                ),
                const VerticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last \nlogged in.',
                  style: AppTextStyle.font14GrayRegular,
                ),
                const VerticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: 'Email'),
                      const VerticalSpace(18),
                      AppTextFormField.password(
                        hintText: 'Password',
                        obscureText: isObscureText,
                        onPressedSuffixIcon: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                      ),
                      const VerticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: AppTextStyle.font13BlueRegular,
                          ),
                        ),
                      ),
                      const VerticalSpace(40),
                      AppButton(
                        buttonText: 'Login',
                        onPressed: () {},
                      ),
                      const VerticalSpace(16),
                      const TermsAndConditionsText(),
                      const VerticalSpace(60),
                      const AlreadyHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
