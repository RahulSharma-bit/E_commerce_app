import 'package:flutter/material.dart';
import 'package:r_shop_app/common/widgets/layout/grid_layout.dart';
import 'package:r_shop_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:r_shop_app/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/r_brands_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class RCategoryTab extends StatelessWidget {
  const RCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              RBrandShowcase(images: [RAppImages.productImage1, RAppImages.productImage2, RAppImages.productImage3]),

              /// Products
              RSectionHeading(title: 'You Might Like', onPressed: () {}),
              const SizedBox(height: RSizes.spaceBtwItems),

              RGridLayout(itemCount: 4, itemBuilder: (_, index) => const RProductCardVertical()),
            ],
          ),
        ),
      ],
    );
  }
}
