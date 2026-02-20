import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:r_shop_app/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';

class RFormDivider extends StatelessWidget {
  const RFormDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? RColors.darkGrey : RColors.dark, thickness: 0.5, indent: 60, endIndent: 5)),
        Text((text).capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? RColors.darkGrey : RColors.dark, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}
