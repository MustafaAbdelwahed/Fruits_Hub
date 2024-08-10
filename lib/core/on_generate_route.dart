import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/onboarding/presentaion/view/onboarding_view.dart';
import 'package:fruit_ecommerce_app/features/splash/presentaion/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}