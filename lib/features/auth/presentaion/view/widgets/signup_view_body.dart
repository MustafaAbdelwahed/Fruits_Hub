import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_button.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_text_from_fiald.dart';
import 'package:fruit_ecommerce_app/features/auth/presentaion/view/widgets/have_account_widget.dart';
import 'package:fruit_ecommerce_app/features/auth/presentaion/view/widgets/terms_and_conditions.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.name,
              text: S.of(context).fullName,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.emailAddress,
              text: S.of(context).email,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.text,
              text: S.of(context).password,
              suffixIcon: const Icon(Icons.remove_red_eye),
            ),
            const SizedBox(
              height: 16,
            ),
            const TermsAndConditions(),
            const SizedBox(
              height: 42,
            ),
            CustomButton(
                onpressed: () {}, text: S.of(context).createANewAccount),
            const SizedBox(
              height: 38,
            ),
            HaveAccount()
          ],
        ),
      ),
    );
  }
}
