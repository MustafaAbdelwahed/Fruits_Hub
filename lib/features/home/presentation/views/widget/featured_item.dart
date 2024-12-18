import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/custom_futured_button.dart';
import 'package:svg_flutter/svg_flutter.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width - 30;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(children: [
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: itemWidth * 0.4,
              child: SvgPicture.asset(
                Assets.imagesPageViewItem2Image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: itemWidth * .48,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: svg.Svg(
                    Assets.imagesFeaturedItemForground,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'عروض العيد',
                      style: TextStyles.regular13.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      'خصم 25%',
                      style: TextStyles.bold19.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 15),
                    CustomFuturedButton(onpressed: () {}, text: "تسوق الان"),
                    const SizedBox(
                      height: 33,
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
