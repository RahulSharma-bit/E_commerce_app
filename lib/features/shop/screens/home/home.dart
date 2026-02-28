import 'package:flutter/material.dart';
import 'package:r_shop_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:r_shop_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:r_shop_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:r_shop_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:r_shop_app/utils/constants/image_strings.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            RPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- App Bar
                  const RHomeAppBar(),
                  const SizedBox(height: RSizes.spaceBtwSections),

                  /// -- Search Bar
                  RSearchContainer(text: 'Search in Store', showBackground: true, showBorder: true),
                  const SizedBox(height: RSizes.spaceBtwSections),

                  /// -- Categories
                  const Padding(
                    padding: EdgeInsets.only(left: RSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        RSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white),
                        SizedBox(height: RSizes.spaceBtwItems),

                        /// -- Categories
                        RFormCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(RSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider
                  const RPromoSlider(banners: [RAppImages.promoBanner_1, RAppImages.promoBanner_2, RAppImages.promoBanner_3]),
                  const SizedBox(height: RSizes.spaceBtwItems),

                  /// --Heading
                  RSectionHeading(title: 'Popular products', onPressed: () {}),
                  const SizedBox(height: RSizes.spaceBtwItems),

                  /// -- Popular Products
                  RGridLayout(itemCount: 24, itemBuilder: (_, index) => const RProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
