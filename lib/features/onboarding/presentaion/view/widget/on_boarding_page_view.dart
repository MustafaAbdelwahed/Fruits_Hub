import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/helper_function/utils/app_images.dart';
import 'package:fruit_ecommerce_app/features/onboarding/presentaion/view/widget/page_view_item.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text(S.of(context).welcome),
        //       RichText(
        //         text: TextSpan(style: TextStyle(color: Colors.black), children: [
        //           TextSpan(text: S.of(context).welcome),
        //           TextSpan(text: "Fruit"),
        //           TextSpan(text: "HUB"),
        //         ]),
        //       ),
        //     ],
        //   ),
        // );
        PageView(
      children: [
        PageViewItem(
            title: RichText(
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
                TextSpan(text: S.of(context).welcome),
                TextSpan(text: "Fruit"),
                TextSpan(text: "HUB"),
              ]),
            ),
            backgroundImage: Assets.imagesPageViewItem1BackGroundImage,
            image: Assets.imagesPageViewItem1Image,
            subtitile: S.of(context).subtitleFirstOnboarding),
        PageViewItem(
            title: Text(S.of(context).SearchAndShop),
            backgroundImage: Assets.imagesPageViewItem2BackGroundImage,
            image: Assets.imagesPageViewItem2Image,
            subtitile: S.of(context).subtitlesecoundOnboarding)
      ],
    );
  }
}
