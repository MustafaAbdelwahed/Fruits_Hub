import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_check_box.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;
  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Transform.scale(
            scale: 1.3,
            child: CustomCheckBox(
              onChanged: (value) {
                isTermsAccepted = value;
                widget.onChanged(value);
                setState(() {});
              },
              isCheck: isTermsAccepted,
            )),
        const SizedBox(
          width: 20,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width -
                (kHorizontalPadding * 2) -
                42,
            child: Text.rich(
              TextSpan(
                style: const TextStyle(

                    // fontFamily: "Cairo",
                    ),
                children: [
                  TextSpan(
                    text: S.of(context).TermsAndConditionsPart1,
                    style: TextStyles.semiBold16.copyWith(
                      fontSize: 14,
                      color: const Color(0xff616A6B).withOpacity(0.7),
                    ),
                  ),
                  TextSpan(
                    text: " ",
                    style: TextStyles.semiBold13.copyWith(
                      color: const Color(0xff616A6B),
                    ),
                  ),
                  TextSpan(
                    text: S.of(context).TermsAndConditionsPart2,
                    style: TextStyles.bold13
                        .copyWith(color: AppColors.lightPrimaryColor),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
