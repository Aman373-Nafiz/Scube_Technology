import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/constants/app_colors.dart';
import '../core/utils/image_assets.dart';
import 'data_list_tile.dart';

class ElectricitySummaryCard extends StatefulWidget {
  final List<DataListTile> dataItems;
  final VoidCallback? onSummaryTap;
  final VoidCallback? onSldTap;
  final VoidCallback? onDataTap;
  final VoidCallback? onSourceTap;
  final VoidCallback? onLoadTap;

  const ElectricitySummaryCard({
    Key? key,
    required this.dataItems,
    this.onSummaryTap,
    this.onSldTap,
    this.onDataTap,
    this.onSourceTap,
    this.onLoadTap,
  }) : super(key: key);

  @override
  State<ElectricitySummaryCard> createState() => _ElectricitySummaryCardState();
}

class _ElectricitySummaryCardState extends State<ElectricitySummaryCard> {
  int selectedTab = 0; // 0: Summary, 1: SLD, 2: Data
  int selectedToggle = 0; // 0: Source, 1: Load

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Tabs Row
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                _buildTab("Summary", 0),
                _buildTab("SLD", 1),
                _buildTab("Data", 2),
              ],
            ),
          ),

          const Divider(height: 1, color: Color(0xFFF1F5F9)),

          // Electricity Title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              "Electricity",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF9CA3AF),
              ),
            ),
          ),

          const Divider(height: 1, color: Color(0xFFF1F5F9)),

          // Circular Chart Section
          const SizedBox(height: 20),
          Center(
            child: Image.asset(
              ImageAssets.electricityChart,
              width: 160,
              height: 160,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.pie_chart,
                    size: 80,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),

          // Source / Load Toggle
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color(0xFFF3F4F6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                _buildToggle("Source", 0),
                _buildToggle("Load", 1),
              ],
            ),
          ),

          const SizedBox(height: 20),
          const Divider(height: 1, color: Color(0xFFF1F5F9)),

          // Data Tiles List
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(12),
            itemCount: widget.dataItems.length,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) => widget.dataItems[index],
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    bool isActive = selectedTab == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = index;
          });
          if (index == 0 && widget.onSummaryTap != null) widget.onSummaryTap!();
          if (index == 1 && widget.onSldTap != null) widget.onSldTap!();
          if (index == 2 && widget.onDataTap != null) widget.onDataTap!();
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: isActive ? AppColors.activeTabBlue : Colors.transparent,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: isActive ? Colors.white : const Color(0xFF6B7280),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildToggle(String title, int index) {
    bool isActive = selectedToggle == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedToggle = index;
          });
          if (index == 0 && widget.onSourceTap != null) widget.onSourceTap!();
          if (index == 1 && widget.onLoadTap != null) widget.onLoadTap!();
        },
        child: Container(
          height: 36,
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: isActive ? AppColors.activeTabBlue : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: isActive ? Colors.white : const Color(0xFF9CA3AF),
            ),
          ),
        ),
      ),
    );
  }
}