import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/core/helper_function/custom_build_error_snack_bar.dart';
import 'package:fruit_ecommerce_app/core/services/get_it_services.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/signup_view_body.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repos.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepos>()),
      child: Scaffold(
        appBar: buildAppBar(context: context, title: S.of(context).signUP),
        body: BlocConsumer<SignupCubit, SignupState>(
          listener: (context, state) {
            if (state is SignupSuccess) {
              // Navigator.pushNamed(context, SignupView.routeName);
            }
            if (state is Signupfailed) {
              buildErrorSnakBar(context, state.errorMessage);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is Signupuploading ? true : false,
                child: const SignupViewBody());
          },
        ),
      ),
    );
  }
}
