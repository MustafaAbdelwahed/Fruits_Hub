import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:svg_flutter/svg.dart';

class CustomBestSellingAppBar extends StatelessWidget {
  const CustomBestSellingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListTile(
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          width: 44,
          height: 44,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(
              side: BorderSide(width: 1, color: Color(0xFFF1F1F5)),
            ),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
        ),
      ),
      title: Text(
        'الأكثر مبيعًا', textAlign: TextAlign.center,
        // textDirection: TextDirection.rtl,
        style: TextStyles.bold19.copyWith(),
      ),
      trailing: Container(
        margin: const EdgeInsets.only(top: 5),
        padding: const EdgeInsets.all(10),
        decoration: const ShapeDecoration(
          shape: OvalBorder(),
          color: Color(0xffeef8ed),
        ),
        child: SvgPicture.asset(
          Assets.imagesNotification,
        ),
      ),
    ));
  }
}
