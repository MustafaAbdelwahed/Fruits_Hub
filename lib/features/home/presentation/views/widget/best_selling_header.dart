import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(S.of(context).bestSeller, style: TextStyles.bold16),
        InkWell(
            onTap: () {},
            child: Text(S.of(context).more, style: TextStyles.regular13))
      ]),
    );
  }
}
