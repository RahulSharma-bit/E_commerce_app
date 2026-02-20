import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class RHomeAppBar extends StatelessWidget {
  const RHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(RAppText.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: RColors.grey)),
          Text(RAppText.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: RColors.white)),
        ],
      ),
      actions: [RCartCounterIcon(onPressed: () {}, iconColor: RColors.white)],
    );
  }
}
