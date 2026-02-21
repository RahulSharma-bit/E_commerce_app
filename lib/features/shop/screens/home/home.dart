import 'package:flutter/material.dart';
import 'package:r_shop_app/features/shop/screens/home/widgets/home_app_bar.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
