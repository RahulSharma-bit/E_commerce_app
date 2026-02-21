import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_shop_app/utils/constants/colors.dart';
import 'package:r_shop_app/utils/constants/sizes.dart';
import 'package:r_shop_app/utils/device/device_utility.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

class RSearchContainer extends StatelessWidget {
  const RSearchContainer({super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBorder = true});

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: RSizes.defaultSpace),
      child: Container(
        width: RDeviceUtils.getScreenWidth(),
        padding: EdgeInsets.all(RSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                    ? RColors.dark
                    : RColors.white
              : Colors.transparent,
          borderRadius: BorderRadius.circular(RSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: RColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: RColors.darkerGrey),
            const SizedBox(width: RSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
