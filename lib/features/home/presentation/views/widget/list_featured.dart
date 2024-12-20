import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/features/home/presentation/views/widget/featured_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(4, (index) {
            return const FeaturedItem();
          }),
        ),
      ),
    );
  }
}
