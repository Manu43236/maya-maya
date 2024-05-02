import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../base/const/color_const.dart';

class AuthenticationButton extends StatelessWidget {
  AuthenticationButton({
    super.key,
    required this.onTap,
    required this.text,
    this.bgColor = darkBlueGradient,
    this.isDeleteAccount = false
  });

  final VoidCallback onTap;
  final String text;

  List<Color> bgColor;
  bool isDeleteAccount = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 16.0,
        ),
        height: 46,
        width: !isDeleteAccount? 132:null,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: buttonBorderColor,
            width: 0.5,
          ),
          gradient: LinearGradient(
            colors: bgColor,
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(30, 237, 237, 237),
              // Color(0x33EDEDED),
              offset: Offset(
                -9,
                -9,
              ),
              blurRadius: 20.0,
            ),
            BoxShadow(
              color: Color.fromARGB(100, 0, 0, 0),
              // Colors.black,
              offset: Offset(
                9,
                9,
              ),
              blurRadius: 10,
            ),
          ],
        ),
        child: Text(
          text,
          style: GoogleFonts.titilliumWeb(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
