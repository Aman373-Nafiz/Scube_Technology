import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';

class DataListTile extends StatelessWidget {
  final String iconPath;
  final String title;
  final String status;
  final Color statusColor;
  final String data1;
  final String data2;
  final bool isActiveStyle;
  final VoidCallback? onTap;

  const DataListTile({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.status,
    required this.statusColor,
    required this.data1,
    required this.data2,
    required this.isActiveStyle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0XFFE5F4FE),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFE0F2FE)),
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              width: 32,
              height: 32,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.electrical_services,
                  color: AppColors.primaryBlue,
                  size: 32,
                );
              },
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        title,
                        style: AppTextStyles.dataListTitle,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        status,
                        style: AppTextStyles.dataListStatus.copyWith(color: statusColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  _buildDataRow("Data 1", data1),
                  const SizedBox(height: 2),
                  _buildDataRow("Data 2", data2),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: Color(0xFF6B7280)),
          ],
        ),
      ),
    );
  }

  Widget _buildDataRow(String label, String value) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          child: Text(
            label,
            style: AppTextStyles.dataListLabel,
          ),
        ),
        Text(
          " :  $value",
          style: AppTextStyles.dataListValue,
        ),
      ],
    );
  }
}