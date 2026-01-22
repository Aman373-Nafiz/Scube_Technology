# SCUBE Technologies - Flutter App

A clean, well-structured Flutter application for SCUBE Technologies' Control and Monitoring System featuring energy monitoring dashboards, animated splash screen, and comprehensive navigation.

## 🚀 Quick Start

```bash
flutter pub get
flutter run
```

## 📁 Project Structure

```
lib/
├── core/
│   ├── constants/
│   │   ├── app_colors.dart        # Color palette
│   │   ├── app_strings.dart       # All text strings
│   │   ├── app_text_styles.dart   # Typography styles
│   │   └── app_routes.dart        # Route definitions
│   └── utils/
│       └── image_assets.dart      # Asset path constants
├── widgets/
│   ├── custom_app_bar.dart        # Consistent app bar
│   ├── navigation_banner.dart     # Navigation prompts
│   ├── info_tile.dart            # Information display tiles
│   ├── data_list_tile.dart       # Data list components
│   ├── action_grid_tile.dart     # Action button tiles
│   ├── detail_tile.dart          # Detail information tiles
│   ├── energy_item.dart          # Energy data components
│   ├── lt01_card.dart            # LT01 energy cards
│   ├── data_table_widget.dart    # Data comparison tables
│   ├── weather_banner.dart       # Time-based weather display
│   └── electricity_summary_card.dart # Electricity overview
├── screens/
│   ├── splash_screen.dart         # Login/splash screen
│   ├── screen_1.dart             # Main dashboard
│   └── screen_2.dart             # Secondary dashboard
└── main.dart                      # Application entry point
```

## 🎨 Design System

### **Colors**
- Primary Blue: `#0096FC`
- Dark Blue Text: `#111827`
- Cyan Banner: `#06B6D4`
- Background Grey: `#d7e3f1`
- Light Indigo Border: `#C7D2FE`
- Active Tab Blue: `#0EA5E9`

### **Typography**
- Font: Google Fonts Inter
- Weights: 400, 500, 600, 700
- Sizes: 9px - 28px

## 🔄 Navigation Flow

```
SplashScreen → Screen1 → Screen2
     ↑           ↑         ↓
     └───────────┴─────────┘
```

### **Routes**
- `/splash`: Login screen with animated modal
- `/screen1`: Main energy monitoring dashboard
- `/screen2`: Electricity summary and actions

## 🧩 Key Features

### **SplashScreen**
- Animated login modal (2-second delay)
- Username/password fields
- Navigation to main dashboard

### **Screen1 (Main Dashboard)**
- 6 energy monitoring tiles
- Time-based weather banner
- Yesterday/Today data comparison
- PV module information
- Detail capacity tiles
- LT01 energy cards

### **Screen2 (Secondary Dashboard)**
- Electricity summary with tabs
- Data visualization
- 6 action grid tiles

### **Reusable Components**
- Consistent app bars
- Navigation banners
- Information tiles
- Data tables
- Energy cards

## 🛠️ Architecture

### **Clean Code Principles**
- Centralized constants
- Reusable components
- Consistent styling
- Error handling
- Type safety

### **Constants Management**
- **AppStrings**: All text content
- **AppTextStyles**: Typography system
- **AppColors**: Color palette
- **AppRoutes**: Route definitions
- **ImageAssets**: Asset paths

## 📱 Responsive Design

- Adaptive layouts
- Flexible grid systems
- Scalable text
- Consistent spacing
- Error fallbacks

## 🔧 Development

### **Adding New Strings**
```dart
// Add to AppStrings
static const String newString = 'New String';

// Use in widgets
Text(AppStrings.newString)
```

### **Adding New Styles**
```dart
// Add to AppTextStyles
static TextStyle get newStyle => GoogleFonts.inter(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: AppColors.darkBlueText,
);
```

### **Adding New Routes**
```dart
// Add to AppRoutes
static const String newRoute = '/new-route';

// Add to main.dart routes
AppRoutes.newRoute: (context) => const NewScreen(),
```

## 📋 Code Quality

- No hardcoded strings
- Consistent naming conventions
- Clean imports
- Proper error handling
- Formatted code structure

## 🎯 Performance

- Stateless widgets where possible
- Efficient ListView/GridView usage
- Optimized image loading
- Minimal rebuilds

---

**Built with Flutter • Clean Architecture • Material Design**