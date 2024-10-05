import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton(
      {super.key, required this.title, required this.socialMediaIcon, this.onTap});
  final String title;
  final String socialMediaIcon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xffDDDFDF)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onTap,
        child: ListTile(
          visualDensity:
              const VisualDensity(vertical: VisualDensity.minimumDensity),
          title: Text(
            title,
            style: TextStyles.semiBold16,
            textAlign: TextAlign.center,
          ),
          leading: SvgPicture.asset(
            socialMediaIcon,
            height: 20,
          ),
        ),
      ),
    );
  }
}
