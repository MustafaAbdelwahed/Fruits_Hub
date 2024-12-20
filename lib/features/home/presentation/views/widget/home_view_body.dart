import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/best_seller_grid_view.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/best_selling_header.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        // shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
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
                const FeaturedList(),
                const SizedBox(
                  height: 11,
                ),
                const BestSellingHeader(),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          const BestSellerGridView(),
        ],
      ),
    );
  }
}
