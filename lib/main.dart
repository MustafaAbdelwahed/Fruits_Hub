import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/helper_function/on_generate_route.dart';
import 'package:fruit_ecommerce_app/features/splash/presentaion/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
