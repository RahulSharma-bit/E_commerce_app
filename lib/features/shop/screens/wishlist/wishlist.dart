import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_shop_app/common/widgets/appbar/appbar.dart';
import 'package:r_shop_app/common/widgets/icon/r_circular_icon.dart';
import 'package:r_shop_app/common/widgets/layout/grid_layout.dart';
import 'package:r_shop_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:r_shop_app/features/shop/screens/home/home.dart';

import '../../../../utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(
        title: Text('WishList', style: Theme.of(context).textTheme.headlineMedium),
        actions: [RCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomePage()))],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(RSizes.defaultSpace),
        child: Column(children: [RGridLayout(itemCount: 7, itemBuilder: (_, index) => const RProductCardVertical())]),
      ),
    );
  }
}
