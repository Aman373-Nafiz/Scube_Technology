import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataTableWidget extends StatelessWidget {
  final List<DataTableRow> rows;
  final String yesterdayHeader;
  final String todayHeader;

  const DataTableWidget({
    Key? key,
    required this.rows,
    this.yesterdayHeader = "Yesterday's Data",
    this.todayHeader = "Today's Data",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Header
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                const Expanded(flex: 4, child: SizedBox()),
                Expanded(
                  flex: 3,
                  child: Text(
                    yesterdayHeader,
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
                    todayHeader,
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
          
          // Data Rows
          ...rows.asMap().entries.map((entry) {
            int index = entry.key;
            DataTableRow row = entry.value;
            bool isEven = index % 2 == 1;
            
            return _buildTableRow(
              row.label,
              row.yesterdayValue,
              row.todayValue,
              isEven: isEven,
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildTableRow(String label, String val1, String val2, {required bool isEven}) {
    return Container(
      color: isEven ? const Color(0xFFEEF3F9) : Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF374151),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              val1,
              textAlign: TextAlign.right,
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF111827),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              val2,
              textAlign: TextAlign.right,
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF111827),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DataTableRow {
  final String label;
  final String yesterdayValue;
  final String todayValue;

  const DataTableRow({
    required this.label,
    required this.yesterdayValue,
    required this.todayValue,
  });
}