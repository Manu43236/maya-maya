// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClickableSuffexText extends GetView {
  ClickableSuffexText(
      {super.key, this.prefixText, this.suffexText, this.onClick});

  String? prefixText;

  String? suffexText;

  dynamic onClick;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: prefixText, //"",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: suffexText, //'Sign Up',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = onClick,
          ),
        ],
      ),
    );
  }
}
