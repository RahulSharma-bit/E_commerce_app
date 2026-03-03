import 'package:flutter/material.dart';
import 'package:r_shop_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// - 1 Image Slider
            RCurvedEdgeWidget(
              child: Container(
                color: dark ? RColors.darkerGrey : RColors.light,
                child: Stack(
                  children: [
                    /// Main Large Image
                    SizedBox(
                      height: 400,
                      child: Padding(
                        padding: EdgeInsets.all(RSizes.productImageRadius * 2),
                        child: Center(child: Image(image: AssetImage(RAppImages.productImage5))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
