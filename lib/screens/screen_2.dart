import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd7e3f1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(101),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 7.0,
                left: 4.0,
                right: 12.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color(0xFF111827),
                        ),
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                      Text(
                        '2nd Page',
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
            // --- Navigation Banner ---
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
                    "1st Page Navigate",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              ),
            ),

            // ============================================================
            // --- Electricity Summary Card ---
            // ============================================================
            Container(
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
                  // --- 1. Tabs Row (Summary / SLD / Data) ---
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        // Active Tab
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0EA5E9), // Active Blue
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              "Summary",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // Inactive Tabs
                        Expanded(
                          child: Text(
                            "SLD",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF6B7280),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Data",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF6B7280),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Divider(height: 1, color: Color(0xFFF1F5F9)),

                  // --- 2. Electricity Title ---
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

                  // --- 3. Circular Chart Section ---
                  const SizedBox(height: 20),
                  Center(
                    child: Image.asset(
                      "assets/Group 1000005882.png",
                      width: 160,
                      height: 160,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // --- 4. Source / Load Toggle ---
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 36,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0EA5E9),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              "Source",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Load",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF9CA3AF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  const Divider(height: 1, color: Color(0xFFF1F5F9)),

                  // --- 5. Data Tiles List ---
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(12),
                    children: [
                      _buildDataTile(
                        iconPath: "assets/solar-cell_5575136 1.png",
                        title: "Data View",
                        status: "(Active)",
                        statusColor: Colors.blue,
                        data1: "55505.63",
                        data2: "58805.63",
                        isActiveStyle: true,
                      ),
                      const SizedBox(height: 8),
                      _buildDataTile(
                        iconPath: "assets/Asset 2@4x-8 3.png",
                        title: "Data Type 2",
                        status: "(Active)",
                        statusColor: Colors.blue,
                        data1: "55505.63",
                        data2: "58805.63",
                        isActiveStyle: true,
                      ),
                      const SizedBox(height: 8),
                      _buildDataTile(
                        iconPath: "assets/power_15679163 1.png",
                        title: "Data Type 3",
                        status: "(Inactive)",
                        statusColor: Colors.red,
                        data1: "55505.63",
                        data2: "58805.63",
                        isActiveStyle: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // ============================================================
            // --- NEW: Bottom Action Grid ---
            // ============================================================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3.5, // Matches the wide button shape
                children: [
                  _buildActionTile("Analysis Pro", "assets/chart_490605.png"), //
                  _buildActionTile("G. Generator", "assets/generator_8789846.png"), //
                  _buildActionTile("Plant Summery", "assets/charge_7345374 1.png"), //
                  _buildActionTile("Natural Gas", "assets/fire_3900509 1.png"), //
                  _buildActionTile("D. Generator", "assets/generator_8789846 (1).png"), //
                  _buildActionTile("Water Process", "assets/faucet_1078798.png"), //
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // --- Helper Widget: Bottom Action Tile ---
  Widget _buildActionTile(String title, String iconPath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFC7D2FE)), // Light Indigo/Purple border
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          Image.asset(
            iconPath,
            width: 28,
            height: 28,
            fit: BoxFit.contain,
            errorBuilder: (c,e,s) => const Icon(Icons.broken_image, size: 28, color: Colors.grey),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF4B5563), // Dark Grey Text
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  // --- Helper Widget: Data Tile (Existing) ---
  Widget _buildDataTile({
    required String iconPath,
    required String title,
    required String status,
    required Color statusColor,
    required String data1,
    required String data2,
    required bool isActiveStyle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0XFFE5F4FE),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE0F2FE)),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Image.asset(iconPath, width: 32, height: 32, fit: BoxFit.contain),
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
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      status,
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: statusColor,
                      ),
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
    );
  }

  Widget _buildDataRow(String label, String value) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          child: Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 11,
              color: const Color(0xFF6B7280),
            ),
          ),
        ),
        Text(
          " :  $value",
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF374151),
          ),
        ),
      ],
    );
  }
}