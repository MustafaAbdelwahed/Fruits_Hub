import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/signup_view.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          fontFamily: "Cairo",
        ),
        children: [
          TextSpan(
            text: S.of(context).dontHaveAnAccount,
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xff616A6B),
            ),
          ),
          TextSpan(
            text: " ",
            style: TextStyles.semiBold16.copyWith(
              color: const Color(0xff616A6B),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, SignupView.routeName);
              },
            text: S.of(context).createAnAccount,
            style:
                TextStyles.semiBold16.copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
