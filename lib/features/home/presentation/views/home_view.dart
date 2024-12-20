import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/custom_bootom_navigator_bar.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'homeView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBootomNavigatorBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
