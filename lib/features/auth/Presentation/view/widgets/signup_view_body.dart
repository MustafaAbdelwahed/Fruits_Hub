import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/helper_function/custom_build_error_snack_bar.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_button.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_text_from_fiald.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/have_account_widget.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/terms_and_conditions.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

import '../../../../../core/widgets/custom_password_field.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String name, email, password;
  late bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) => name = value!,
                keyboardType: TextInputType.name,
                text: S.of(context).fullName,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) => email = value!,
                keyboardType: TextInputType.emailAddress,
                text: S.of(context).email,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomPasswordTextField(
                onSaved: (value) => password = value!,
              ),
              const SizedBox(
                height: 16,
              ),
              TermsAndConditions(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              const SizedBox(
                height: 42,
              ),
              CustomButton(
                  onpressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      // Navigator.pushNamed(     context, TermsAndConditions.routeName);
                      if (isTermsAccepted) {
                        context
                            .read<SignupCubit>()
                            .createUserWithEmailAndPassword(
                                name, email, password);
                      } else {
                        buildErrorSnakBar(
                            context, S.of(context).acceptTermsAndConditions);
                      }
                    } else {
                      setState(
                        () {
                          autovalidateMode = AutovalidateMode.always;
                        },
                      );
                    }
                  },
                  text: S.of(context).createANewAccount),
              const SizedBox(
                height: 38,
              ),
              const HaveAccount()
            ],
          ),
        ),
      ),
    );
  }
}
