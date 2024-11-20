import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';

class CustomFuturedButton extends StatelessWidget {
  const CustomFuturedButton(
      {super.key, required this.onpressed, required this.text});
  final VoidCallback onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      height: 32,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        onPressed: onpressed,
        child: FittedBox(
            child: Text(text,
                style:
                    TextStyles.bold16.copyWith(color: AppColors.primaryColor))),
      ),
    );
  }
}
