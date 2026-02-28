import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_shop_app/common/styles/shadows.dart';
import 'package:r_shop_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icon/r_circular_icon.dart';
import '../../images/r_rounded_image.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';
import '../../texts/r_brand_title_text_with_verified_icon.dart';

class RProductCardVertical extends StatelessWidget {
  const RProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [RShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(RSizes.productImageRadius),
          color: dark ? RColors.darkGrey : RColors.white,
        ),

        child: Column(
          children: [
            /// -- Thumbnail , Wishlist Button, Discount Tag
            RRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(RSizes.sm),
              backgroundColor: dark ? RColors.dark : RColors.white,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  RRoundedImage(imageUrl: RAppImages.productImage3, applyImageRadius: true),

                  /// -- Sale Tag
                  Positioned(
                    top: 12,
                    child: RRoundedContainer(
                      radius: RSizes.sm,
                      padding: const EdgeInsets.symmetric(horizontal: RSizes.sm, vertical: RSizes.xs),
                      backgroundColor: RColors.secondary.withValues(alpha: 0.8),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black)),
                    ),
                  ),

                  ///  -- Favourite Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: RCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: RSizes.spaceBtwItems / 2),

            /// -- Details
            Padding(
              padding: EdgeInsets.only(left: RSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RProductTitleText(title: 'Colgate Max Fresh', smallSize: true),
                  const SizedBox(height: RSizes.xs),
                  RBrandTitleWithVerifiedIcon(title: 'Colgate'),
                ],
              ),
            ),
            // Todo: Add Spacer() here to keep the height of each box same in case of 1 or 2 lines of heading.
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                Padding(
                  padding: const EdgeInsets.only(left: RSizes.sm),
                  child: const RProductPriceText(isLarge: true, price: '69.00'),
                ),
                // Text('Rs. 69', style: Theme.of(context).textTheme.headlineMedium, maxLines: 1, overflow: TextOverflow.ellipsis),

                /// -- Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                    color: RColors.dark,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(RSizes.cardRadiusMd), bottomRight: Radius.circular(RSizes.productImageRadius)),
                  ),
                  child: const SizedBox(
                    width: RSizes.iconLg * 1.2,
                    height: RSizes.iconLg * 1.2,
                    child: Center(child: Icon(Iconsax.add, color: Colors.white)),
                  ),
                ),

                ///
              ],
            ),
          ],
        ),
      ),
    );
  }
}
