import 'package:flutter/material.dart';
import 'package:r_shop_app/common/widgets/appbar/appbar.dart';
import 'package:r_shop_app/common/widgets/appbar/tabbar.dart';
import 'package:r_shop_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:r_shop_app/common/widgets/layout/grid_layout.dart';
import 'package:r_shop_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:r_shop_app/common/widgets/texts/section_heading.dart';
import 'package:r_shop_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/brands/r_brand_cards.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
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

                      /// -- Brand Grid
                      RGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          // while integrating backend we will pass each brand and onPress Event.
                          return RBrandCard(onTap: () {}, showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                /// -- tabs
                bottom: RTabBar(
                  tabs: const [
                    Tab(child: Text('Beverages')),
                    Tab(child: Text('Snacks')),
                    Tab(child: Text('Household & Cleaning')),
                    Tab(child: Text('Personal Care')),
                    Tab(child: Text('Dairy')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(children: [RCategoryTab(), RCategoryTab(), RCategoryTab(), RCategoryTab(), RCategoryTab()]),
        ),
      ),
    );
  }
}
