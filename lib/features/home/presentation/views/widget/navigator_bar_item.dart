import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/home/domain/bottom_navigator_bar_entity.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/active_item.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/in_active_item.dart';

class NavigatorBarItem extends StatelessWidget {
  const NavigatorBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigatorBarEntity});
  final bool isSelected;
  final BottomNavigatorBarEntity bottomNavigatorBarEntity;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: bottomNavigatorBarEntity.activeImage,
            titile: bottomNavigatorBarEntity.title,
          )
        : InActiveItem(image: bottomNavigatorBarEntity.inActiveImage);
  }
}
