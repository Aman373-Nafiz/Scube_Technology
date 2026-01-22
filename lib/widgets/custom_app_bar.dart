import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;
  final bool showNotification;
  final VoidCallback? onNotificationPressed;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.onBackPressed,
    this.showNotification = true,
    this.onNotificationPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(101),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 7.0, left: 4.0, right: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: AppColors.darkBlueText),
                      onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    Text(
                      title,
                      style: AppTextStyles.appBarTitle,
                    ),
                    if (showNotification)
                      GestureDetector(
                        onTap: onNotificationPressed,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            const Icon(
                              Icons.notifications_outlined,
                              color: AppColors.darkBlueText,
                              size: 26,
                            ),
                            Positioned(
                              right: 2,
                              top: 2,
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    else
                      const SizedBox(width: 26),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(101);
}