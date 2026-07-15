import 'package:flutter/material.dart';
import 'package:info_app/core/extensions/num_extensions.dart';
import 'package:info_app/core/theming/theming_colors.dart';
import 'package:info_app/core/theming/theming_typography.dart';

class LocationCard extends StatelessWidget {
  final String lat;
  final String long;
  final String placeName;

  const LocationCard({
    super.key,
    required this.lat,
    required this.long,
    required this.placeName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      padding: .all(16),
      decoration: BoxDecoration(
        color: ThemingColors.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(100),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: .start,
        children: [
          Icon(Icons.location_on_outlined, color: ThemingColors.secondaryColor),
          8.hGap,
          Column(
            crossAxisAlignment: .start,
            children: [
              Text("lat : $lat"),
              Text("long : $long"),
              Text("Place Name", style: ThemingTypography.regular14),
              Text(
                placeName,
                style: ThemingTypography.bold16.copyWith(
                  color: ThemingColors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
