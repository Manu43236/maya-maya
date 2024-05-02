import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maya_maya_architecture/app/modules/signup/views/signup_form_tab_2.dart';

import '../../../../base/widgets/bgContainer.dart';
import '../../../../base/widgets/logo.dart';
import '../controllers/signup_controller.dart';
import 'account_verified_tab.dart';
import 'edit_email_tab.dart';
import 'signup_tab_1.dart';
import 'verify_email_tab_3.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgContainer(
        child: InkWell(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Flexible(
                fit: FlexFit.tight,
                flex: kIsWeb ? 3 : 4,
                child: Logo(),
              ),
              Flexible(
                flex: 8,
                child: TabBarView(
                  controller: controller.tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    SignupButtonsWidget(),
                    SingleChildScrollView(
                      child: SignupForm(),
                    ),
                    VerifyEmailTab(),
                    EditEmail(),
                    AccountVerifiedTab(),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                "v3.5.1",
                style: GoogleFonts.titilliumWeb(
                  fontSize: 10,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
