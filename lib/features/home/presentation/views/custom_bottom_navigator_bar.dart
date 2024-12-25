import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/home/domain/bottom_navigator_bar_entity.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/navigator_bar_item.dart';

class CustomBottomNavigatorBar extends StatefulWidget {
  const CustomBottomNavigatorBar({super.key});

  @override
  State<CustomBottomNavigatorBar> createState() =>
      _CustomBottomNavigatorBarState();
}

class _CustomBottomNavigatorBarState extends State<CustomBottomNavigatorBar> {
  int currentItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 70,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 25,
              // blurRadius: 1,
              offset: Offset(0, -2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: bottomNavigatorBarItems.asMap().entries.map((e) {
            var index = e.key;
            var eantity = e.value;

            return Expanded(
              flex: currentItemIndex == index ? 3 : 2,
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentItemIndex = index;
                  });
                },
                child: NavigatorBarItem(
                    isSelected: currentItemIndex == index,
                    bottomNavigatorBarEntity: eantity),
              ),
            );
          }).toList(),
        ));
  }
}
