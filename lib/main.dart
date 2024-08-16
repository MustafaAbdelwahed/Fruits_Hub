import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_ecommerce_app/core/helper_function/on_generate_route.dart';
import 'package:fruit_ecommerce_app/core/services/shared_preferences%20_singletone.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/features/auth/presentaion/view/signup_view.dart';
import 'package:fruit_ecommerce_app/firebase_options.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Prefs.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Cairo",
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
      locale: const Locale("ar"),
      // locale: const Locale("en"),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SignupView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
