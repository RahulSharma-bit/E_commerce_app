import 'package:flutter/material.dart';
import 'package:r_shop_app/common/widgets/appbar/appbar.dart';
import 'package:r_shop_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:r_shop_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:r_shop_app/common/widgets/layout/grid_layout.dart';
import 'package:r_shop_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:r_shop_app/common/widgets/texts/section_heading.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/r_circular_image.dart';
import '../../../../common/widgets/texts/r_brand_title_text_with_verified_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: RAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [RCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              floating: true,
              pinned: true,
              backgroundColor: RHelperFunctions.isDarkMode(context) ? RColors.dark : RColors.white,
              expandedHeight: 440,

              //-- Flexible space in order to create child of this Sliver app Bar
              flexibleSpace: Padding(
                padding: EdgeInsets.all(RSizes.defaultSpace),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    /// -- Search Bar
                    const SizedBox(height: RSizes.spaceBtwItems),
                    const RSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                    const SizedBox(height: RSizes.spaceBtwSections),

                    /// -- Featured Brands
                    RSectionHeading(title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(height: RSizes.spaceBtwSections / 1.5),

                    RGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: RRoundedContainer(
                            padding: EdgeInsets.all(RSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
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
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
