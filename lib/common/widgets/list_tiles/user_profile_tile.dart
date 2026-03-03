import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/r_circular_image.dart';

class RUserProfileTile extends StatelessWidget {
  const RUserProfileTile({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const RCircularImage(image: RAppImages.user, height: 50, width: 50, padding: 0),
      title: Text('Rahul Sharma', style: Theme.of(context).textTheme.headlineSmall!.apply(color: RColors.white)),
      subtitle: Text('xyz@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: RColors.white)),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(Iconsax.edit, color: RColors.white),
      ),
    );
  }
}
