import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../base/const/string_const.dart';
import '../../../../base/utils/responsive_utils.dart';
import 'authentication_mode_button_widget.dart';

class AccountVerifiedTab extends StatelessWidget {
  const AccountVerifiedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: ResponsiveUtils.isCustomScreen()
        ? ConstrainedBox(
          constraints: BoxConstraints.tightFor(
            width: Get.width / 2.5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                YOUR_ACCOUNT_VERIFIY_TEXT,
                style: GoogleFonts.titilliumWeb(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 3.0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                SIGNIN_CONTINUE_TEXT,
                style: GoogleFonts.titilliumWeb(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: AuthenticationModeButton(
                  label: SIGN_IN_NOW_TEXT,
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-in', arguments: true);
                  },
                ),
              ),
            ],
          ),
        )
        : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              YOUR_ACCOUNT_VERIFIY_TEXT,
              style: GoogleFonts.titilliumWeb(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                letterSpacing: 3.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              SIGNIN_CONTINUE_TEXT,
              style: GoogleFonts.titilliumWeb(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: AuthenticationModeButton(
                label: SIGN_IN_NOW_TEXT,
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in', arguments: true);
                },
              ),
            ),
          ],
        ),
    );
  }
}
