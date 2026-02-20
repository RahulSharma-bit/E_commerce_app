import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:r_shop_app/features/authentication/screens/login/login_screen.dart';
import 'package:r_shop_app/utils/constants/image_strings.dart';
import 'package:r_shop_app/utils/constants/text_strings.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../utils/constants/sizes.dart';

class VerifyEmailAddress extends StatelessWidget {
  const VerifyEmailAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(const LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(RSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Lottie.asset(
                RAppImages.verifyEmailLottie,
                repeat: true,
                width: RHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: RSizes.spaceBtwSections),

              /// Title and Sub-title
              Text(
                RAppText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: RSizes.spaceBtwItems),
              Text(
                'Dummy@dummy.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: RSizes.spaceBtwItems),
              Text(
                RAppText.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: RSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: RAppImages.successJson,
                      title: RAppText.yourAccountCreatedTitle,
                      subTitle: RAppText.yourAccountCreatedSubTitle,
                      onPressed: () => Get.offAll(() => const LoginScreen()),
                    ),
                  ),
                  child: Text(RAppText.rContinue),
                ),
              ),
              const SizedBox(height: RSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(RAppText.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
