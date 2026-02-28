import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';

class RCartCounterIcon extends StatelessWidget {
  const RCartCounterIcon({super.key, this.iconColor, required this.onPressed});

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag, color: dark ? RColors.white : RColors.dark),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(color: RColors.black, borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: RColors.white, fontSizeFactor: 0.8)),
            ),
          ),
        ),
      ],
    );
  }
}
