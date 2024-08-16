import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isCheck, required this.onChanged});
  final bool isCheck;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isCheck);
      },
      child: AnimatedContainer(
        height: 21,
        width: 21,
        duration: const Duration(milliseconds: 150),
        decoration: ShapeDecoration(
          color: isCheck ? AppColors.primaryColor : Colors.transparent,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isCheck ? Colors.transparent : const Color(0xffDDDFDF),
            ),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: isCheck
              ? SvgPicture.asset(
                  Assets.imagesVector,
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
