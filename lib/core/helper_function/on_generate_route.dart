import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/signin_view.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/signup_view.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/best_selling_view.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:fruit_ecommerce_app/features/onboarding/presentaion/view/onboarding_view.dart';
import 'package:fruit_ecommerce_app/features/splash/presentaion/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());

    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
