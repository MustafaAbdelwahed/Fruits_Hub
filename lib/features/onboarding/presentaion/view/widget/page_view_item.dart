import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/helper_function/utils/app_images.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.backgroundImage,
      required this.image,
      required this.subtitile,
      required this.title});
  final String backgroundImage, image, subtitile;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  bottom: 0, left: 0, right: 0, child: SvgPicture.asset(image)),
              SafeArea(child: Text(S.of(context).skip))
            ],
          ),
        ),
        title,
        Text(subtitile)
      ],
    );
  }
}
