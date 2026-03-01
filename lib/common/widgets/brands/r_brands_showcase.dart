import 'package:flutter/material.dart';
import 'package:r_shop_app/common/widgets/brands/r_brand_cards.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/rounded_container.dart';

class RBrandShowcase extends StatelessWidget {
  const RBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RRoundedContainer(
      showBorder: true,
      borderColor: RColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(RSizes.md),
      margin: const EdgeInsets.only(bottom: RSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with product count.
          const RBrandCard(showBorder: false),
          const SizedBox(height: RSizes.spaceBtwItems),

          /// Brand Top 3 Product Images
          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList()),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Expanded(
      child: RRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(RSizes.md),
        margin: const EdgeInsets.only(right: RSizes.sm),
        backgroundColor: dark ? RColors.darkerGrey : RColors.light,
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
