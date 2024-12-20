import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(children: [
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_outline))),
        Positioned.fill(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                // child: SvgPicture.asset(
                //   Assets.imagesPageViewItem1Image,
                child: Image.asset(
                  Assets.imagesWaterMellon,
                  // width: 131,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'بطيخ',
                      textAlign: TextAlign.right,
                      style: TextStyles.semiBold13
                          .copyWith(color: AppColors.primaryBlack),
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '20جنية ',
                                style: TextStyles.bold13
                                    .copyWith(color: AppColors.secondaryColor),
                              ),
                              TextSpan(
                                text: '/',
                                style: TextStyles.bold13.copyWith(
                                    color: AppColors.lightSecondaryColor),
                              ),
                              TextSpan(
                                  text: ' الكيلو',
                                  style: TextStyles.semiBold13.copyWith(
                                      color: AppColors.lightSecondaryColor)),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const CircleAvatar(
                            backgroundColor: AppColors.primaryColor,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              // size: 30,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}







  //  title: Text(
  //                 'بطيخ',
  //                 textAlign: TextAlign.right,
  //                 style: TextStyles.semiBold13
  //                     .copyWith(color: AppColors.primaryBlack),
  //               ),
  //               subtitle: Text.rich(
  //                 TextSpan(
  //                   children: [
  //                     TextSpan(
  //                       text: '20جنية ',
  //                       style: TextStyles.bold13
  //                           .copyWith(color: AppColors.secondaryColor),
  //                     ),
  //                     TextSpan(
  //                       text: '/',
  //                       style: TextStyles.bold13
  //                           .copyWith(color: AppColors.lightSecondaryColor),
  //                     ),
  //                     TextSpan(
  //                         text: ' الكيلو',
  //                         style: TextStyles.semiBold13
  //                             .copyWith(color: AppColors.lightSecondaryColor)),
  //                   ],
  //                 ),
  //               ),