import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/widgets/fruit_item.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/custom_home_appbar.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_search_text_field.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/list_featured.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

import '../../../../../core/utils/app_text_style.dart';

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
                const ListFeatured(),
                const SizedBox(
                  height: 11,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(S.of(context).bestSeller,
                            style: TextStyles.bold16),
                        InkWell(
                            onTap: () {},
                            child: Text(S.of(context).more,
                                style: TextStyles.regular13))
                      ]),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 163 / 214,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 8),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const FruitItem();
              }),
        ),
        // SliverPadding(
        //   padding: const EdgeInsets.all(16.0), // Add padding around the grid
        //   sliver: SliverGrid.builder(
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2, // Number of columns
        //       mainAxisSpacing: 10, // Spacing between rows
        //       crossAxisSpacing: 10, // Spacing between columns
        //     ),
        //     itemBuilder: (context, index) {
        //       return Container(
        //         color: Colors.blue,
        //         alignment: Alignment.center,
        //         child: Text(
        //           'Item $index',
        //           style: TextStyle(color: Colors.white),
        //         ),
        //       );
        //     },
        //     itemCount: 20, // Number of items
        //   ),
        // ),
      ],
    );
  }
}
