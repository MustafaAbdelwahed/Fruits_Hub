import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:fruit_ecommerce_app/features/onboarding/presentaion/view/widget/page_view_item.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
            isVisible: true,
            title: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: S.of(context).welcome,
                  style:
                      TextStyles.bold23.copyWith(color: AppColors.primaryBlack),
                ),
                TextSpan(
                  text: "Fruit",
                  style:
                      TextStyles.bold23.copyWith(color: AppColors.primaryColor),
                ),
                TextSpan(
                  text: "HUB",
                  style: TextStyles.bold23
                      .copyWith(color: AppColors.secondaryColor),
                ),
              ]),
            ),
            backgroundImage: Assets.imagesPageViewItem1BackGroundImage,
            image: Assets.imagesPageViewItem1Image,
            subtitile: S.of(context).subtitleFirstOnboarding),
        PageViewItem(
          isVisible: false,
          title: Text(
            S.of(context).SearchAndShop,
            style: TextStyles.bold23.copyWith(color: AppColors.primaryBlack),
          ),
          backgroundImage: Assets.imagesPageViewItem2BackGroundImage,
          image: Assets.imagesPageViewItem2Image,
          subtitile: S.of(context).subtitlesecoundOnboarding,
        )
      ],
    );
  }
}
