import 'package:flutter/cupertino.dart';

import '../../utils/constants/colors.dart';

class RShadowStyle {
  static final verticalProductShadow = BoxShadow(color: RColors.darkerGrey.withValues(alpha: 0.1), blurRadius: 50, spreadRadius: 7, offset: const Offset(0, 2));
  static final horizontalProductShadow = BoxShadow(
    color: RColors.darkerGrey.withValues(alpha: 0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
