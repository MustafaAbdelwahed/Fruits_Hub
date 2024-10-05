import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_ecommerce_app/core/services/get_it_services.dart';

import 'package:fruit_ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/widgets/sign_in_view_body_blco_consumer.dart';
import 'package:fruit_ecommerce_app/features/auth/domain/repo/auth_repos.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const String routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepos>()),
      child: Scaffold(
        appBar: buildAppBar(context: context, title: S.of(context).login),
        body: const SignInViewBodyBlcoConsumer(),
      ),
    );
  }
}
