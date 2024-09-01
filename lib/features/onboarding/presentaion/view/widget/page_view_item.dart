import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_ecommerce_app/constants.dart';
import 'package:fruit_ecommerce_app/core/services/shared_prefrences_singletone.dart.dart';
import 'package:fruit_ecommerce_app/core/utils/app_colors.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:fruit_ecommerce_app/features/auth/Presentation/view/login_view.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.backgroundImage,
      required this.image,
      required this.subtitile,
      required this.title,
      required this.isVisible});
  final String backgroundImage, image, subtitile;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(image)),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: SafeArea(
                  child: Visibility(
                    visible: isVisible,
                    child: GestureDetector(
                      onTap: () {
                        Prefs.setBool(kIsOnboardingsSeen, true);
                        Navigator.pushReplacementNamed(
                            context, LoginView.routeName);
                      },
                      child: Text(
                        S.of(context).skip,
                        style: TextStyles.regular13
                            .copyWith(color: const Color(0xff949D9E)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.12),
          child: Text(
            subtitile,
            textAlign: TextAlign.center,
            style:
                TextStyles.semiBold13.copyWith(color: AppColors.primaryBlack),
          ),
        )
      ],
    );
  }
}
