import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/services/shared_prefrences_singletone.dart.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_button.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/signin_view.dart';
import 'package:fruit_ecommerce_app/features/onboarding/presentaion/view/widget/on_boarding_page_view.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeSize: const Size.square(10),
            size:
                currentPage == 1 ? const Size.square(10) : const Size.square(9),
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: currentPage == 1 ? true : false,
            child: CustomButton(
              onpressed: () {
                Prefs.setBool(kIsOnboardingsSeen, true);

                Navigator.pushReplacementNamed(context, SigninView.routeName);
              },
              text: S.of(context).startNow,
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
