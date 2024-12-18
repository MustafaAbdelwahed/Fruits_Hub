import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
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
                        // TextButton(
                        //     onPressed: () {},
                        //     child: Text(S.of(context).more,
                        //         style: TextStyles.regular13))
                        InkWell(
                            onTap: () {},
                            child: Text(S.of(context).more,
                                style: TextStyles.regular13))
                      ]),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
