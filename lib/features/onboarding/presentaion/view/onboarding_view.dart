import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/onboarding/presentaion/view/widget/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const routeName = 'onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
