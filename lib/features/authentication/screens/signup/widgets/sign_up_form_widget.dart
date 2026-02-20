import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_shop_app/features/authentication/screens/signup/verify_email_address.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class RSignUpForm extends StatelessWidget {
  const RSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title
          Text(
            RAppText.signupTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: RSizes.spaceBtwItems),

          /// First & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: RAppText.firstName,
                  ),
                ),
              ),
              const SizedBox(width: RSizes.spaceBtwItems),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: RAppText.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: RSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: RAppText.username,
            ),
          ),
          const SizedBox(height: RSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: RAppText.email,
            ),
          ),
          const SizedBox(height: RSizes.spaceBtwInputFields),

          /// Phone
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: RAppText.phoneNo,
            ),
          ),
          const SizedBox(height: RSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: RAppText.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: RSizes.spaceBtwSections),

          /// Terms Checkbox
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(width: RSizes.spaceBtwItems),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${RAppText.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: '${RAppText.privacyPolicy} ',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: dark ? RColors.white : RColors.primary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: '${RAppText.and} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: RAppText.termsOfUse,
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: dark ? RColors.white : RColors.primary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: RSizes.spaceBtwSections),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(VerifyEmailAddress()),
              child: Text(RAppText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
