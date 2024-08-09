import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/appi_mages.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.imagesPlamt),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogoApp),
        SvgPicture.asset(
          Assets.imagesBootomSplash,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
