import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({
    super.key,
    required this.onTap,
    required this.leading,
    required this.suffix,
  });
  final VoidCallback onTap;
  final String leading;
  final String suffix;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "$leading ",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: suffix,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              // recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
