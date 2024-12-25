import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:svg_flutter/svg_flutter.dart';

class NotificationWideget extends StatelessWidget {
  const NotificationWideget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.all(10),
      decoration: const ShapeDecoration(
        shape: OvalBorder(),
        color: Color(0xffeef8ed),
      ),
      child: SvgPicture.asset(
        Assets.imagesNotification,
      ),
    );
  }
}
