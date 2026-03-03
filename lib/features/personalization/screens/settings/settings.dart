import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_shop_app/common/widgets/appbar/appbar.dart';
import 'package:r_shop_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:r_shop_app/common/widgets/texts/section_heading.dart';

import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../profile/profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            RPrimaryHeaderContainer(
              child: Column(
                children: [
                  RAppBar(
                    title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: RColors.white)),
                  ),
                  const SizedBox(height: RSizes.spaceBtwSections),

                  /// User Profile Card
                  RUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: RSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(RSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Setting's
                  const RSectionHeading(title: 'Account Setting', showActionButton: false),
                  const SizedBox(height: RSizes.spaceBtwItems),

                  RSettingMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set Shopping Delivery address'),
                  RSettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout'),
                  RSettingMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and completed orders'),
                  RSettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw Balance to registered bank account'),
                  RSettingMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons'),
                  RSettingMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message'),
                  RSettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),

                  /// ============ App Settings ================================
                  SizedBox(height: RSizes.spaceBtwSections),
                  RSectionHeading(title: 'App Settings', showActionButton: false),
                  const SizedBox(height: RSizes.spaceBtwItems),
                  RSettingMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase '),
                  RSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set Recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  RSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search Result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  RSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'HD Image Quality',
                    subTitle: 'Set Image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// Logout Button
                  const SizedBox(height: RSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: Text('Logout')),
                  ),
                  const SizedBox(height: RSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
