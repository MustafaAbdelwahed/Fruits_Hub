import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/custom_home_appbar.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_search_text_field.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/list_featured.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(kHorizontalPadding),
            child: Column(
              children: [
                const CustomHomeAppBar(),
                const SizedBox(
                  height: 16,
                ),
                CustomSearchTextField(
                  text: S.of(context).searchFor,
                ),
                const SizedBox(
                  height: 12,
                ),
                // const FeaturedItem()
                const ListFeatured()
              ],
            ),
          ),
        )
      ],
    );
  }
}
