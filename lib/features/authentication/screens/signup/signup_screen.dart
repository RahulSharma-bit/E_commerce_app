import 'package:flutter/material.dart';
import 'package:r_shop_app/common/widgets/r_social_buttons.dart';
import 'package:r_shop_app/features/authentication/screens/signup/widgets/sign_up_form_widget.dart';

import '../../../../common/widgets/r_form_divider.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),

          /// ⭐ Padding ka ek hi child hoga
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// ---------------- FORM ----------------
              RSignUpForm(),

              /// ----------- DIVIDER  -----------
              const SizedBox(height: RSizes.spaceBtwSections),
              RFormDivider(text: RAppText.orSignInWith),

              /// ---------- Social Buttons -------------------
              const SizedBox(height: RSizes.spaceBtwSections),
              RSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
