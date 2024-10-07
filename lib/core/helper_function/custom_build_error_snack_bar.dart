import 'package:flutter/material.dart';

void buildErrorSnakBar(BuildContext context, String errorMessage) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        errorMessage,
      ),
    ),
  );
}
