import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/core/helper_function/custom_build_error_snack_bar.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_modal_progress_hud.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/signin_view_body.dart';

class SignInViewBodyBlcoConsumer extends StatelessWidget {
  const SignInViewBodyBlcoConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          // Navigator.pushNamed(context, SigninView.routeName);
        } else if (state is SigninFailed) {
          buildErrorSnakBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomModalProgressHUD(
            isLading: state is SigninLoading ? true : false,
            child: const SigninViewBody());
      },
    );
  }
}
