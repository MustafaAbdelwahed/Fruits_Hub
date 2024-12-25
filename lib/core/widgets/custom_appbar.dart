import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';

AppBar buildAppBar(
    {required BuildContext context,
    required String title,
    Widget? action,
    bool isContainbackArrow = true}) {
  return AppBar(
      actions: [action ?? Container()],
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(title, style: TextStyles.bold19),
      leading: Padding(
        padding: const EdgeInsets.all(7.0),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Visibility(
            visible: isContainbackArrow,
            child: Container(
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: Color(0xFFF1F1F5)),
                ),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 15,
              ),
            ),
          ),
        ),
      ));
}
