import 'package:flutter/material.dart';
import 'package:info_app/core/extensions/num_extensions.dart';
import 'package:info_app/core/theming/theming_colors.dart';

class PickerButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  final IconData? icon;

  const PickerButton({
    super.key,
    required this.text,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: .center,
          padding: const .all(16),
          decoration: BoxDecoration(
            color: ThemingColors.primaryColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: ThemingColors.borderColor),
          ),
          child: Row(
            mainAxisAlignment: .center,
            children: [
              Icon(
                icon ?? Icons.image_search_rounded,
                color: ThemingColors.secondaryColor,
              ),
              8.hGap,
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
