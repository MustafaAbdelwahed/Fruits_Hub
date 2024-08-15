import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_button.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_text_from_fiald.dart';
import 'package:fruit_ecommerce_app/features/auth/presentaion/view/widgets/dont_have_account_widget.dart';
import 'package:fruit_ecommerce_app/features/auth/presentaion/view/widgets/or_widget.dart';
import 'package:fruit_ecommerce_app/features/auth/presentaion/view/widgets/social_media_button.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.emailAddress,
              text: S.of(context).email,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.text,
              text: S.of(context).password,
              suffixIcon: const Icon(Icons.remove_red_eye),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  S.of(context).forgetPassword,
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(onpressed: () {}, text: S.of(context).login),
            const SizedBox(
              height: 33,
            ),
            const DontHaveAccount(),
            const SizedBox(
              height: 33,
            ),
            const OrWidget(),
            const SizedBox(
              height: 21,
            ),
            SocialMediaButton(
              title: S.of(context).continueWithGoogle,
              socialMediaIcon: Assets.imagesGoogleIcon,
            ),
            const SizedBox(
              height: 16,
            ),
            SocialMediaButton(
              title: S.of(context).continueWithApple,
              socialMediaIcon: Assets.imagesAppleIcon,
            ),
            const SizedBox(
              height: 16,
            ),
            SocialMediaButton(
              title: S.of(context).continueWithFacebook,
              socialMediaIcon: Assets.imagesFacebookIcon,
            ),
          ],
        ),
      ),
    );
  }
}
