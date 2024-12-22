import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.titile, required this.image});
  final String titile;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        height: 30,
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                width: 30,
                height: 30,
                decoration: ShapeDecoration(
                  color: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                  ),
                )),
            const SizedBox(
              width: 5,
            ),
            Text(
              titile,
              style:
                  TextStyles.semiBold13.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
