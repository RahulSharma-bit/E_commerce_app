import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_shop_app/common/styles/spacing_styles.dart';
import 'package:r_shop_app/features/authentication/screens/forget_password/forget_password_screen.dart';
import 'package:r_shop_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:r_shop_app/navigation_menu.dart';
import 'package:r_shop_app/utils/constants/image_strings.dart';
import 'package:r_shop_app/utils/constants/text_strings.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/r_form_divider.dart';
import '../../../../common/widgets/r_social_buttons.dart';
import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: RSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo , Titles and Sub titles
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(height: 150, image: AssetImage(dark ? RAppImages.darkAppLogo : RAppImages.lightAppLogo)),
                  const SizedBox(height: RSizes.sm),
                  Text(RAppText.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: RSizes.sm),
                  Text(RAppText.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),

                  // Form
                  Form(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: RSizes.spaceBtwSections),
                      child: Column(
                        children: [
                          //Email
                          TextFormField(
                            decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: RAppText.email),
                          ),
                          const SizedBox(height: RSizes.spaceBtwInputFields),

                          //Password
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.password_check),
                              labelText: RAppText.password,
                              suffixIcon: Icon(Iconsax.eye_slash),
                            ),
                          ),
                          const SizedBox(height: RSizes.spaceBtwInputFields / 2),

                          //   Remember Me and Forget Password
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Remember me
                              Row(
                                children: [
                                  Checkbox(value: true, onChanged: (value) {}),
                                  Text(RAppText.rememberMe),
                                ],
                              ),
                              // Forget password
                              TextButton(onPressed: () => Get.to(() => ForgetPasswordScreen()), child: Text(RAppText.forgetPassword)),
                            ],
                          ),
                          const SizedBox(height: RSizes.spaceBtwSections),

                          // Sign In Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(onPressed: () => Get.to(() => NavigationMenu()), child: Text(RAppText.signIn)),
                          ),
                          const SizedBox(height: RSizes.spaceBtwItems),

                          // Create Account
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(onPressed: () => Get.to(() => SignupScreen()), child: Text(RAppText.createAccount)),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //  --------------- Divider --------------------------
                  RFormDivider(text: RAppText.orSignInWith),

                  //  --------------- Footer ---------------------------
                  const SizedBox(height: RSizes.spaceBtwSections),
                  RSocialButtons(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
