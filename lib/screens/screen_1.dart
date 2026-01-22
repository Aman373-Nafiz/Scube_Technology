import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // --- Logic to get the correct image based on Time ---
  String _getWeatherAsset() {
    final now = DateTime.now();
    // Convert time to a comparable double (e.g., 14.5 = 2:30 PM)
    final double currentTime = now.hour + (now.minute / 60.0);

    // Range 1: 11:00 AM - 12:00 PM (Blue/Cloudy)
    if (currentTime >= 11.0 && currentTime < 12.0) {
      return "assets/Group 1000011072.png";
    }
    // Range 2: 12:00 PM - 01:00 PM (Red/Sunny)
    else if (currentTime >= 12.0 && currentTime < 13.0) {
      return "assets/Group 1000011080.png";
    }
    // Range 3: 02:30 PM - 03:30 PM (Moon/Dark)
    else if (currentTime >= 14.5 && currentTime < 15.5) {
      return "assets/Group 1000011081.png";
    }

    // Default Fallback
    return "assets/Group 1000011072.png";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd7e3f1), // Light blueish-grey background

      // --- Custom App Bar ---
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(101),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 7.0, left: 4.0, right: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back,
                            color: Color(0xFF111827)),
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                      Text(
                        '1st Page',
                        style: GoogleFonts.inter(
                          color: const Color(0xFF111827),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          const Icon(
                            Icons.notifications_outlined,
                            color: Color(0xFF111827),
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- 2nd Page Navigate Banner ---
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color: const Color(0xFF06B6D4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "2nd Page Navigate",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.chevron_right,
                      color: Colors.white, size: 18),
                ],
              ),
            ),

            // --- Top 6 Tiles Grid Section ---
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
                  _buildInfoTile("10000 kW", "Live AC Power",
                      "assets/Live AC Power.png"),
                  _buildInfoTile("82.58 %", "Plant Generation",
                      "assets/Plant Generation.png"),
                  _buildInfoTile("85.61 %", "Live PR", "assets/Live PR.png"),
                  _buildInfoTile("27.58 %", "Cumulative PR",
                      "assets/Cumulative PR.png"),
                  _buildInfoTile("10000 ৳", "Return PV(Till Today)",
                      "assets/Return PV(Till Today).png"),
                  _buildInfoTile("10000 kWh", "Total Energy",
                      "assets/Total Energy.png"),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // --- Temperature Banner ---
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  _getWeatherAsset(),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            const SizedBox(height: 15),

            // --- Yesterday/Today Data Table ---
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        const Expanded(flex: 4, child: SizedBox()),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "Yesterday's Data",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF374151),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "Today's Data",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF374151),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1, color: Color(0xFFE5E7EB)),
                  _buildTableRow("AC Max Power", "1636.50 kW", "2121.88 kW",
                      isEven: false),
                  _buildTableRow("Net Energy", "6439.16 kWh", "4875.77 kWh",
                      isEven: true),
                  _buildTableRow(
                      "Specific Yield", "1.25 kWh/kWp", "0.94 kWh/kWp",
                      isEven: false),
                  _buildTableRow("Net Energy", "6439.16 kWh", "4875.77 kWh",
                      isEven: true),
                  _buildTableRow(
                      "Specific Yield", "1.25 kWh/kWp", "0.94 kWh/kWp",
                      isEven: false),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // =========================================================
            // --- NEW SECTION: PV Module Banner ---
            // =========================================================
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.03),
                      blurRadius: 4,
                      offset: const Offset(0, 2)),
                ],
              ),
              child: Row(
                children: [
                  Image.asset("assets/Mask group.png",
                      width: 24, height: 24), // The Blue Grid Icon
                  const SizedBox(width: 10),
                  Text(
                    "Total Num of PV Module  :  ",
                    style: GoogleFonts.inter(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF374151),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "6372 pcs. (585 Wp each)",
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w700, // Bold Value
                        color: const Color(0xFF111827),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // =========================================================
            // --- NEW SECTION: Capacity & Inverter Grid ---
            // =========================================================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.count(
                crossAxisCount: 2, // 2 Columns for wider tiles
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3.83, // Wider aspect ratio for these tiles
                children: [
                  _buildDetailTile(
                      "Total AC Capacity", "3000 KW", "assets/Total AC Capacity.png"), // *Need generic icon or reuse
                  _buildDetailTile(
                      "Total DC Capacity", "3.727 MWp", "assets/Total DC Capacity.png"),
                  _buildDetailTile("Date of Commissioning", "17/07/2024",
                      "assets/Date of Commissioning.png"), // *Use calendar icon if png missing
                  _buildDetailTile("Number of Inverter", "30",
                      "assets/Number of Inverter.png"),
                  _buildDetailTile("Total AC Capacity", "3000 KW",
                      "assets/Total AC Capacity.png"),
                  _buildDetailTile(
                      "Total DC Capacity", "3.727 MWp", "assets/Total DC Capacity.png"),
                ],
              ),
            ),

            const SizedBox(height: 25), // Bottom spacing before LT-01
          ],
        ),
      ),
    );
  }

  // --- Helper: Table Row ---
  Widget _buildTableRow(String label, String val1, String val2,
      {required bool isEven}) {
    return Container(
      color: isEven ? const Color(0xFFEEF3F9) : Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(label,
                style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF374151))),
          ),
          Expanded(
            flex: 3,
            child: Text(val1,
                textAlign: TextAlign.right,
                style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF111827))),
          ),
          Expanded(
            flex: 3,
            child: Text(val2,
                textAlign: TextAlign.right,
                style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF111827))),
          ),
        ],
      ),
    );
  }

  // --- Helper: Top Grid Tile ---
  Widget _buildInfoTile(String title, String subtitle, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 4,
              offset: const Offset(0, 2)),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
      child: Row(
        children: [
          Image.asset(imagePath, width: 22, height: 22, fit: BoxFit.contain),
          const SizedBox(width: 6),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(title,
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF111827),
                          height: 1.0)),
                ),
                const SizedBox(height: 2),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(subtitle,
                      style: GoogleFonts.inter(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF6B7280),
                          height: 1.0),
                      maxLines: 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // --- Helper: Detail Grid Tile (New Section) ---
  Widget _buildDetailTile(String title, String value, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 4,
              offset: const Offset(0, 2)),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          // Use Icon placeholder if image fails loading or for testing
          Image.asset(imagePath, width: 26, height: 26, fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.info_outline, color: Colors.blue, size: 26);
          }),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF6B7280), // Grey Label
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    value,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w700, // Bold Value
                      color: const Color(0xFF111827), // Black
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}