import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/widgets/custom_button.dart';
import 'package:fruit_ecommerce_app/features/onboarding/presentaion/view/widget/on_boarding_page_view.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: const DotsDecorator(
            activeSize: Size(11, 11),
            activeColor: AppColors.primaryColor,
            color: AppColors.secondaryColor,
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomButton(
            onpressed: () {},
            text: S.of(context).startNow,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
