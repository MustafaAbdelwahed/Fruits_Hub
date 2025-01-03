import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:fruit_ecommerce_app/core/widgets/notification_wideget.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Image.asset(Assets.imagesProfileImg),
      title: Text(
        S.of(context).goodMorning,
        style: TextStyles.regular16.copyWith(color: const Color(0xff949D9E)),
      ),
      subtitle: const Text("مصطفى عبد الواحد ", style: TextStyles.bold16),
      trailing: const NotificationWideget(),
    );
  }
}
