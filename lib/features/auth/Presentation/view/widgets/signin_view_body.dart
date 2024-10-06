import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_button.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_password_field.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_text_from_fiald.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/dont_have_account_widget.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/or_widget.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/social_media_button.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

late String email, password;
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

class _SigninViewBodyState extends State<SigninViewBody> {
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
                onSaved: (value) {
                  email = value!;
                },
                keyboardType: TextInputType.emailAddress,
                text: S.of(context).email,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomPasswordTextField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    S.of(context).forgetPassword,
                    style: TextStyles.semiBold13
                        .copyWith(color: AppColors.lightPrimaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              CustomButton(
                  onpressed: () {
                    // if (formKey.currentState!.validate()) {
                    //   formKey.currentState!.save();
                    // } else {
                    //   setState(() {
                    //     autovalidateMode = AutovalidateMode.always;
                    //   });
                    // }
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context.read<SigninCubit>().signInUser(email, password);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: S.of(context).login),
              const SizedBox(
                height: 33,
              ),
              const DontHaveAccount(),
              const SizedBox(
                height: 33,
              ),
              const OrWidget(),
              const SizedBox(
                height: 21,
              ),
              SocialMediaButton(
                onTap: () {
                  context.read<SigninCubit>().signInWithGoogle();
                },
                title: S.of(context).continueWithGoogle,
                socialMediaIcon: Assets.imagesGoogleIcon,
              ),
              const SizedBox(
                height: 16,
              ),
              Platform.isIOS
                  ? Column(
                      children: [
                        SocialMediaButton(
                          title: S.of(context).continueWithApple,
                          socialMediaIcon: Assets.imagesAppleIcon,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    )
                  : const SizedBox(),
              SocialMediaButton(
                onTap: () {
                  context.read<SigninCubit>().signInWithFacebook();
                },
                title: S.of(context).continueWithFacebook,
                socialMediaIcon: Assets.imagesFacebookIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
