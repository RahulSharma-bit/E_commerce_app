import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_shop_app/features/authentication/screens/forget_password/reset_password_screen.dart';
import 'package:r_shop_app/utils/constants/text_strings.dart';

import '../../../../utils/constants/sizes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Heading
            Text(RAppText.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: RSizes.spaceBtwItems),
            Text(RAppText.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: RSizes.spaceBtwSections),

            /// Text Field
            TextFormField(
              decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: RAppText.email),
            ),
            const SizedBox(height: RSizes.spaceBtwSections),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => const ResetPasswordScreen()),
                child: Text(RAppText.submitText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
