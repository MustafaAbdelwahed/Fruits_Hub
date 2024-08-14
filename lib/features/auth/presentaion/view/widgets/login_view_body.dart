import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_text_from_fiald.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.emailAddress,
              text: S.of(context).email,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.text,
              text: S.of(context).password,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
