import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/utils/app_images.dart';
import 'package:fruit_ecommerce_app/core/utils/app_text_style.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: SizedBox(
          width: 20,
          child: Center(child: SvgPicture.asset(Assets.imagesSearchIcon)),
        ),
        suffixIcon: SizedBox(
          width: 20,
          child: Center(
            child: SvgPicture.asset(Assets.imagesFilter),
          ),
        ),
        // suffixIconColor: const Color(0xffC9CECF),

        hintText: text,
        hintStyle: TextStyles.bold13.copyWith(color: const Color(0xff949D9E)),
        filled: true,
        fillColor: Colors.white,
        // fillColor: const Color(0xFFF1F5F5),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder({required}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.white
          // color: Color.fromARGB(255, 216, 219, 219),
          ),
    );
  }
}
