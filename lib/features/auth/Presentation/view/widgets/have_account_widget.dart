import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';

import 'package:fruit_ecommerce_app/generated/l10n.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          fontFamily: "Cairo",
        ),
        children: [
          TextSpan(
            text: S.of(context).alreadyHaveAnAccount,
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
                Navigator.pop(context);
              },
            text: S.of(context).login,
            style:
                TextStyles.semiBold16.copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
