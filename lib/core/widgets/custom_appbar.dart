import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';

AppBar buildAppBar({required BuildContext context, required String title}) {
  return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(title, style: TextStyles.bold19),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new),
      ));
}
