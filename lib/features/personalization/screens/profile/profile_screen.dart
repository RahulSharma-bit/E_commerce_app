import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_shop_app/common/widgets/appbar/appbar.dart';
import 'package:r_shop_app/common/widgets/images/r_circular_image.dart';
import 'package:r_shop_app/common/widgets/texts/section_heading.dart';
import 'package:r_shop_app/features/personalization/screens/profile/widgets/profile_menu.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App
      appBar: RAppBar(title: Text('Profile'), showBackArrow: true),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    /// Profile Picture
                    const RCircularImage(image: RAppImages.user, height: 80, width: 80),
                    TextButton(onPressed: () {}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: RSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),

              /// Heading Profile Info.
              const RSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: RSizes.spaceBtwItems),

              RProfileMenu(onPressed: () {}, title: 'Name', value: 'Rahul Sharma'),
              RProfileMenu(onPressed: () {}, title: 'username', value: 'xyz@123'),

              // ============> Space <==============================
              const SizedBox(height: RSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),
              // ============> Space <==============================

              /// Personal Information.
              const RSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: RSizes.spaceBtwItems),

              RProfileMenu(onPressed: () {}, title: 'User Id', value: '45689', icon: Iconsax.copy),
              RProfileMenu(onPressed: () {}, title: 'E-mail', value: 'rahul_sh@gmail.com'),
              RProfileMenu(onPressed: () {}, title: 'Phone Number', value: '+91 7845124578'),
              RProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              RProfileMenu(onPressed: () {}, title: 'Date of Birth', value: '19 Feb, 2020'),
              const Divider(),
              const SizedBox(height: RSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Close Account', style: TextStyle(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
