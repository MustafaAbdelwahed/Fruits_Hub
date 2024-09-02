import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/core/helper_function/custom_build_error_snack_bar.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/signup_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          // Navigator.pushNamed(context, SignupView.routeName);
        }
        if (state is Signupfailed) {
          buildErrorSnakBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is Signupuploading ? true : false,
            child: const SignupViewBody());
      },
    );
  }
}
