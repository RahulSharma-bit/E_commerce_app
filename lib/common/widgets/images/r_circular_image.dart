import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class RCircularImage extends StatelessWidget {
  const RCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.height = 56,
    this.width = 56,
    this.padding = RSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double height, width, padding;

  @override
  Widget build(BuildContext context) {
    final bool dark = RHelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        // if image background color is null then switch it to light and dark color mode design
        color: backgroundColor ?? (dark ? RColors.black : RColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(fit: fit, image: isNetworkImage ? NetworkImage(image) : AssetImage(RAppImages.babyCare) as ImageProvider, color: overlayColor),
      ),
    );
  }
}
