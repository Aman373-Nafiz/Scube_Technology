import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  // App Title Styles
  static TextStyle get appTitle => GoogleFonts.inter(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );

  static TextStyle get appSubtitle => GoogleFonts.inter(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );

  // App Bar Styles
  static TextStyle get appBarTitle => GoogleFonts.inter(
        color: AppColors.darkBlueText,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );

  // Login Screen Styles
  static TextStyle get loginTitle => GoogleFonts.inter(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      );

  static TextStyle get forgetPassword => GoogleFonts.inter(
        color: Colors.grey,
        fontSize: 12,
      );

  static TextStyle get loginButton => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  static TextStyle get footerText => GoogleFonts.inter(
        color: Colors.grey,
      );

  static TextStyle get registerLink => GoogleFonts.inter(
        color: AppColors.primaryBlue,
        fontWeight: FontWeight.bold,
      );

  // Navigation Banner Styles
  static TextStyle get navigationBanner => GoogleFonts.inter(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );

  // Info Tile Styles
  static TextStyle get infoTileTitle => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: AppColors.darkBlueText,
        height: 1.0,
      );

  static TextStyle get infoTileSubtitle => GoogleFonts.inter(
        fontSize: 9,
        fontWeight: FontWeight.w400,
        color: const Color(0xFF6B7280),
        height: 1.0,
      );

  // Detail Tile Styles
  static TextStyle get detailTileTitle => GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: const Color(0xFF6B7280),
      );

  static TextStyle get detailTileValue => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppColors.darkBlueText,
      );

  // Table Styles
  static TextStyle get tableHeader => GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: const Color(0xFF374151),
      );

  static TextStyle get tableLabel => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: const Color(0xFF374151),
      );

  static TextStyle get tableValue => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppColors.darkBlueText,
      );

  // PV Module Banner Styles
  static TextStyle get pvModuleLabel => const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: Color(0xFF374151),
      );

  static TextStyle get pvModuleValue => const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        color: Color(0xFF111827),
      );

  // LT01 Card Styles
  static TextStyle get lt01Title => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppColors.darkBlueText,
      );

  static TextStyle get lt01Capacity => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF0684D9),
      );

  // Energy Item Styles
  static TextStyle get energyItemLabel => GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: const Color(0xFF6B7280),
      );

  static TextStyle get energyItemValue => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppColors.darkBlueText,
      );

  // Electricity Summary Styles
  static TextStyle get electricityTitle => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF9CA3AF),
      );

  static TextStyle get tabActive => GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  static TextStyle get tabInactive => GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: const Color(0xFF6B7280),
      );

  static TextStyle get toggleActive => GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  static TextStyle get toggleInactive => GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: const Color(0xFF9CA3AF),
      );

  // Data List Tile Styles
  static TextStyle get dataListTitle => GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppColors.darkBlueText,
      );

  static TextStyle get dataListStatus => GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get dataListLabel => GoogleFonts.inter(
        fontSize: 11,
        color: const Color(0xFF6B7280),
      );

  static TextStyle get dataListValue => GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF374151),
      );

  // Action Grid Tile Styles
  static TextStyle get actionGridTitle => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF4B5563),
      );
}