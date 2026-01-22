import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/navigation_banner.dart';
import '../widgets/info_tile.dart';
import '../widgets/detail_tile.dart';
import '../widgets/weather_banner.dart';
import '../widgets/data_table_widget.dart';
import '../widgets/lt01_card.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_strings.dart';
import '../core/constants/app_text_styles.dart';
import '../core/constants/app_routes.dart';
import '../core/utils/image_assets.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      appBar: CustomAppBar(
        title: AppStrings.firstPage,
        onBackPressed: () {
          Navigator.pushReplacementNamed(context, AppRoutes.splash);
        },
        onNotificationPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavigationBanner(
              text: AppStrings.secondPageNavigate,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.screen2);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2.9,
                children: [
                  InfoTile(
                    title: AppStrings.liveACPowerValue,
                    subtitle: AppStrings.liveACPower,
                    imagePath: ImageAssets.liveACPower,
                  ),
                  InfoTile(
                    title: AppStrings.plantGenerationValue,
                    subtitle: AppStrings.plantGeneration,
                    imagePath: ImageAssets.plantGeneration,
                  ),
                  InfoTile(
                    title: AppStrings.livePRValue,
                    subtitle: AppStrings.livePR,
                    imagePath: ImageAssets.livePR,
                  ),
                  InfoTile(
                    title: AppStrings.cumulativePRValue,
                    subtitle: AppStrings.cumulativePR,
                    imagePath: ImageAssets.cumulativePR,
                  ),
                  InfoTile(
                    title: AppStrings.returnPVValue,
                    subtitle: AppStrings.returnPVTillToday,
                    imagePath: ImageAssets.returnPV,
                  ),
                  InfoTile(
                    title: AppStrings.totalEnergyValue,
                    subtitle: AppStrings.totalEnergy,
                    imagePath: ImageAssets.totalEnergy,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const WeatherBanner(),
            const SizedBox(height: 15),
            DataTableWidget(
              rows: const [
                DataTableRow(
                  label: AppStrings.acMaxPower,
                  yesterdayValue: AppStrings.acMaxPowerYesterday,
                  todayValue: AppStrings.acMaxPowerToday,
                ),
                DataTableRow(
                  label: AppStrings.netEnergy,
                  yesterdayValue: AppStrings.netEnergyYesterday,
                  todayValue: AppStrings.netEnergyToday,
                ),
                DataTableRow(
                  label: AppStrings.specificYield,
                  yesterdayValue: AppStrings.specificYieldYesterday,
                  todayValue: AppStrings.specificYieldToday,
                ),
                DataTableRow(
                  label: AppStrings.netEnergy,
                  yesterdayValue: AppStrings.netEnergyYesterday,
                  todayValue: AppStrings.netEnergyToday,
                ),
                DataTableRow(
                  label: AppStrings.specificYield,
                  yesterdayValue: AppStrings.specificYieldYesterday,
                  todayValue: AppStrings.specificYieldToday,
                ),
              ],
            ),
            const SizedBox(height: 15),
            _buildPvModuleBanner(),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3.83,
                children: [
                  DetailTile(
                    title: AppStrings.totalACCapacity,
                    value: AppStrings.totalACCapacityValue,
                    imagePath: ImageAssets.totalACCapacity,
                  ),
                  DetailTile(
                    title: AppStrings.totalDCCapacity,
                    value: AppStrings.totalDCCapacityValue,
                    imagePath: ImageAssets.totalDCCapacity,
                  ),
                  DetailTile(
                    title: AppStrings.dateOfCommissioning,
                    value: AppStrings.commissioningDate,
                    imagePath: ImageAssets.dateOfCommissioning,
                  ),
                  DetailTile(
                    title: AppStrings.numberOfInverter,
                    value: AppStrings.inverterCount,
                    imagePath: ImageAssets.numberOfInverter,
                  ),
                  DetailTile(
                    title: AppStrings.totalACCapacity,
                    value: AppStrings.totalACCapacityValue,
                    imagePath: ImageAssets.totalACCapacity,
                  ),
                  DetailTile(
                    title: AppStrings.totalDCCapacity,
                    value: AppStrings.totalDCCapacityValue,
                    imagePath: ImageAssets.totalDCCapacity,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Lt01Card(
              energyItems: [
                EnergyData(
                  label: AppStrings.lifetimeEnergy,
                  value: AppStrings.lifetimeEnergyValue,
                  iconPath: ImageAssets.blueLightning,
                  backgroundColor: const Color(0xFFE0F2FE),
                ),
                EnergyData(
                  label: AppStrings.todayEnergy,
                  value: AppStrings.todayEnergyValue,
                  iconPath: ImageAssets.group11031,
                  backgroundColor: const Color(0xFFFEF9C3),
                ),
                EnergyData(
                  label: AppStrings.prevMeterEnergy,
                  value: AppStrings.prevMeterEnergyValue,
                  iconPath: ImageAssets.asset16,
                  backgroundColor: const Color(0xFFFFF7ED),
                ),
                EnergyData(
                  label: AppStrings.livePower,
                  value: AppStrings.livePowerValue,
                  iconPath: ImageAssets.group10987,
                  backgroundColor: const Color(0xFFF3E8FF),
                ),
              ],
            ),
            const SizedBox(height: 12),

            Lt01Card(
              energyItems: [
                EnergyData(
                  label: AppStrings.lifetimeEnergy,
                  value: AppStrings.lifetimeEnergyValue,
                  iconPath: ImageAssets.blueLightning,
                  backgroundColor: const Color(0xFFE0F2FE),
                ),
                EnergyData(
                  label: AppStrings.todayEnergy,
                  value: AppStrings.todayEnergyValue,
                  iconPath: ImageAssets.group11031,
                  backgroundColor: const Color(0xFFFEF9C3),
                ),
                EnergyData(
                  label: AppStrings.prevMeterEnergy,
                  value: AppStrings.prevMeterEnergyValue,
                  iconPath: ImageAssets.asset16,
                  backgroundColor: const Color(0xFFFFF7ED),
                ),
                EnergyData(
                  label: AppStrings.livePower,
                  value: AppStrings.livePowerValue,
                  iconPath: ImageAssets.group10987,
                  backgroundColor: const Color(0xFFF3E8FF),
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildPvModuleBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            ImageAssets.maskGroup,
            width: 24,
            height: 24,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                Icons.grid_view,
                color: AppColors.primaryBlue,
                size: 24,
              );
            },
          ),
          const SizedBox(width: 10),
          Text(AppStrings.totalPVModules, style: AppTextStyles.pvModuleLabel),
          Expanded(
            child: Text(
              AppStrings.pvModuleDetails,
              style: AppTextStyles.pvModuleValue,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
