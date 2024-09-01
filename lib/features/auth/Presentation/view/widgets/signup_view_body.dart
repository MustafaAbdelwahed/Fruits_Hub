import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_button.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_text_from_fiald.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/have_account_widget.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/terms_and_conditions.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userName, email, password;
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
                onSaved: (value) => userName = value!,
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
              CustomTextFormField(
                onSaved: (value) => password = value!,
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
                  onpressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      // Navigator.pushNamed(
                      //     context, TermsAndConditions.routeName);

                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                              email, password, userName);
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
