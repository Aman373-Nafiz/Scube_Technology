import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/navigation_banner.dart';
import '../widgets/electricity_summary_card.dart';
import '../widgets/data_list_tile.dart';
import '../widgets/action_grid_tile.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_strings.dart';
import '../core/utils/image_assets.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      appBar: CustomAppBar(
        title: AppStrings.secondPage,
        onBackPressed: () {
          Navigator.pop(context);
        },
        onNotificationPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavigationBanner(
              text: AppStrings.firstPageNavigate,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ElectricitySummaryCard(
              dataItems: [
                DataListTile(
                  iconPath: ImageAssets.solarCell,
                  title: AppStrings.dataView,
                  status: AppStrings.active,
                  statusColor: Colors.blue,
                  data1: AppStrings.data1Value,
                  data2: AppStrings.data2Value,
                  isActiveStyle: true,
                ),
                DataListTile(
                  iconPath: ImageAssets.asset2,
                  title: AppStrings.dataType2,
                  status: AppStrings.active,
                  statusColor: Colors.blue,
                  data1: AppStrings.data1Value,
                  data2: AppStrings.data2Value,
                  isActiveStyle: true,
                ),
                DataListTile(
                  iconPath: ImageAssets.powerIcon,
                  title: AppStrings.dataType3,
                  status: AppStrings.inactive,
                  statusColor: Colors.red,
                  data1: AppStrings.data1Value,
                  data2: AppStrings.data2Value,
                  isActiveStyle: false,
                ),
              ],
              onSummaryTap: () {},
              onSldTap: () {},
              onDataTap: () {},
              onSourceTap: () {},
              onLoadTap: () {},
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3.5,
                children: [
                  ActionGridTile(
                    title: AppStrings.analysisPro,
                    iconPath: ImageAssets.chartIcon,
                    onTap: () {},
                  ),
                  ActionGridTile(
                    title: AppStrings.gGenerator,
                    iconPath: ImageAssets.generator1,
                    onTap: () {},
                  ),
                  ActionGridTile(
                    title: AppStrings.plantSummary,
                    iconPath: ImageAssets.chargeIcon,
                    onTap: () {},
                  ),
                  ActionGridTile(
                    title: AppStrings.naturalGas,
                    iconPath: ImageAssets.fireIcon,
                    onTap: () {},
                  ),
                  ActionGridTile(
                    title: AppStrings.dGenerator,
                    iconPath: ImageAssets.generator2,
                    onTap: () {},
                  ),
                  ActionGridTile(
                    title: AppStrings.waterProcess,
                    iconPath: ImageAssets.faucetIcon,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}