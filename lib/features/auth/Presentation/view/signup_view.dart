import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/core/services/get_it_services.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repos.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';
import 'widgets/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepos>()),
      child: Scaffold(
        appBar: buildAppBar(context: context, title: S.of(context).signUP),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
