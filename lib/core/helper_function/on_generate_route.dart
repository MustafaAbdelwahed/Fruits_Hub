import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/splash/presentaion/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
