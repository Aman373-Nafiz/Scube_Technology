import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';
import '../core/utils/image_assets.dart';
import 'energy_item.dart';

class Lt01Card extends StatelessWidget {
  final String title;
  final String capacity;
  final List<EnergyData> energyItems;
  final VoidCallback? onTap;

  const Lt01Card({
    Key? key,
    this.title = "LT_01",
    this.capacity = "495.505 kWp / 440 kW",
    required this.energyItems,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.lt01Title,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        ImageAssets.asset15,
                        height: 16,
                        width: 16,
                        errorBuilder: (context, error, stackTrace) => Icon(
                          Icons.electrical_services,
                          size: 16,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        capacity,
                        style: AppTextStyles.lt01Capacity,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(height: 1, color: Color(0xFFF1F5F9)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  if (energyItems.length >= 2) ...[
                    Row(
                      children: [
                        Expanded(child: energyItems[0]),
                        const SizedBox(width: 12),
                        Expanded(child: energyItems[1]),
                      ],
                    ),
                  ],
                  if (energyItems.length >= 4) ...[
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(child: energyItems[2]),
                        const SizedBox(width: 12),
                        Expanded(child: energyItems[3]),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EnergyData extends EnergyItem {
  const EnergyData({
    Key? key,
    required String label,
    required String value,
    required String iconPath,
    required Color backgroundColor,
    VoidCallback? onTap,
  }) : super(
          key: key,
          label: label,
          value: value,
          iconPath: iconPath,
          backgroundColor: backgroundColor,
          onTap: onTap,
        );
}