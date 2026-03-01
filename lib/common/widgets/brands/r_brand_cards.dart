import 'package:flutter/material.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/r_circular_image.dart';
import '../texts/r_brand_title_text_with_verified_icon.dart';

class RBrandCard extends StatelessWidget {
  const RBrandCard({super.key, this.onTap, required this.showBorder});

  final void Function()? onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RRoundedContainer(
        padding: EdgeInsets.all(RSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// -- Icon
            Flexible(
              child: RCircularImage(
                image: RAppImages.babyCare,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? RColors.white : RColors.dark,
              ),
            ),
            const SizedBox(height: RSizes.spaceBtwItems / 2),

            /// -- Text
            // [Expanded and Column [MainAxisSize.min] is important to keep the elements in the vertical center and also
            // to keep the text inside the boundaries
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RBrandTitleWithVerifiedIcon(title: 'Colgate', brandTextSize: TextSizes.large),
                  Text('256 Product', overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
