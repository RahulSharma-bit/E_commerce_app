import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_shop_app/features/authentication/screens/login/login_screen.dart';
import 'package:r_shop_app/utils/constants/image_strings.dart';
import 'package:r_shop_app/utils/constants/text_strings.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              ///   Image
              Image(
                image: AssetImage(RAppImages.forgetPasswordEmailSent),
                width: RHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: RSizes.spaceBtwSections),

              ///   Title
              Text(
                RAppText.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: RSizes.spaceBtwItems),

              ///   Sub Title
              Text(
                RAppText.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: RSizes.spaceBtwSections),

              ///    Button's
              ///    Done Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => LoginScreen()),
                  child: Text(RAppText.done),
                ),
              ),
              const SizedBox(height: RSizes.spaceBtwItems),

              ///    Resend Email Button
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(RAppText.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
