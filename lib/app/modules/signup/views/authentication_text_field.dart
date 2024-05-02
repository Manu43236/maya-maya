import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import '../../../../base/const/color_const.dart';

class AuthenticationTextFormField extends StatelessWidget {
  const AuthenticationTextFormField({
    super.key,
    required this.controller,
    this.validator,
    this.onFieldSubmitted,
    required this.focusNode,
    this.obscureText = false,
    required this.hintText,
    required this.keyboardType,
    this.suffixIcon,
  });
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmitted;
  final FocusNode focusNode;
  final bool obscureText;
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: const NeumorphicStyle(
        border: NeumorphicBorder(
          isEnabled: true,
          color: Color(0x808D949D),
          width: 0.3,
        ),
        depth: -7,
        color: Color(0xFF0F1F2D),
        shadowDarkColorEmboss:
            // const Color.fromARGB(100, 0, 0, 0),
            Colors.black,
        shadowLightColorEmboss: Color(0xFF656565),
        // const Color(0xFF656565).withOpacity(0.7),
        boxShape: NeumorphicBoxShape.stadium(),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        cursorColor: white,
        controller: controller,
        obscuringCharacter: "*",
        obscureText: obscureText,
        style: const TextStyle(
          color: Color(0xFFF1EDE9),
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF8C949E),
          ),
          alignLabelWithHint: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
          suffixIcon: suffixIcon,
        ),
        textAlignVertical: TextAlignVertical.center,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
          // cursorColor: kIsWeb ? Colors.grey : const Color(0xFF0F1F2D),
      ),
    );
  }
}
