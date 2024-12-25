import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_appbar.dart';
import 'package:fruit_ecommerce_app/core/widgets/notification_wideget.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/custom_best_selling_app_bar.dart';
import 'package:svg_flutter/svg.dart';

class BestSellingView extends StatelessWidget {
  static const String routeName = 'bestSelling';

  const BestSellingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          context: context,
          title: "الأكثر مبيعًا",
          action: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: NotificationWideget(),
          )),
    );
  }
}
