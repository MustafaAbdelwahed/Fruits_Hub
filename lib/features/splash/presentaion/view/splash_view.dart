import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/splash/presentaion/view/widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashViewBody());
  }
}
