import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/custom_home_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomHomeAppBar(),
        )
      ],
    );
  }
}
