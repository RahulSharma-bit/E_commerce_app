import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_shop_app/common/widgets/texts/r_brand_title_text.dart';
import 'package:r_shop_app/utils/constants/enums.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class RBrandTitleWithVerifiedIcon extends StatelessWidget {
  const RBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = RColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,

      children: [
        Flexible(
          child: RBrandTitleText(title: title, color: textColor, maxLines: maxLines, textAlign: textAlign, brandTextSize: brandTextSize),
        ),
        const SizedBox(height: RSizes.xs),
        Icon(Iconsax.verify5, size: RSizes.iconXs, color: RColors.primary),
      ],
    );
  }
}
