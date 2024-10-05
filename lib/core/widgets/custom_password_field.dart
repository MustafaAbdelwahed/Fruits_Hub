import 'package:flutter/material.dart';
import 'package:fruit_ecommerce_app/core/widgets/custom_text_from_fiald.dart';
import 'package:fruit_ecommerce_app/generated/l10n.dart';

class CustomPasswordTextField extends StatefulWidget {
  CustomPasswordTextField({
    super.key,
    this.onSaved,
  });
  final void Function(String?)? onSaved;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool observeText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      observeText: observeText,
      onSaved: widget.onSaved,
      keyboardType: TextInputType.text,
      text: S.of(context).password,
      suffixIcon: GestureDetector(
          onTap: () {
            
            observeText = !observeText;
            setState(() {});
          },
          child: observeText
              ? const Icon(Icons.remove_red_eye_outlined)
              : const Icon(Icons.remove_red_eye)),
    );
  }
}
