import 'package:flutter/material.dart';
import 'package:r_shop_app/utils/device/device_utility.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class RTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// if you want to add the background color to tabs you have to wrap them in Material widget
  /// to do that we need [PreferredSizes] Widget and that's why created custom class. [PreferredSizeWidget]
  const RTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? RColors.black : RColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: RColors.primary,
        labelColor: dark ? RColors.white : RColors.primary,
        unselectedLabelColor: RColors.darkerGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(RDeviceUtils.getAppBarHeight());
}
