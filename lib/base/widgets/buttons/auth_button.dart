import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maya_maya_architecture/base/const/color_const.dart';

class BaseButton extends GetView {
  const BaseButton(
      {super.key, this.child, this.availableWidth, required this.onPressed});
  @protected
  final Widget? child;
  final double? availableWidth;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: onPressed,
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 350), child: child),
      ),
    );
  }
}

class AuthButton extends BaseButton {
  const AuthButton(
      {super.key,
      this.leadingIcon,
      this.disabled = false,
      required this.label,
      super.availableWidth,
      required super.onPressed});
  final Widget? leadingIcon;
  final String label;
  final bool disabled;

  @override
  Widget get child => Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(
          top: 14.0,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: disabled ? Colors.grey.withOpacity(0.4) : null,
          border: Border.all(
            color: buttonBorderColor,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(30.0),
          gradient: disabled
              ? null
              : const LinearGradient(
                  colors: authenticationButtonsGradient,
                  begin: Alignment.topCenter,
                  end: Alignment(0.05, 1),
                  stops: [
                    0.0,
                    0.8,
                    1.0,
                  ],
                ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x99000000),
              blurRadius: 10.0,
              offset: Offset(9, 9),
            ),
            BoxShadow(
              color: Color(0x12969696),
              blurRadius: 10.0,
              offset: Offset(-9, -9),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leadingIcon != null) ...[
              Center(
                child: leadingIcon,
              ),
              const SizedBox(
                width: 15.0,
              ),
            ],
            Center(
              child: Text(
                label,
                style: GoogleFonts.titilliumWeb(
                  color: const Color(0xFFF5F1EE),
                  fontSize: 17,
                  letterSpacing: 0.3,
                ),
              ),
            ),
          ],
        ),
      );
}