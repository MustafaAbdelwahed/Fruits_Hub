import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
            thickness: 2,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          S.of(context).or,
          style: TextStyles.bold16,
        ),
        SizedBox(
          width: 20,
        ),
        const Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
