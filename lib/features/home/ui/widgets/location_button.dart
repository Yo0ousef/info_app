import 'package:flutter/material.dart';
import 'package:info_app/core/theming/theming_colors.dart';
import 'package:info_app/core/theming/theming_typography.dart';

import '../../../../core/extensions/num_extensions.dart';

class LocationButton extends StatelessWidget {
  final void Function() onTap;

  const LocationButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: .center,
        width: .infinity,
        padding: .all(16),
        decoration: BoxDecoration(
          color: ThemingColors.secondaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: .center,
          children: [
            Icon(Icons.location_on_outlined, color: ThemingColors.primaryColor),
            8.hGap,
            Text("Get Location", style: ThemingTypography.bold16),
          ],
        ),
      ),
    );
  }
}
