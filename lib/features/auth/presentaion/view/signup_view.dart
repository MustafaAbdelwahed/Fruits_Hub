import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:fruit_ecommerce_app/features/auth/presentaion/view/widgets/signup_view_body.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: S.of(context).signUP),
      body: const SignupViewBody(),
    );
  }
}
