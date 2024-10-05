import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomModalProgressHUD extends StatelessWidget {
  const CustomModalProgressHUD({
    super.key,
    required this.isLading,
    required this.child,
  });
  final bool isLading;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(inAsyncCall: isLading, child: child);
  }
}
