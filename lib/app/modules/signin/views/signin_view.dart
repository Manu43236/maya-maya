import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/modules/signin/views/reset_pass.dart';
import 'package:maya_maya_architecture/app/modules/signin/views/sigin_buttons_tab.dart';

import '../../../../base/widgets/bgContainer.dart';
import '../../../../base/widgets/logo.dart';
import '../controllers/signin_controller.dart';
import 'signin_form_tab.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgContainer(
        child: Column(
          children: [
            const Flexible(
              flex: kIsWeb ? 3 : 4,
              child: Logo(
                showTagline: false,
              ),
            ),
            Flexible(
              flex: 8,
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.tabController,
                children: const [
                  SiginButtons(),
                  SigninForm(),
                  ForgotPassword(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
