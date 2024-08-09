import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/appi_mages.dart';
import 'package:fruit_ecommerce_app/features/onboarding/presentaion/view/onboarding_view.dart';
import 'package:svg_flutter/svg.dart';

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
            SvgPicture.asset(Assets.imagesPlamt),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogoApp),
        SvgPicture.asset(
          Assets.imagesBootomSplash,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  executeNavigation() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
  }
}
