import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/services/shared_preferences%20_singletone.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:fruit_ecommerce_app/features/auth/presentaion/view/login_view.dart';
import 'package:fruit_ecommerce_app/features/onboarding/presentaion/view/onboarding_view.dart';
import 'package:svg_flutter/svg.dart';
import 'package:intl/intl.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Transform.translate(
              offset: const Offset(double.infinity, 0),
              // flipX: true,
              child: SvgPicture.asset(Assets.imagesPlant),
            ),
          ],
        ),
        SvgPicture.asset(
          Assets.imagesLogoApp,
        ),
        SvgPicture.asset(
          Assets.imagesBootomSplash,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  executeNavigation() async {
    bool isOnboardingsSeen = Prefs.getBool(kIsOnboardingsSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnboardingsSeen) {
        {
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }

  bool isArabic() {
    return Intl.getCurrentLocale() == "ar";
  }
}
